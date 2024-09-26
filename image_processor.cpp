#include <string>
#include <iostream>
#include <vector>
#include <memory>

#include "exception.h"
#include "filter.h"
#include "args_data.h"
#include "bmp.h"
#include "input.h"
#include "output.h"
#include "filter_controller.h"

void PrintMessage(const std::string &message) {
    std::cout << message << std::endl;
}

void PrintMessageAndExit(const std::string &message) {
    PrintMessage(message);
    exit(0);
}

int main(int argc, char **argv) {
    if (argc == 1) {
        const std::string help =
            "Image proccessor program.\n\n"

            "To apply filters for your image enter:\n"
            "{path to the imput file} {path to the output file}\n"
            "[-{filter 1 name} [argument 1] [argument 2] ...]\n"
            "[-{filter 2 name} [argument 1] [argument 2] ...]\n"
            "...\n\n"

            "Input and output files must be BMP24\n"
            "Available filters:\n\n"

            "Crop filter: -crop width height\n"
            "Crops the image to the specified width and height. The top left part of the image is used.\n\n"

            "Grayscale filter: -gs\n"
            "Converts an image to grayscale.\n\n"

            "Negative filter: -neg\n"
            "Converts an image to negative.\n\n"

            "Edge detection filter: -edge threshold\n"
            "Detects edges.\n\n"

            "Gaussian blur filter: -blur sigma\n"
            "Gaussian blurs the image.\n\n"

            "Pointilize filter: -point radius\n"
            "Splits the image into circles.\n\n";

        PrintMessageAndExit(help);
    }

    ArgsData data;
    try {
        data = ArgsData(argc, argv);
    } catch (const ArgumentException &ex) {
        PrintMessageAndExit(ex.what());
    }

    std::string input_file;
    std::string output_file;

    input_file = data.InputFile();
    output_file = data.OutputFile();

    BMP file;
    Input input;
    try {
        input = Input(input_file);
    } catch (const InputException &ex) {
        PrintMessageAndExit(ex.what());
    }

    try {
        input.Read(file);
    } catch (...) {
        PrintMessageAndExit("Cannot read bmp file");
    }

    std::vector<std::shared_ptr<Filter>> filters(data.Parsed().size());

    for (size_t ind = 0; ind < filters.size(); ind++) {
        try {
            filters[ind] = GetFilter(data.Parsed()[ind]);
        } catch (const std::exception &ex) {
            PrintMessageAndExit("Filter #" + std::to_string(ind + 1) + ex.what());
        }
    }

    FilterController controller(filters);

    try {
        controller.ApplyFilters(file);
    } catch (...) {
        PrintMessageAndExit("Cannot apply filters to the image");
    }

    Output output;
    try {
        output = Output(output_file);
    } catch (...) {
        PrintMessageAndExit("Could not open output file");
    }

    try {
        output.Write(file);
    } catch (...) {
        PrintMessageAndExit("Cannot write bmp file");
    }

    return 0;
}
