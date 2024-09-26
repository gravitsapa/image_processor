#include "output.h"
#include "exception.h"
#include "bitmap.h"

#include <climits>

Output::Output() {
}

Output::Output(const std::string &input_file) {
    try {
        os_ = std::ofstream(input_file, std::ios::out | std::ios::binary);
    } catch (...) {
        THROW_OUTPUT("Cannot open output file");
    }

    const bool open_correctly = os_.good();
    if (!open_correctly) {
        THROW_OUTPUT("Cannot open output file");
    }
}

template <typename T>
void Output::Write(const T &val) {
    static_assert(std::is_integral<T>::value, "Type should be integral");
    if constexpr (std::is_unsigned<T>::value) {
        const size_t bytes = sizeof(T);
        unsigned char data[bytes];
        for (int32_t ind = 0; ind < bytes; ind++) {
            data[ind] = static_cast<T>(val >> (ind * CHAR_BIT));
        }
        os_.write(reinterpret_cast<char *>(data), bytes);
    } else {
        using U = typename std::make_unsigned<T>::type;
        Write(static_cast<U>(val));
    }
}

void Output::Write(const char *arr, std::streamsize bytes) {
    os_.write(arr, bytes);
}

void Output::Write(const PIXEL &pixel) {
    const CHANNEL colors = static_cast<CHANNEL>(255);
    uint8_t r = static_cast<uint8_t>(pixel.r_ * colors);
    uint8_t g = static_cast<uint8_t>(pixel.g_ * colors);
    uint8_t b = static_cast<uint8_t>(pixel.b_ * colors);
    Write(b);
    Write(g);
    Write(r);
}

void Output::Write(const BMP &file) {
    Write(file.id_field_);
    Write(file.size_);
    Write(file.reserved_);
    Write(file.offset_);

    Write(file.bytes_number_);
    Write(file.width_);
    Write(file.height_);
    Write(file.color_planes_);
    Write(file.bits_per_pixel_);
    Write(file.compression_type_);
    Write(file.size_of_bitmap_);
    Write(file.metre_horizontal_);
    Write(file.metre_vertical_);
    Write(file.colors_in_pallete_);
    Write(file.important_colors_);

    for (int32_t y = static_cast<int32_t>(file.height_) - 1; y >= 0; y--) {
        for (int32_t x = 0; x < file.width_; x++) {
            Write(file.bitmap_.matrix[y][x]);
        }

        const std::streamsize complete_bytes = 4;
        std::streamsize empty_bytes =
            (complete_bytes - (static_cast<std::streamsize>(file.width_) * 3) % complete_bytes);
        if (empty_bytes == complete_bytes) {
            empty_bytes = 0;
        }

        char empty[4] = {0};
        Write(empty, empty_bytes);
    }
}