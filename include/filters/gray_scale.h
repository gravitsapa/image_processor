#pragma once

#include "filter.h"

class GrayScale : public Filter {

public:
    GrayScale();

    void Apply(BITMAP& bitmap) const override;
};