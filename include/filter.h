#pragma once

#include "bmp.h"
#include <memory>

class Filter {
public:
    virtual void Apply(BITMAP& bitmap) const = 0;

    virtual ~Filter() = default;
};
