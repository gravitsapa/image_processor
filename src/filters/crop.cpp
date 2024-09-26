#include "crop.h"
#include "exception.h"

Crop::Crop(int32_t width, int32_t height) : width_(width), height_(height) {
    if (width < 0) {
        THROW_FILTER("width must me positive");
    }
    if (height < 0) {
        THROW_FILTER("height must me positive");
    }
}

void Crop::Apply(BITMAP& bitmap) const {
    int32_t res_height = std::min(height_, static_cast<int32_t>(bitmap.matrix.size()));
    int32_t res_width = 0;
    if (res_height > 0) {
        res_width = std::min(width_, static_cast<int32_t>(bitmap.matrix[0].size()));
    }

    bitmap.matrix.resize(res_height);
    for (int32_t row = 0; row < res_height; row++) {
        bitmap.matrix[row].resize(res_width);
    }
}
