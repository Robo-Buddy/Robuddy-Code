# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/athomaz/vector_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/athomaz/vector_ws/build

# Utility rule file for clean_test_results_vector_viz.

# Include the progress variables for this target.
include vector_v1/vector_desktop/vector_viz/CMakeFiles/clean_test_results_vector_viz.dir/progress.make

vector_v1/vector_desktop/vector_viz/CMakeFiles/clean_test_results_vector_viz:
	cd /home/athomaz/vector_ws/build/vector_v1/vector_desktop/vector_viz && /usr/bin/python /opt/ros/indigo/share/catkin/cmake/test/remove_test_results.py /home/athomaz/vector_ws/build/test_results/vector_viz

clean_test_results_vector_viz: vector_v1/vector_desktop/vector_viz/CMakeFiles/clean_test_results_vector_viz
clean_test_results_vector_viz: vector_v1/vector_desktop/vector_viz/CMakeFiles/clean_test_results_vector_viz.dir/build.make
.PHONY : clean_test_results_vector_viz

# Rule to build all files generated by this target.
vector_v1/vector_desktop/vector_viz/CMakeFiles/clean_test_results_vector_viz.dir/build: clean_test_results_vector_viz
.PHONY : vector_v1/vector_desktop/vector_viz/CMakeFiles/clean_test_results_vector_viz.dir/build

vector_v1/vector_desktop/vector_viz/CMakeFiles/clean_test_results_vector_viz.dir/clean:
	cd /home/athomaz/vector_ws/build/vector_v1/vector_desktop/vector_viz && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_vector_viz.dir/cmake_clean.cmake
.PHONY : vector_v1/vector_desktop/vector_viz/CMakeFiles/clean_test_results_vector_viz.dir/clean

vector_v1/vector_desktop/vector_viz/CMakeFiles/clean_test_results_vector_viz.dir/depend:
	cd /home/athomaz/vector_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/athomaz/vector_ws/src /home/athomaz/vector_ws/src/vector_v1/vector_desktop/vector_viz /home/athomaz/vector_ws/build /home/athomaz/vector_ws/build/vector_v1/vector_desktop/vector_viz /home/athomaz/vector_ws/build/vector_v1/vector_desktop/vector_viz/CMakeFiles/clean_test_results_vector_viz.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vector_v1/vector_desktop/vector_viz/CMakeFiles/clean_test_results_vector_viz.dir/depend

