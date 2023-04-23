#include "Streamer.h"
#include <iostream>

Streamer::Streamer(std::vector<u8> data) {
	m_data = data;
}

std::vector<u8> Streamer::readBytes(int count)
{
	std::vector<u8> bytes(m_data.begin(), m_data.begin() + count);
	m_data.erase(m_data.begin(), m_data.begin() + count);

	return bytes;
}

u32 Streamer::readU32() {

	u32 value = int((u8)(m_data[0]) << 24 |
		(u8)(m_data[1]) << 16 |
		(u8)(m_data[2]) << 8 |
		(u8)(m_data[3]));

	m_data.erase(m_data.begin(), m_data.begin() + 4);

	return value;
}

u8 Streamer::readByte()
{
	u8 byte = m_data.front();
	m_data.erase(m_data.begin());
	return byte;
}