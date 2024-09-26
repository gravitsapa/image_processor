#pragma once

#include "filter.h"

class Sharpening : public Filter {
public:
    Sharpening();

    void Apply(BITMAP& bitmap) const override;
};