#include "input.h"
#include "exception.h"

#include <climits>

Input::Input() {
}

Input::Input(const std::string &input_file) {
    try {
        is_ = std::ifstream(input_file, std::ios::in | std::ios::binary);
    } catch (...) {
        THROW_INPUT("Cannot open input file");
    }

    const bool open_correctly = is_.good();
    if (!open_correctly) {
        THROW_INPUT("Cannot open input file");
    }
}

template <typename T>
void Input::Read(T &result) {
    static_assert(std::is_integral<T>::value, "Type should be integral");
    if constexpr (std::is_unsigned<T>::value) {
        const size_t bytes = sizeof(T);
        unsigned char data[bytes];
        is_.read(reinterpret_cast<char *>(data), bytes);
        result = 0;
        for (int32_t ind = 0; ind < bytes; ind++) {
            result |= static_cast<T>(data[ind]) << (ind * CHAR_BIT);
        }
    } else {
        using U = typename std::make_unsigned<T>::type;
        U temp = 0;
        Read(temp);
        result = static_cast<T>(temp);
    }
}

void Input::Read(char *arr, std::streamsize bytes) {
    is_.read(arr, bytes);
}

void Input::Read(PIXEL &pixel) {
    uint8_t r = 0;
    uint8_t g = 0;
    uint8_t b = 0;
    Read(b);
    Read(g);
    Read(r);
    pixel = PIXEL(r, g, b);
}

void Input::Read(BMP &file) {
    Read(file.id_field_);
    Read(file.size_);
    Read(file.reserved_);
    Read(file.offset_);

    Read(file.bytes_number_);
    Read(file.width_);
    Read(file.height_);
    Read(file.color_planes_);
    Read(file.bits_per_pixel_);
    Read(file.compression_type_);
    Read(file.size_of_bitmap_);
    Read(file.metre_horizontal_);
    Read(file.metre_vertical_);
    Read(file.colors_in_pallete_);
    Read(file.important_colors_);

    file.bitmap_.matrix.resize(file.height_);
    for (int32_t y = static_cast<int32_t>(file.height_) - 1; y >= 0; y--) {
        file.bitmap_.matrix[y].resize(file.width_);
        for (int32_t x = 0; x < file.width_; x++) {
            Read(file.bitmap_.matrix[y][x]);
        }

        const std::streamsize complete_bytes = 4;
        std::streamsize empty_bytes =
            (complete_bytes - (static_cast<std::streamsize>(file.width_) * 3) % complete_bytes);
        if (empty_bytes == complete_bytes) {
            empty_bytes = 0;
        }

        char empty[4] = {0};

        Read(empty, empty_bytes);
    }
}