#include "args_data.h"
#include "filter.h"
#include "exception.h"
#include "crop.h"
#include "gray_scale.h"
#include "negative.h"
#include "sharpening.h"
#include "edge_detection.h"
#include "gaussian_blur.h"
#include "pointilize.h"

ArgsData::ArgsData(){};

const std::vector<ArgsData::FilterData>& ArgsData::Parsed() const {
    return parsed_;
}

ArgsData::ArgsData(const int argc, char** const argv) {
    if (argc < 3) {
        THROW_ARG("Need to enter I/O files' names");
    }

    input_file_ = std::string(argv[1]);
    output_file_ = std::string(argv[2]);

    size_t arg_num = 3;

    while (arg_num < argc) {
        std::string arg = std::string(argv[arg_num]);

        const char begin_symbol = '-';

        if (arg[0] != begin_symbol) {
            THROW_ARG_NUM(parsed_.size() + 1, "A filter name must begin with '-'");
        }

        const std::string filter_name = arg.substr(1, arg.size() - 1);
        if (filter_name.empty()) {
            THROW_ARG_NUM(parsed_.size() + 1, "A filter name must not be empty");
        }

        parsed_.emplace_back();
        parsed_.back().filter_name_ = filter_name;

        arg_num++;
        while (arg_num < argc && argv[arg_num][0] != '-') {
            parsed_.back().arguments_.push_back(std::string(argv[arg_num]));
            arg_num++;
        }
    }
}

const std::string& ArgsData::InputFile() const {
    return input_file_;
}

const std::string& ArgsData::OutputFile() const {
    return output_file_;
}

std::shared_ptr<Filter> GetFilter(const ArgsData::FilterData& filter_data) {
    const auto& filter_name = filter_data.filter_name_;
    const auto& arguments = filter_data.arguments_;
    const auto args_cnt = arguments.size();
    std::shared_ptr<Filter> result;

    try {
        if (filter_name == "crop") {
            if (args_cnt != 2) {
                THROW_ARG("Arguments amount must be 2");
            }
            result = std::make_shared<Crop>(std::stoi(arguments[0]), std::stoi(arguments[1]));
        } else if (filter_name == "edge") {
            if (args_cnt != 1) {
                THROW_ARG("Arguments amount must be 1");
            }
            result = std::make_shared<EdgeDetection>(static_cast<CHANNEL>(std::stof(arguments[0])));
        } else if (filter_name == "blur") {
            if (args_cnt != 1) {
                THROW_ARG("Arguments amount must be 1");
            }
            result = std::make_shared<GaussianBlur>(static_cast<CHANNEL>(std::stof(arguments[0])));
        } else if (filter_name == "gs") {
            if (args_cnt != 0) {
                THROW_ARG("Arguments amount must be 0");
            }
            result = std::make_shared<GrayScale>();
        } else if (filter_name == "neg") {
            if (args_cnt != 0) {
                THROW_ARG("Arguments amount must be 0");
            }
            result = std::make_shared<Negative>();
        } else if (filter_name == "point") {
            if (args_cnt != 1) {
                THROW_ARG("Arguments amount must be 1");
            }
            result = std::make_shared<Pointilize>(static_cast<CHANNEL>(std::stof(arguments[0])));
        } else if (filter_name == "sharp") {
            if (args_cnt != 0) {
                THROW_ARG("");
            }
            result = std::make_shared<Sharpening>();
        } else {
            THROW_ARG("Filter is not found");
        }
    } catch (const ArgumentException& ex) {
        THROW_ARG(ex.what());
    } catch (const FilterException& ex) {
        THROW_ARG(ex.what());
    } catch (...) {
        THROW_ARG("Cannot parse arguments");
    }
    return result;
}