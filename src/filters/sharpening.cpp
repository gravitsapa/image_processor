#include "sharpening.h"
#include "matrix_apply.h"

Sharpening::Sharpening() {
}

void Sharpening::Apply(BITMAP& bitmap) const {
    MatrixApply apply;
    const std::vector<std::vector<CHANNEL>> change_matrix = {{0, -1, 0}, {-1, 5, -1}, {0, -1, 0}};
    apply.SetMatrix(change_matrix);
    apply.Apply(bitmap);
}