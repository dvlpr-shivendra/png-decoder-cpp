#include "Decoder.h"
#include "Streamer.h"
#include <iostream>
#include <sys/ioctl.h>
#include <cmath>

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        std::cout << "usage: " << argv[0] << " <png file>" << std::endl;

        return 1;
    }

    struct winsize size;
    ioctl(fileno(stdout), TIOCGWINSZ, &size);
    int rows_count = size.ws_row;
    int cols_count = size.ws_col;

    Decoder decoder;

    Image image = decoder.decode(argv[1]);

    double height = image.getHeight();
    double width = image.getWidth();

    if (height > rows_count || width > cols_count)
    {
        double new_height = rows_count;
        double new_width = cols_count;

        if (height > new_height)
        {
            new_width = width / height * new_height;
        }

        if (width > new_width)
        {
            new_height = height / width * new_width;
        }

        image.resize(new_height, new_width);
    }

    for (size_t y = 0; y < image.getHeight(); y++)
    {
        for (size_t x = 0; x < image.getWidth(); x++)
        {
            Pixel pixel = image.getPixel(x, y);
            std::cout << "\033[48;2;" << pixel.r << ";" << pixel.g << ";" << pixel.b << "m  ";
        }
        std::cout << "\033[0m" << std::endl;
    }
}
