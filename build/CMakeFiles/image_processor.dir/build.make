# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/grvtsp/Documents/Projects/image-processor/image_processor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/grvtsp/Documents/Projects/image-processor/image_processor/build

# Include any dependencies generated for this target.
include CMakeFiles/image_processor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/image_processor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/image_processor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/image_processor.dir/flags.make

CMakeFiles/image_processor.dir/image_processor.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/image_processor.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/image_processor.cpp
CMakeFiles/image_processor.dir/image_processor.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/image_processor.dir/image_processor.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/image_processor.o -MF CMakeFiles/image_processor.dir/image_processor.o.d -o CMakeFiles/image_processor.dir/image_processor.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/image_processor.cpp

CMakeFiles/image_processor.dir/image_processor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/image_processor.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/image_processor.cpp > CMakeFiles/image_processor.dir/image_processor.i

CMakeFiles/image_processor.dir/image_processor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/image_processor.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/image_processor.cpp -o CMakeFiles/image_processor.dir/image_processor.s

CMakeFiles/image_processor.dir/src/exception.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/exception.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/exception.cpp
CMakeFiles/image_processor.dir/src/exception.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/image_processor.dir/src/exception.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/exception.o -MF CMakeFiles/image_processor.dir/src/exception.o.d -o CMakeFiles/image_processor.dir/src/exception.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/exception.cpp

CMakeFiles/image_processor.dir/src/exception.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/exception.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/exception.cpp > CMakeFiles/image_processor.dir/src/exception.i

CMakeFiles/image_processor.dir/src/exception.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/exception.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/exception.cpp -o CMakeFiles/image_processor.dir/src/exception.s

CMakeFiles/image_processor.dir/src/bitmap.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/bitmap.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/bitmap.cpp
CMakeFiles/image_processor.dir/src/bitmap.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/image_processor.dir/src/bitmap.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/bitmap.o -MF CMakeFiles/image_processor.dir/src/bitmap.o.d -o CMakeFiles/image_processor.dir/src/bitmap.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/bitmap.cpp

CMakeFiles/image_processor.dir/src/bitmap.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/bitmap.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/bitmap.cpp > CMakeFiles/image_processor.dir/src/bitmap.i

CMakeFiles/image_processor.dir/src/bitmap.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/bitmap.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/bitmap.cpp -o CMakeFiles/image_processor.dir/src/bitmap.s

CMakeFiles/image_processor.dir/src/filter.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/filter.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filter.cpp
CMakeFiles/image_processor.dir/src/filter.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/image_processor.dir/src/filter.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/filter.o -MF CMakeFiles/image_processor.dir/src/filter.o.d -o CMakeFiles/image_processor.dir/src/filter.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filter.cpp

CMakeFiles/image_processor.dir/src/filter.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/filter.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filter.cpp > CMakeFiles/image_processor.dir/src/filter.i

CMakeFiles/image_processor.dir/src/filter.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/filter.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filter.cpp -o CMakeFiles/image_processor.dir/src/filter.s

CMakeFiles/image_processor.dir/src/filters/crop.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/filters/crop.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/crop.cpp
CMakeFiles/image_processor.dir/src/filters/crop.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/image_processor.dir/src/filters/crop.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/filters/crop.o -MF CMakeFiles/image_processor.dir/src/filters/crop.o.d -o CMakeFiles/image_processor.dir/src/filters/crop.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/crop.cpp

CMakeFiles/image_processor.dir/src/filters/crop.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/filters/crop.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/crop.cpp > CMakeFiles/image_processor.dir/src/filters/crop.i

CMakeFiles/image_processor.dir/src/filters/crop.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/filters/crop.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/crop.cpp -o CMakeFiles/image_processor.dir/src/filters/crop.s

CMakeFiles/image_processor.dir/src/filters/gray_scale.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/filters/gray_scale.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/gray_scale.cpp
CMakeFiles/image_processor.dir/src/filters/gray_scale.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/image_processor.dir/src/filters/gray_scale.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/filters/gray_scale.o -MF CMakeFiles/image_processor.dir/src/filters/gray_scale.o.d -o CMakeFiles/image_processor.dir/src/filters/gray_scale.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/gray_scale.cpp

CMakeFiles/image_processor.dir/src/filters/gray_scale.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/filters/gray_scale.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/gray_scale.cpp > CMakeFiles/image_processor.dir/src/filters/gray_scale.i

CMakeFiles/image_processor.dir/src/filters/gray_scale.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/filters/gray_scale.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/gray_scale.cpp -o CMakeFiles/image_processor.dir/src/filters/gray_scale.s

CMakeFiles/image_processor.dir/src/filters/negative.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/filters/negative.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/negative.cpp
CMakeFiles/image_processor.dir/src/filters/negative.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/image_processor.dir/src/filters/negative.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/filters/negative.o -MF CMakeFiles/image_processor.dir/src/filters/negative.o.d -o CMakeFiles/image_processor.dir/src/filters/negative.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/negative.cpp

CMakeFiles/image_processor.dir/src/filters/negative.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/filters/negative.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/negative.cpp > CMakeFiles/image_processor.dir/src/filters/negative.i

CMakeFiles/image_processor.dir/src/filters/negative.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/filters/negative.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/negative.cpp -o CMakeFiles/image_processor.dir/src/filters/negative.s

CMakeFiles/image_processor.dir/src/filters/matrix_apply.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/filters/matrix_apply.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/matrix_apply.cpp
CMakeFiles/image_processor.dir/src/filters/matrix_apply.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/image_processor.dir/src/filters/matrix_apply.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/filters/matrix_apply.o -MF CMakeFiles/image_processor.dir/src/filters/matrix_apply.o.d -o CMakeFiles/image_processor.dir/src/filters/matrix_apply.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/matrix_apply.cpp

CMakeFiles/image_processor.dir/src/filters/matrix_apply.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/filters/matrix_apply.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/matrix_apply.cpp > CMakeFiles/image_processor.dir/src/filters/matrix_apply.i

CMakeFiles/image_processor.dir/src/filters/matrix_apply.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/filters/matrix_apply.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/matrix_apply.cpp -o CMakeFiles/image_processor.dir/src/filters/matrix_apply.s

CMakeFiles/image_processor.dir/src/filters/sharpening.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/filters/sharpening.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/sharpening.cpp
CMakeFiles/image_processor.dir/src/filters/sharpening.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/image_processor.dir/src/filters/sharpening.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/filters/sharpening.o -MF CMakeFiles/image_processor.dir/src/filters/sharpening.o.d -o CMakeFiles/image_processor.dir/src/filters/sharpening.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/sharpening.cpp

CMakeFiles/image_processor.dir/src/filters/sharpening.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/filters/sharpening.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/sharpening.cpp > CMakeFiles/image_processor.dir/src/filters/sharpening.i

CMakeFiles/image_processor.dir/src/filters/sharpening.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/filters/sharpening.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/sharpening.cpp -o CMakeFiles/image_processor.dir/src/filters/sharpening.s

CMakeFiles/image_processor.dir/src/filters/edge_detection.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/filters/edge_detection.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/edge_detection.cpp
CMakeFiles/image_processor.dir/src/filters/edge_detection.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/image_processor.dir/src/filters/edge_detection.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/filters/edge_detection.o -MF CMakeFiles/image_processor.dir/src/filters/edge_detection.o.d -o CMakeFiles/image_processor.dir/src/filters/edge_detection.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/edge_detection.cpp

CMakeFiles/image_processor.dir/src/filters/edge_detection.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/filters/edge_detection.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/edge_detection.cpp > CMakeFiles/image_processor.dir/src/filters/edge_detection.i

CMakeFiles/image_processor.dir/src/filters/edge_detection.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/filters/edge_detection.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/edge_detection.cpp -o CMakeFiles/image_processor.dir/src/filters/edge_detection.s

CMakeFiles/image_processor.dir/src/filters/gaussian_blur.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/filters/gaussian_blur.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/gaussian_blur.cpp
CMakeFiles/image_processor.dir/src/filters/gaussian_blur.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/image_processor.dir/src/filters/gaussian_blur.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/filters/gaussian_blur.o -MF CMakeFiles/image_processor.dir/src/filters/gaussian_blur.o.d -o CMakeFiles/image_processor.dir/src/filters/gaussian_blur.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/gaussian_blur.cpp

CMakeFiles/image_processor.dir/src/filters/gaussian_blur.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/filters/gaussian_blur.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/gaussian_blur.cpp > CMakeFiles/image_processor.dir/src/filters/gaussian_blur.i

CMakeFiles/image_processor.dir/src/filters/gaussian_blur.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/filters/gaussian_blur.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/gaussian_blur.cpp -o CMakeFiles/image_processor.dir/src/filters/gaussian_blur.s

CMakeFiles/image_processor.dir/src/filters/pointilize.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/filters/pointilize.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/pointilize.cpp
CMakeFiles/image_processor.dir/src/filters/pointilize.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/image_processor.dir/src/filters/pointilize.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/filters/pointilize.o -MF CMakeFiles/image_processor.dir/src/filters/pointilize.o.d -o CMakeFiles/image_processor.dir/src/filters/pointilize.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/pointilize.cpp

CMakeFiles/image_processor.dir/src/filters/pointilize.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/filters/pointilize.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/pointilize.cpp > CMakeFiles/image_processor.dir/src/filters/pointilize.i

CMakeFiles/image_processor.dir/src/filters/pointilize.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/filters/pointilize.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filters/pointilize.cpp -o CMakeFiles/image_processor.dir/src/filters/pointilize.s

CMakeFiles/image_processor.dir/src/args_data.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/args_data.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/args_data.cpp
CMakeFiles/image_processor.dir/src/args_data.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/image_processor.dir/src/args_data.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/args_data.o -MF CMakeFiles/image_processor.dir/src/args_data.o.d -o CMakeFiles/image_processor.dir/src/args_data.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/args_data.cpp

CMakeFiles/image_processor.dir/src/args_data.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/args_data.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/args_data.cpp > CMakeFiles/image_processor.dir/src/args_data.i

CMakeFiles/image_processor.dir/src/args_data.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/args_data.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/args_data.cpp -o CMakeFiles/image_processor.dir/src/args_data.s

CMakeFiles/image_processor.dir/src/input.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/input.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/input.cpp
CMakeFiles/image_processor.dir/src/input.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/image_processor.dir/src/input.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/input.o -MF CMakeFiles/image_processor.dir/src/input.o.d -o CMakeFiles/image_processor.dir/src/input.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/input.cpp

CMakeFiles/image_processor.dir/src/input.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/input.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/input.cpp > CMakeFiles/image_processor.dir/src/input.i

CMakeFiles/image_processor.dir/src/input.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/input.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/input.cpp -o CMakeFiles/image_processor.dir/src/input.s

CMakeFiles/image_processor.dir/src/bmp.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/bmp.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/bmp.cpp
CMakeFiles/image_processor.dir/src/bmp.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/image_processor.dir/src/bmp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/bmp.o -MF CMakeFiles/image_processor.dir/src/bmp.o.d -o CMakeFiles/image_processor.dir/src/bmp.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/bmp.cpp

CMakeFiles/image_processor.dir/src/bmp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/bmp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/bmp.cpp > CMakeFiles/image_processor.dir/src/bmp.i

CMakeFiles/image_processor.dir/src/bmp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/bmp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/bmp.cpp -o CMakeFiles/image_processor.dir/src/bmp.s

CMakeFiles/image_processor.dir/src/output.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/output.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/output.cpp
CMakeFiles/image_processor.dir/src/output.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/image_processor.dir/src/output.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/output.o -MF CMakeFiles/image_processor.dir/src/output.o.d -o CMakeFiles/image_processor.dir/src/output.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/output.cpp

CMakeFiles/image_processor.dir/src/output.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/output.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/output.cpp > CMakeFiles/image_processor.dir/src/output.i

CMakeFiles/image_processor.dir/src/output.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/output.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/output.cpp -o CMakeFiles/image_processor.dir/src/output.s

CMakeFiles/image_processor.dir/src/filter_controller.o: CMakeFiles/image_processor.dir/flags.make
CMakeFiles/image_processor.dir/src/filter_controller.o: /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filter_controller.cpp
CMakeFiles/image_processor.dir/src/filter_controller.o: CMakeFiles/image_processor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/image_processor.dir/src/filter_controller.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_processor.dir/src/filter_controller.o -MF CMakeFiles/image_processor.dir/src/filter_controller.o.d -o CMakeFiles/image_processor.dir/src/filter_controller.o -c /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filter_controller.cpp

CMakeFiles/image_processor.dir/src/filter_controller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/image_processor.dir/src/filter_controller.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filter_controller.cpp > CMakeFiles/image_processor.dir/src/filter_controller.i

CMakeFiles/image_processor.dir/src/filter_controller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/image_processor.dir/src/filter_controller.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/grvtsp/Documents/Projects/image-processor/image_processor/src/filter_controller.cpp -o CMakeFiles/image_processor.dir/src/filter_controller.s

# Object files for target image_processor
image_processor_OBJECTS = \
"CMakeFiles/image_processor.dir/image_processor.o" \
"CMakeFiles/image_processor.dir/src/exception.o" \
"CMakeFiles/image_processor.dir/src/bitmap.o" \
"CMakeFiles/image_processor.dir/src/filter.o" \
"CMakeFiles/image_processor.dir/src/filters/crop.o" \
"CMakeFiles/image_processor.dir/src/filters/gray_scale.o" \
"CMakeFiles/image_processor.dir/src/filters/negative.o" \
"CMakeFiles/image_processor.dir/src/filters/matrix_apply.o" \
"CMakeFiles/image_processor.dir/src/filters/sharpening.o" \
"CMakeFiles/image_processor.dir/src/filters/edge_detection.o" \
"CMakeFiles/image_processor.dir/src/filters/gaussian_blur.o" \
"CMakeFiles/image_processor.dir/src/filters/pointilize.o" \
"CMakeFiles/image_processor.dir/src/args_data.o" \
"CMakeFiles/image_processor.dir/src/input.o" \
"CMakeFiles/image_processor.dir/src/bmp.o" \
"CMakeFiles/image_processor.dir/src/output.o" \
"CMakeFiles/image_processor.dir/src/filter_controller.o"

# External object files for target image_processor
image_processor_EXTERNAL_OBJECTS =

image_processor: CMakeFiles/image_processor.dir/image_processor.o
image_processor: CMakeFiles/image_processor.dir/src/exception.o
image_processor: CMakeFiles/image_processor.dir/src/bitmap.o
image_processor: CMakeFiles/image_processor.dir/src/filter.o
image_processor: CMakeFiles/image_processor.dir/src/filters/crop.o
image_processor: CMakeFiles/image_processor.dir/src/filters/gray_scale.o
image_processor: CMakeFiles/image_processor.dir/src/filters/negative.o
image_processor: CMakeFiles/image_processor.dir/src/filters/matrix_apply.o
image_processor: CMakeFiles/image_processor.dir/src/filters/sharpening.o
image_processor: CMakeFiles/image_processor.dir/src/filters/edge_detection.o
image_processor: CMakeFiles/image_processor.dir/src/filters/gaussian_blur.o
image_processor: CMakeFiles/image_processor.dir/src/filters/pointilize.o
image_processor: CMakeFiles/image_processor.dir/src/args_data.o
image_processor: CMakeFiles/image_processor.dir/src/input.o
image_processor: CMakeFiles/image_processor.dir/src/bmp.o
image_processor: CMakeFiles/image_processor.dir/src/output.o
image_processor: CMakeFiles/image_processor.dir/src/filter_controller.o
image_processor: CMakeFiles/image_processor.dir/build.make
image_processor: CMakeFiles/image_processor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Linking CXX executable image_processor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/image_processor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/image_processor.dir/build: image_processor
.PHONY : CMakeFiles/image_processor.dir/build

CMakeFiles/image_processor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/image_processor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/image_processor.dir/clean

CMakeFiles/image_processor.dir/depend:
	cd /home/grvtsp/Documents/Projects/image-processor/image_processor/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/grvtsp/Documents/Projects/image-processor/image_processor /home/grvtsp/Documents/Projects/image-processor/image_processor /home/grvtsp/Documents/Projects/image-processor/image_processor/build /home/grvtsp/Documents/Projects/image-processor/image_processor/build /home/grvtsp/Documents/Projects/image-processor/image_processor/build/CMakeFiles/image_processor.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/image_processor.dir/depend

