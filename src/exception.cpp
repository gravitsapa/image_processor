#include "exception.h"

MyException::MyException(const char* file_name, int line_number, std::string m) {
    message_ = std::string(file_name) + ":" + std::to_string(line_number) + ": " + m;
}

const char* MyException::what() const noexcept {
    return message_.c_str();
}