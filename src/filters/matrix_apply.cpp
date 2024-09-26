#include "matrix_apply.h"
#include "exception.h"

PIXEL MatrixApply::GetByIndex(const BITMAP& bitmap, int32_t y, int32_t x) const {
    y = std::max(static_cast<int32_t>(0), std::min(static_cast<int32_t>(bitmap.matrix.size()) - 1, y));
    x = std::max(static_cast<int32_t>(0), std::min(static_cast<int32_t>(bitmap.matrix[0].size()) - 1, x));
    return bitmap.matrix[y][x];
}

PIXEL MatrixApply::ComputeMatrix(const BITMAP& bitmap, int32_t y, int32_t x) const {
    int32_t y_middle = static_cast<int32_t>(change_matrix_.size()) / 2;
    int32_t x_middle = static_cast<int32_t>(change_matrix_[0].size()) / 2;

    PIXEL result;

    for (int32_t i = 0; i < change_matrix_.size(); i++) {
        for (int32_t j = 0; j < change_matrix_[i].size(); j++) {
            result = result + GetByIndex(bitmap, y + i - y_middle, x + j - x_middle) * change_matrix_[i][j];
        }
    }

    result.Normalize();
    return result;
}

void MatrixApply::SetMatrix(const std::vector<std::vector<CHANNEL>>& matrix) {
    change_matrix_ = matrix;
}

void MatrixApply::Apply(BITMAP& bitmap) const {
    BITMAP result = bitmap;
    for (int32_t i = 0; i < bitmap.matrix.size(); i++) {
        for (int32_t j = 0; j < bitmap.matrix[i].size(); j++) {
            result.matrix[i][j] = ComputeMatrix(bitmap, i, j);
        }
    }
    bitmap = result;
}