#pragma once

#include "filter.h"

class Crop : public Filter {
private:
    int32_t width_ = 0;
    int32_t height_ = 0;

public:
    Crop(int32_t width, int32_t height);

    void Apply(BITMAP& bitmap) const override;
};