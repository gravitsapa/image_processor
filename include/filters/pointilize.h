#pragma once

#include "filter.h"
#include "bmp.h"

class Pointilize : public Filter {
private:
    CHANNEL radius_ = 0;

public:
    explicit Pointilize(CHANNEL radius);

    void Apply(BITMAP& bitmap) const override;
};