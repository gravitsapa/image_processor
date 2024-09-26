#pragma once

#include "filter.h"

class GaussianBlur : public Filter {
private:
    CHANNEL sigma_ = 0;

public:
    explicit GaussianBlur(CHANNEL sigma);

    void Apply(BITMAP& bitmap) const override;
};