#include "negative.h"
#include "exception.h"

Negative::Negative() {
}

void Negative::Apply(BITMAP& bitmap) const {
    for (auto& row : bitmap.matrix) {
        for (auto& pixel : row) {
            CHANNEL one = 1;
            pixel = PIXEL(one - pixel.r_, one - pixel.g_, one - pixel.b_);
        }
    }
}