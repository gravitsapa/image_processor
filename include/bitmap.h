#pragma once

#include <cstdint>
#include <vector>

#define BITMAP Bitmap
#define PIXEL BITMAP::Pixel
#define CHANNEL PIXEL::Channel

struct Bitmap {
    struct Pixel {
        Pixel();

        Pixel(uint8_t r, uint8_t g, uint8_t b);

        using Channel = float;

        Pixel(Channel r, Channel g, Channel b);

        Pixel operator+(const Pixel& second) const;
        Pixel operator*(const Pixel::Channel& multiple) const;

        void Normalize();

        Channel r_ = 0;
        Channel g_ = 0;
        Channel b_ = 0;
    };

    std::vector<std::vector<Pixel>> matrix;
};