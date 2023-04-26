#include "Decoder.h"
#include "Streamer.h"
#include <iostream>
#include "ZlibHelper.h"
#include <stdexcept>
#include <cmath>

Image Decoder::decode(std::string png_path)
{
	png_file.open(png_path, std::ios::binary);

	if (!png_file.good()) {
		std::cout << "Failed to open file.\n";
	}

	std::vector<u8> magic_bytes = readBytes(8);

	if (validateHeader(magic_bytes)) {
		decodeChunks();
		decodeBitmap();
	}

	png_file.close();

	unfilter();

	return m_image;
}

bool Decoder::validateHeader(std::vector<u8> magic_bytes)
{
	for (size_t i = 0; i < PNG_HEADER.size(); i++)
	{
		if (magic_bytes[i] != PNG_HEADER[i]) {
			return false;
		}
	}
	return true;
}

void Decoder::decodeChunks()
{
	while (png_file.peek() != EOF)
	{
		processChunks();
	}
}

void Decoder::processChunks() {
	u32 chunk_size = readU32();
	std::string chunk_type = readString(4);
	std::vector<u8> chunk_data = readBytes(chunk_size);
	u32 chunk_crc = readU32();

	if (chunk_type == "IHDR") processIHDR(chunk_data);
	else if (chunk_type == "IDAT") processIDAT(chunk_data);
}

void Decoder::processIHDR(std::vector<u8> data)
{
	Streamer streamer(data);

	m_width = streamer.readU32();
	m_height = streamer.readU32();
	m_bit_depth = streamer.readByte();
	m_color_type = (ColorType)streamer.readByte();
	m_compression_method = streamer.readByte();
	m_filter_method = streamer.readByte();
	m_interlace_method = (InterlaceMethod)streamer.readByte();

	m_image.setHeight(m_height);
	m_image.setWidth(m_width);
}

void Decoder::processIDAT(std::vector<u8> chunk_data)
{
	m_compressed_data.insert(m_compressed_data.end(), chunk_data.begin(), chunk_data.end());
}

int Decoder::getChannels() {
	if (m_color_type == ColorType::true_color) {
		return 3;
	}
	else if (m_color_type == ColorType::true_color_with_alpha) {
		return 4;
	}
	else if (m_color_type == ColorType::grayscale) {
		throw std::runtime_error("Implement Grayscale");
	}
	else if (m_color_type == ColorType::indexed_color) {
		throw std::runtime_error("Implement IndexedColor");
	}
	else if (m_color_type == ColorType::grayscale_with_alpha) {
		throw std::runtime_error("Implement GrayscaleWithAlpha");
	}
	else {
		throw std::runtime_error("Invalid color type");
	}
}

int Decoder::getBytesPerPixel() {
	return (m_bit_depth + 7) / 8 * getChannels();
}

int Decoder::getScanlineSizeForWidth(int width) {
	int size = width;
	size *= getChannels();
	size *= m_bit_depth;
	size += 7;
	size /= 8;
	return std::floor(size);
}

void Decoder::decodeBitmap() {

	ZlibHelper zlibHelper;

	std::vector<u8> decompressed_data = zlibHelper.decompress(m_compressed_data);

	Streamer streamer(decompressed_data);

	for (int i = 0; i < m_height; i++) {
		Scanline scanline;
		scanline.filter = (FilterType)streamer.readByte();
		scanline.data = streamer.readBytes(getScanlineSizeForWidth(m_width));
		m_scanlines.push_back(scanline);
	}
}

void Decoder::unfilter() {
	int bytes_per_scanline = m_scanlines[0].data.size();
	u8 bytes_per_complete_pixel = getBytesPerPixel();

	for (int i = 0; i < m_scanlines.size(); i++) {
		switch (m_scanlines[i].filter) {
		case FilterType::none:
			break;
		case FilterType::sub:
			for (int j = bytes_per_complete_pixel; j < bytes_per_scanline; j++) {
				int left = m_scanlines[i].data[j - bytes_per_complete_pixel];
				m_scanlines[i].data[j] += left;
			}
			break;
		case FilterType::up:
			for (int j = 0; j < bytes_per_scanline; j++) {
				int above = i > 0 ? m_scanlines[i - 1].data[j] : 0;
				m_scanlines[i].data[j] += above;
			}
			break;
		case FilterType::average:
			for (int j = 0; j < bytes_per_scanline; j++) {
				int left = j < bytes_per_complete_pixel ? 0 : m_scanlines[i].data[j - bytes_per_complete_pixel];
				int above = i > 0 ? m_scanlines[i - 1].data[j] : 0;
				int average = std::floor((left + above) / 2);
				m_scanlines[i].data[j] += average;
			}
			break;
		case FilterType::paeth:
			for (int j = 0; j < bytes_per_scanline; j++) {
				int left = j < bytes_per_complete_pixel ? 0 : m_scanlines[i].data[j - bytes_per_complete_pixel];
				int above = i > 0 ? m_scanlines[i - 1].data[j] : 0;
				int upperLeft = j < bytes_per_complete_pixel || i < 1 ? 0 : m_scanlines[i - 1].data[j - bytes_per_complete_pixel];
				int predictor = left + above - upperLeft;
				int predictorLeft = abs(predictor - left);
				int predictorAbove = abs(predictor - above);
				int predictorUpperLeft = abs(predictor - upperLeft);
				int nearest = 0;
				if (predictorLeft <= predictorAbove && predictorLeft <= predictorUpperLeft) {
					nearest = left;
				}
				else if (predictorAbove <= predictorUpperLeft) {
					nearest = above;
				}
				else {
					nearest = upperLeft;
				}
				m_scanlines[i].data[j] += nearest;
			}
			break;
		default:
			break;
		}
		m_image.addRow(m_scanlines[i].data);
	}
}



u8 Decoder::readU8() {
	u8 byte{};
	png_file.read(reinterpret_cast<char*>(&byte), sizeof(byte));
	return byte;
}

u32 Decoder::readU32()
{
	char buffer[4];
	png_file.read(buffer, 4);

	if (png_file.gcount() != 4) {
		std::cerr << "Failed to read 4 bytes\n";
		return 1;
	}

	// Interpret the 4 bytes in the buffer as an unsigned int
	unsigned int value = (static_cast<unsigned char>(buffer[0]) << 24)
		| (static_cast<unsigned char>(buffer[1]) << 16)
		| (static_cast<unsigned char>(buffer[2]) << 8)
		| static_cast<unsigned char>(buffer[3]);

	return value;
}

std::string Decoder::readString(int char_count)
{
	std::string result(char_count, '\0');
	png_file.read(&result[0], char_count);
	return result;
}

std::vector<u8> Decoder::readBytes(int count)
{
	std::vector<u8> bytes(count);

	if (count < 1) {
		return bytes;
	}

	png_file.read(reinterpret_cast<char*>(&bytes[0]), count);
	return bytes;
}
