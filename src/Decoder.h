#pragma once

#include <string>
#include <fstream>
#include <vector>
#include "types.h"
#include "Image.h"

enum class InterlaceMethod{
	None,
	Adam7,
};

enum class ColorType {
	Grayscale = 0,
	TrueColor = 2,
	IndexedColor,
	GrayscaleWithAlpha,
	TrueColorWithAlpha = 6,
};

enum class FilterType {
	None = 0,
	Sub,
	Up,
	Average,
	Paeth,
};

struct Scanline {
	FilterType filter;
	std::vector<u8> data;
};

class Decoder
{
private:
	std::ifstream png_file;

	int m_width;
	int m_height;
	int m_bit_depth;
	ColorType m_color_type;
	int m_compression_method;
	int m_filter_method;
	InterlaceMethod m_interlace_method;

	std::vector<u8> m_compressed_data;

	std::vector<Scanline> m_scanlines;

	const std::vector<unsigned char> PNG_HEADER = { 137, 80, 78, 71, 13, 10, 26, 10 };
	bool validateHeader(std::vector<u8>);
	void decodeChunks();
	void processChunks();
	int getChannels();
	int getBytesPerPixel();
	int getScanlineSizeForWidth(int);
	std::vector<u8> m_data;
	Image m_image;

	u8 readU8();
	u32 readU32();
	std::vector<u8> readBytes(int);
	std::string readString(int);

	void processIHDR(std::vector<u8>);
	void processIDAT(std::vector<u8>);
	void decodeBitmap();
	void unfilter();

public:
	Image decode(std::string);
	int getHeight() { return m_height; }
	int getWidth() { return m_width; }
	int getBitDepth() { return m_bit_depth; }
	std::vector<u8> getData() { return m_data; }
	std::vector<Scanline> getScanlines() { return m_scanlines; }
	ColorType getColorType() { return m_color_type; }
};

