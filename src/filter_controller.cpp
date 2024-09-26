#include "filter_controller.h"

FilterController::FilterController(const std::vector<std::shared_ptr<Filter>> &filters) {
    filters_ = filters;
}

void FilterController::ApplyFilters(BMP &file) {
    auto bitmap = file.GetBitmap();
    for (const auto &filter : filters_) {
        filter->Apply(bitmap);
    }

    file.Change(bitmap);
}