#include "gray_scale.h"
#include "exception.h"

GrayScale::GrayScale() {
}

void GrayScale::Apply(BITMAP& bitmap) const {
    for (auto& row : bitmap.matrix) {
        for (auto& pixel : row) {
            const CHANNEL r_factor = 0.299;
            const CHANNEL g_factor = 0.587;
            const CHANNEL b_factor = 0.114;
            CHANNEL value = pixel.r_ * r_factor + pixel.g_ * g_factor + pixel.b_ * b_factor;
            pixel = PIXEL(value, value, value);
        }
    }
}