#include "Image.h"

Image::Image()
{
	m_height = 0;
	m_width = 0;
}

Image::Image(u32 height, u32 width)
{
	m_height = height;
	m_width = width;
}

Image::Image(u32 height, u32 width, std::vector<std::vector<u8>> data)
{
	m_height = height;
	m_width = width;
	m_data = data;
}

void Image::addRow(std::vector<u8> row)
{
	if (m_data.size() == m_height) {
		throw std::runtime_error("Number of rows is already equal to the height of the image.");
	}
	m_data.push_back(row);
}

Pixel Image::getPixel(int x, int y) {
    if (x >= m_width) {
        throw std::runtime_error("x can not be greater or equal to the width, x is " + std::to_string(x));
    }

    if (y >= m_height) {
        throw std::runtime_error("y can not be greater or equal to the height, y is " + std::to_string(y));
    }

    x = x * 3;

    Pixel pixel{};
    pixel.r = m_data[y][x];
    pixel.g = m_data[y][x + 1];
    pixel.b = m_data[y][x + 2];

    return pixel;
}

void Image::setPixel(int x, int y, Pixel pixel) {
    if (x >= m_width) {
        throw std::runtime_error("x can not be greater or equal to the width, x is " + std::to_string(x));
    }

    if (y >= m_height) {
        throw std::runtime_error("y can not be greater or equal to the height, y is " + std::to_string(y));
    }

    x = x * 3;

    if (m_data.size() <= y) {
        m_data.resize(y + 1);
    }

    if (m_data[y].size() < (x + 3)) {
        m_data[y].resize(x + 3);
    }

    m_data[y][x] = pixel.r;
    m_data[y][x + 1] = pixel.g;
    m_data[y][x + 2] = pixel.b;
}

void Image::resize(int newHeight, int newWidth) {
    double scaleX = (double)newWidth / m_width;
    double scaleY = (double)newHeight / m_height;

    Image scaledImage(newHeight, newWidth);

    // Fill in every pixel in the scaled image
    for (int y = 0; y < newHeight; y++) {
        for (int x = 0; x < newWidth; x++) {
            int yNearest = std::floor(y / scaleY);
            int xNearest = std::floor(x / scaleX);

            Pixel pixel = getPixel(xNearest, yNearest);
            scaledImage.setPixel(x, y, pixel);
        }
    }

    m_data = scaledImage.getData();
    m_height = scaledImage.getHeight();
    m_width = scaledImage.getWidth();
}


