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
CMAKE_SOURCE_DIR = /home/kristopher/vector_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kristopher/vector_ws/build

# Include any dependencies generated for this target.
include vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/depend.make

# Include the progress variables for this target.
include vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/progress.make

# Include the compile flags for this target's objects.
include vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/flags.make

vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o: vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/flags.make
vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o: /home/kristopher/vector_ws/src/vector_v1/vector_common/vector_navigation/vector_assisted_teleop/src/vector_assisted_teleop.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kristopher/vector_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o"
	cd /home/kristopher/vector_ws/build/vector_v1/vector_common/vector_navigation/vector_assisted_teleop && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o -c /home/kristopher/vector_ws/src/vector_v1/vector_common/vector_navigation/vector_assisted_teleop/src/vector_assisted_teleop.cpp

vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.i"
	cd /home/kristopher/vector_ws/build/vector_v1/vector_common/vector_navigation/vector_assisted_teleop && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kristopher/vector_ws/src/vector_v1/vector_common/vector_navigation/vector_assisted_teleop/src/vector_assisted_teleop.cpp > CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.i

vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.s"
	cd /home/kristopher/vector_ws/build/vector_v1/vector_common/vector_navigation/vector_assisted_teleop && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kristopher/vector_ws/src/vector_v1/vector_common/vector_navigation/vector_assisted_teleop/src/vector_assisted_teleop.cpp -o CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.s

vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o.requires:
.PHONY : vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o.requires

vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o.provides: vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o.requires
	$(MAKE) -f vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/build.make vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o.provides.build
.PHONY : vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o.provides

vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o.provides.build: vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o

# Object files for target vector_assisted_teleop
vector_assisted_teleop_OBJECTS = \
"CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o"

# External object files for target vector_assisted_teleop
vector_assisted_teleop_EXTERNAL_OBJECTS =

/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/build.make
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libbase_local_planner.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libtrajectory_planner_ros.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libcostmap_2d.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/liblayers.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/liblaser_geometry.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libpcl_ros_filters.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libpcl_ros_io.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libpcl_ros_tf.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_common.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_octree.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_io.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_kdtree.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_search.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_sample_consensus.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_filters.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_features.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_keypoints.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_segmentation.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_visualization.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_outofcore.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_registration.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_recognition.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_surface.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_people.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_tracking.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libpcl_apps.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libOpenNI.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libvtkCommon.so.5.8.0
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libvtkRendering.so.5.8.0
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libvtkHybrid.so.5.8.0
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libvtkCharts.so.5.8.0
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libnodeletlib.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libbondcpp.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/librosbag.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/librosbag_storage.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libroslz4.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/liblz4.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libtopic_tools.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libtf.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libtf2_ros.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libactionlib.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libmessage_filters.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libtf2.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libvoxel_grid.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libmean.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libparams.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libincrement.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libmedian.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libtransfer_function.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libroscpp.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libclass_loader.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/libPocoFoundation.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libdl.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/librosconsole.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/liblog4cxx.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/librostime.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libcpp_common.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: /opt/ros/indigo/lib/libroslib.so
/home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop: vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop"
	cd /home/kristopher/vector_ws/build/vector_v1/vector_common/vector_navigation/vector_assisted_teleop && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vector_assisted_teleop.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/build: /home/kristopher/vector_ws/devel/lib/vector_assisted_teleop/vector_assisted_teleop
.PHONY : vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/build

vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/requires: vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/src/vector_assisted_teleop.cpp.o.requires
.PHONY : vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/requires

vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/clean:
	cd /home/kristopher/vector_ws/build/vector_v1/vector_common/vector_navigation/vector_assisted_teleop && $(CMAKE_COMMAND) -P CMakeFiles/vector_assisted_teleop.dir/cmake_clean.cmake
.PHONY : vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/clean

vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/depend:
	cd /home/kristopher/vector_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kristopher/vector_ws/src /home/kristopher/vector_ws/src/vector_v1/vector_common/vector_navigation/vector_assisted_teleop /home/kristopher/vector_ws/build /home/kristopher/vector_ws/build/vector_v1/vector_common/vector_navigation/vector_assisted_teleop /home/kristopher/vector_ws/build/vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vector_v1/vector_common/vector_navigation/vector_assisted_teleop/CMakeFiles/vector_assisted_teleop.dir/depend
