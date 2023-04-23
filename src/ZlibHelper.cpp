#include "ZlibHelper.h"
#include <zlib.h>
#include <stdexcept>

std::vector<u8> ZlibHelper::decompress(std::vector<u8> compressed_data)
{
    std::vector<u8> decompressed_data;
    z_stream stream;
    stream.zalloc = Z_NULL;
    stream.zfree = Z_NULL;
    stream.opaque = Z_NULL;
    stream.avail_in = static_cast<uInt>(compressed_data.size());
    stream.next_in = reinterpret_cast<Bytef*>(const_cast<u8*>(compressed_data.data()));

    if (inflateInit(&stream) != Z_OK)
    {
        throw std::runtime_error("Failed to initialize zlib inflate stream");
    }

    constexpr int CHUNK_SIZE = 1024;
    u8 chunk[CHUNK_SIZE];
    int ret;
    do
    {
        stream.avail_out = CHUNK_SIZE;
        stream.next_out = chunk;
        ret = inflate(&stream, 0);
        if (ret == Z_STREAM_ERROR)
        {
            throw std::runtime_error("zlib inflate stream error");
            inflateEnd(&stream);
        }
        decompressed_data.insert(decompressed_data.end(), chunk, chunk + CHUNK_SIZE - stream.avail_out);
    } while (stream.avail_out == 0);

    inflateEnd(&stream);

    return decompressed_data;
}

std::vector<u8> ZlibHelper::compress(const std::vector<u8>& data) {
    std::vector<u8> compressed;
    const size_t CHUNK_SIZE = 1024;
    u8 chunk[CHUNK_SIZE];
    z_stream strm;
    strm.zalloc = Z_NULL;
    strm.zfree = Z_NULL;
    strm.opaque = Z_NULL;
    deflateInit(&strm, Z_DEFAULT_COMPRESSION);
    strm.avail_in = data.size();
    strm.next_in = (Bytef*)data.data();
    do {
        strm.avail_out = CHUNK_SIZE;
        strm.next_out = chunk;
        deflate(&strm, Z_FINISH);
        compressed.insert(compressed.end(), chunk, chunk + CHUNK_SIZE - strm.avail_out);
    } while (strm.avail_out == 0);
    deflateEnd(&strm);
    return compressed;
}

