#pragma once

#include <fstream>
#include "bmp.h"

class Output {
public:
    Output();

    explicit Output(const std::string &input_file);

    void Write(const BMP &file);

private:
    template <typename T>
    void Write(const T &result);

    void Write(const char *arr, std::streamsize bytes);

    void Write(const PIXEL &pixel);

    std::ofstream os_;
};