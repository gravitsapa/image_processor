#include "bmp.h"

#include <fstream>
#include <iostream>
#include <climits>

const BITMAP& BMP::GetBitmap() const {
    return bitmap_;
}

void BMP::Change(const Bitmap& bitmap) {
    bitmap_ = bitmap;

    height_ = bitmap_.matrix.size();
    if (height_ == 0) {
        width_ = 0;
    } else {
        width_ = bitmap_.matrix[0].size();
    }

    size_of_bitmap_ = width_ * height_ * 3;
    size_ = size_of_bitmap_ + offset_;
}
