#pragma once

#include <fstream>
#include "bmp.h"

class Input {
public:
    Input();

    explicit Input(const std::string &input_file);

    void Read(BMP &file);

private:
    template <typename T>
    void Read(T &result);

    void Read(char *arr, std::streamsize bytes);

    void Read(PIXEL &pixel);

    std::ifstream is_;
};