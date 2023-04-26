#include <FL/Fl.H>
#include <FL/fl_draw.H>
#include <FL/Fl_Window.H>

#include <cstdint>
#include <cstdlib>

#include "Decoder.h"
#include "Streamer.h"
#include <iostream>

class ImageWindow : public Fl_Window
{
public:
    ImageWindow(int w, int h) : Fl_Window(w, h)
    {
    }

    virtual void draw()
    {
        double rows_count = h();
        double cols_count = w();

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
                fl_color(pixel.r, pixel.g, pixel.b);
                fl_point(x, y);
            }
        }
    }

    Image image;
};

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        std::cout << "usage: " << argv[0] << " <png file>" << std::endl;

        return 1;
    }

    int rows_count = 640;
    int cols_count = 480;

    Decoder decoder;

    Image image = decoder.decode(argv[1]);

    ImageWindow window(640, 480);

    window.image = image;

    window.end();
    window.show(argc, argv);

    return Fl::run();
}
