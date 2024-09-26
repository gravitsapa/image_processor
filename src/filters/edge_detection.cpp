#include "edge_detection.h"
#include "matrix_apply.h"
#include "gray_scale.h"
#include "exception.h"

EdgeDetection::EdgeDetection(CHANNEL threshold) : threshold_(threshold) {
    const CHANNEL eps = static_cast<CHANNEL>(1e-9);
    if (threshold_ < -eps) {
        THROW_FILTER("Threshold must be positive");
    } else if (threshold_ > static_cast<CHANNEL>(1) + eps) {
        THROW_FILTER("Threshold must be less than 1");
    }
}

void EdgeDetection::Apply(BITMAP& bitmap) const {
    GrayScale gs;
    gs.Apply(bitmap);
    MatrixApply apply;
    const std::vector<std::vector<CHANNEL>> change_matrix = {{0, -1, 0}, {-1, 4, -1}, {0, -1, 0}};
    apply.SetMatrix(change_matrix);
    apply.Apply(bitmap);
    for (auto& row : bitmap.matrix) {
        for (auto& pixel : row) {
            if (pixel.r_ < threshold_) {
                const uint8_t zero = 0;
                pixel = PIXEL(zero, zero, zero);
            } else {
                const uint8_t one = 255;
                pixel = PIXEL(one, one, one);
            }
        }
    }
}