#pragma once

#include <vector>
#include <memory>

#include "bmp.h"
#include "filter.h"

class FilterController {
public:
    explicit FilterController(const std::vector<std::shared_ptr<Filter>> &filters);

    void ApplyFilters(BMP &file);

private:
    std::vector<std::shared_ptr<Filter>> filters_;
};