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

# Include any dependencies generated for this target.
include jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/depend.make

# Include the progress variables for this target.
include jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/progress.make

# Include the compile flags for this target's objects.
include jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/flags.make

# Object files for target Kinova.API.USBCommandLayerUbuntu
Kinova_API_USBCommandLayerUbuntu_OBJECTS =

# External object files for target Kinova.API.USBCommandLayerUbuntu
Kinova_API_USBCommandLayerUbuntu_EXTERNAL_OBJECTS =

/home/athomaz/vector_ws/devel/lib/libKinova.API.USBCommandLayerUbuntu.so: jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/build.make
/home/athomaz/vector_ws/devel/lib/libKinova.API.USBCommandLayerUbuntu.so: jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/athomaz/vector_ws/devel/lib/libKinova.API.USBCommandLayerUbuntu.so"
	cd /home/athomaz/vector_ws/build/jaco_sdk && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/link.txt --verbose=$(VERBOSE)
	cd /home/athomaz/vector_ws/build/jaco_sdk && cp /home/athomaz/vector_ws/src/jaco_sdk/lib/64bit/libKinova.API.USBCommandLayerUbuntu.so /home/athomaz/vector_ws/devel/lib/

# Rule to build all files generated by this target.
jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/build: /home/athomaz/vector_ws/devel/lib/libKinova.API.USBCommandLayerUbuntu.so
.PHONY : jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/build

jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/requires:
.PHONY : jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/requires

jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/clean:
	cd /home/athomaz/vector_ws/build/jaco_sdk && $(CMAKE_COMMAND) -P CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/cmake_clean.cmake
.PHONY : jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/clean

jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/depend:
	cd /home/athomaz/vector_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/athomaz/vector_ws/src /home/athomaz/vector_ws/src/jaco_sdk /home/athomaz/vector_ws/build /home/athomaz/vector_ws/build/jaco_sdk /home/athomaz/vector_ws/build/jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : jaco_sdk/CMakeFiles/Kinova.API.USBCommandLayerUbuntu.dir/depend

