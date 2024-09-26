#include "bitmap.h"

#include <climits>

PIXEL::Pixel(uint8_t r, uint8_t g, uint8_t b) {
    const CHANNEL colors = static_cast<CHANNEL>(UCHAR_MAX);
    r_ = static_cast<CHANNEL>(r) / colors;
    g_ = static_cast<CHANNEL>(g) / colors;
    b_ = static_cast<CHANNEL>(b) / colors;
}

PIXEL::Pixel() {
}

PIXEL::Pixel(CHANNEL r, CHANNEL g, CHANNEL b) {
    r_ = r;
    g_ = g;
    b_ = b;
}

PIXEL PIXEL::operator+(const PIXEL& second) const {
    return PIXEL(r_ + second.r_, g_ + second.g_, b_ + second.b_);
}

PIXEL PIXEL::operator*(const CHANNEL& multiple) const {
    return PIXEL(multiple * r_, multiple * g_, multiple * b_);
}

void PIXEL::Normalize() {
    const CHANNEL zero = static_cast<CHANNEL>(0);
    const CHANNEL one = static_cast<CHANNEL>(1);
    r_ = std::max(zero, std::min(one, r_));
    g_ = std::max(zero, std::min(one, g_));
    b_ = std::max(zero, std::min(one, b_));
}