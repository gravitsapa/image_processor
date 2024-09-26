#include "pointilize.h"
#include "matrix_apply.h"
#include "exception.h"

#include <math.h>
#include <numbers>
#include <algorithm>
#include <random>

Pointilize::Pointilize(CHANNEL radius) : radius_(radius) {
    const CHANNEL eps = static_cast<CHANNEL>(1e-9);
    if (radius_ < eps) {
        THROW_FILTER("Radius must be positive");
    }
}

void Pointilize::Apply(BITMAP& bitmap) const {
    if (bitmap.matrix.empty()) {
        return;
    }
    using Coordinate = float;

    const int32_t m = static_cast<int32_t>(bitmap.matrix.size());
    const int32_t n = static_cast<int32_t>(bitmap.matrix[0].size());

    Coordinate width = static_cast<Coordinate>(n);
    Coordinate height = static_cast<Coordinate>(m);

    const Coordinate radius = std::min({radius_, width, height});
    const Coordinate cell_length = static_cast<Coordinate>(std::sqrt(2)) * radius;

    int32_t horizontal_amount = static_cast<int32_t>(round(width / cell_length));
    int32_t vertical_amount = static_cast<int32_t>(round(height / cell_length));

    std::vector<std::pair<Coordinate, Coordinate>> centers;

    std::random_device rd;
    std::mt19937 mt(rd());

    for (int32_t ind_y = 0; ind_y < vertical_amount; ind_y++) {
        for (int32_t ind_x = 0; ind_x < horizontal_amount; ind_x++) {
            const Coordinate heigh_of_rect = height / static_cast<Coordinate>(vertical_amount);
            const Coordinate width_of_rect = width / static_cast<Coordinate>(horizontal_amount);
            Coordinate min_y_coord = heigh_of_rect * static_cast<Coordinate>(ind_y);
            Coordinate min_x_coord = width_of_rect * static_cast<Coordinate>(ind_x);

            auto rnd_y = mt() - mt.min();
            auto rnd_x = mt() - mt.min();

            const auto range = mt.max() - mt.min();

            Coordinate y =
                min_y_coord + heigh_of_rect * (static_cast<Coordinate>(rnd_y) / static_cast<Coordinate>(range));

            Coordinate x =
                min_x_coord + width_of_rect * (static_cast<Coordinate>(rnd_x) / static_cast<Coordinate>(range));

            centers.push_back(std::make_pair(y, x));
        }
    }

    std::shuffle(centers.begin(), centers.end(), mt);

    const int32_t length = static_cast<int32_t>(ceil(radius));
    const int32_t size = 2 * length + 1;

    std::vector<std::vector<CHANNEL>> circle_matrix(size, std::vector<CHANNEL>(size, 0));
    int32_t cnt_inside_circle = 0;

    for (int32_t ind_x = 0; ind_x < size; ind_x++) {
        for (int32_t ind_y = 0; ind_y < size; ind_y++) {

            int32_t dst_y = ind_y - length - 1;
            int32_t dst_x = ind_x - length - 1;

            if (static_cast<Coordinate>(dst_x * dst_x + dst_y * dst_y) < radius * radius) {
                circle_matrix[ind_y][ind_x] = 1;
                cnt_inside_circle++;
            }
        }
    }

    for (auto& row : circle_matrix) {
        for (auto& factor : row) {
            factor /= static_cast<CHANNEL>(cnt_inside_circle);
        }
    }

    BITMAP result;
    const uint8_t one = 255;
    result.matrix.resize(m, std::vector<PIXEL>(n, PIXEL(one, one, one)));

    for (const auto& center : centers) {
        MatrixApply apply;
        apply.SetMatrix(circle_matrix);

        int32_t y = std::max(0, std::min(m - 1, static_cast<int32_t>(round(center.first))));
        int32_t x = std::max(0, std::min(n - 1, static_cast<int32_t>(round(center.second))));
        PIXEL circle_color = apply.ComputeMatrix(bitmap, y, x);

        for (int32_t ind_x = 0; ind_x < size; ind_x++) {
            for (int32_t ind_y = 0; ind_y < size; ind_y++) {
                const Coordinate eps = 1e-9;
                if (circle_matrix[ind_y][ind_x] < eps) {
                    continue;
                }

                int32_t y_center = y + ind_y - length - 1;
                int32_t x_center = x + ind_x - length - 1;

                if (y_center < 0 || y_center >= m || x_center < 0 || x_center >= n) {
                    continue;
                }

                result.matrix[y_center][x_center] = circle_color;
            }
        }
    }

    bitmap = result;
}