#pragma once
#include <vector>

using u8 = unsigned char;
using u32 = unsigned int;

class Streamer
{
private:
	std::vector<u8> m_data;
public:
	Streamer(std::vector<u8>);
	std::vector<u8> readBytes(int count);
	u32 readU32();
	u8 readByte();
};

