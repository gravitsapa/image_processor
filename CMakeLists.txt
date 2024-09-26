project(image_processor)

add_compile_options(-std=c++20)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3")

add_executable(
    image_processor
    image_processor.cpp
    src/exception.cpp
    src/bitmap.cpp
    src/filter.cpp
    src/filters/crop.cpp
    src/filters/gray_scale.cpp
    src/filters/negative.cpp
    src/filters/matrix_apply.cpp
    src/filters/sharpening.cpp
    src/filters/edge_detection.cpp
    src/filters/gaussian_blur.cpp
    src/filters/pointilize.cpp
    src/args_data.cpp
    src/input.cpp
    src/bmp.cpp
    src/output.cpp
    src/filter_controller.cpp
)

target_include_directories(
    image_processor 
    PUBLIC include 
    PUBLIC include/filters

)