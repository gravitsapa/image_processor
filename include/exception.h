#pragma once

#include <exception>
#include <string>

#define THROW(type, message) throw type(__FILE__, __LINE__, message)
#define THROW_ARG_NUM(arg, message) THROW(ArgumentException, "Filer#" + std::to_string(arg_num) + ": " + message)
#define THROW_ARG(message) THROW(ArgumentException, message)
#define THROW_INPUT(message) THROW(InputException, message)
#define THROW_OUTPUT(message) THROW(OutputException, message)
#define THROW_FILTER(message) THROW(FilterException, message)

struct MyException : public std::exception {
public:
    MyException(const char* file_name, int line_number, std::string m);

    const char* what() const noexcept override;

    std::string message_;
};

class ArgumentException : public MyException {
    using MyException::MyException;
};

class FilterException : public MyException {
    using MyException::MyException;
};

class InputException : public MyException {
    using MyException::MyException;
};

class OutputException : public MyException {
    using MyException::MyException;
};