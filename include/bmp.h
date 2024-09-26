#pragma once

#include "bitmap.h"

#include <vector>

class BMP {
    friend class Input;
    friend class Output;

public:
    const Bitmap& GetBitmap() const;

    void Change(const Bitmap& new_bitmap);

private:
    // BMP header
    uint16_t id_field_ = 0;
    uint32_t size_ = 0;
    uint32_t reserved_ = 0;
    uint32_t offset_ = 0;

    // DIB header

    uint32_t bytes_number_ = 0;
    uint32_t width_ = 0;
    uint32_t height_ = 0;
    uint16_t color_planes_ = 0;
    uint16_t bits_per_pixel_ = 0;
    uint32_t compression_type_ = 0;
    uint32_t size_of_bitmap_ = 0;
    uint32_t metre_horizontal_ = 0;
    uint32_t metre_vertical_ = 0;
    uint32_t colors_in_pallete_ = 0;
    uint32_t important_colors_ = 0;

    // bitmap data
    Bitmap bitmap_;
};