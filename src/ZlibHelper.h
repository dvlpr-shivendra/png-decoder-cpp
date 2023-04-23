#pragma once

#include<vector>
#include "types.h"

class ZlibHelper
{
private:
    /* data */
public:
    std::vector<u8> decompress(std::vector<u8>);
    std::vector<u8> compress(const std::vector<u8>&);
};
