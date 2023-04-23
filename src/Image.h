#pragma once
#include <vector>
#include <string>
#include "types.h"
#include <stdexcept>
#include <cmath>

struct Pixel {
	int r;
	int g;
	int b;
};


class Image
{
private:
	u32 m_height{};
	u32 m_width{};
	std::vector<std::vector<u8>> m_data;
public:
	Image();
	Image(u32, u32);
	Image(u32, u32, std::vector<std::vector<u8>>);
	void addRow(std::vector<u8>);
	Pixel getPixel(int, int);
	void setPixel(int x, int y, Pixel pixel);
	void resize(int, int);
	u32 getHeight() { return m_height; }
	u32 getWidth() { return m_width; }
	std::vector<std::vector<u8>> getData() { return m_data; }
	void setWidth(u32 width) { m_width = width; }
	void setHeight(u32 height) { m_height = height; }
};

