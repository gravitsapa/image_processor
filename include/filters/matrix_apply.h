#pragma once

#include "filter.h"

class MatrixApply : public Filter {
private:
    std::vector<std::vector<CHANNEL>> change_matrix_;

public:
    PIXEL GetByIndex(const BITMAP& bitmap, int32_t y, int32_t x) const;

    PIXEL ComputeMatrix(const BITMAP& bitmap, int32_t y, int32_t x) const;

    void SetMatrix(const std::vector<std::vector<CHANNEL>>&);

    void Apply(BITMAP& bitmap) const override;
};