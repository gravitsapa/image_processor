#pragma once

#include "filter.h"

class EdgeDetection : public Filter {
private:
    CHANNEL threshold_ = 0;

public:
    explicit EdgeDetection(CHANNEL threshold);

    void Apply(BITMAP& bitmap) const override;
};