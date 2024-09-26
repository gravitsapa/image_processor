#include "gaussian_blur.h"
#include "matrix_apply.h"
#include "exception.h"

#include <math.h>
#include <numbers>

GaussianBlur::GaussianBlur(CHANNEL sigma) : sigma_(sigma) {
    const CHANNEL eps = static_cast<CHANNEL>(1e-9);
    if (-eps < sigma_ && sigma_ < eps) {
        THROW_FILTER("Simga must be non-zero");
    }
}

void GaussianBlur::Apply(BITMAP& bitmap) const {
    CHANNEL sigma2 = sigma_ * sigma_;
    CHANNEL sigma1_d = sigma_ / static_cast<CHANNEL>(sqrt(2));
    const CHANNEL factor = static_cast<CHANNEL>(4);
    int32_t lenght = static_cast<int32_t>(ceil(factor * sigma1_d));
    int32_t size = 2 * lenght + 1;

    std::vector<std::vector<CHANNEL>> horizontal(1, std::vector<CHANNEL>(size, 0));
    std::vector<std::vector<CHANNEL>> vertical(size, std::vector<CHANNEL>(1, 0));

    for (int32_t ind = 0; ind < size; ind++) {
        CHANNEL x = static_cast<CHANNEL>(lenght - ind);
        CHANNEL x2 = x * x;
        horizontal[0][ind] = vertical[ind][0] =
            1 / sqrtf(2 * std::numbers::pi_v<CHANNEL> * sigma2) * pow(std::numbers::e_v<CHANNEL>, -(x2) / (2 * sigma2));
    }

    MatrixApply apply_horizontal;
    apply_horizontal.SetMatrix(horizontal);
    MatrixApply apply_vertical;
    apply_vertical.SetMatrix(vertical);

    apply_horizontal.Apply(bitmap);
    apply_vertical.Apply(bitmap);
}