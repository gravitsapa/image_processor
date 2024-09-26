#pragma once

#include <memory>
#include <string>
#include <vector>
#include "filter.h"

#include "crop.h"
#include "edge_detection.h"
#include "gaussian_blur.h"
#include "gray_scale.h"
#include "negative.h"
#include "pointilize.h"
#include "sharpening.h"

class ArgsData {
private:
    std::string input_file_;
    std::string output_file_;

    struct FilterData {
        std::string filter_name_;
        std::vector<std::string> arguments_;
    };

    std::vector<FilterData> parsed_;

    friend std::shared_ptr<Filter> GetFilter(const FilterData& filter_data);

public:
    ArgsData();

    ArgsData(const int argc, char** const argv);

    const std::string& InputFile() const;

    const std::string& OutputFile() const;

    const std::vector<FilterData>& Parsed() const;
};

std::shared_ptr<Filter> GetFilter(const ArgsData::FilterData& filter_data);