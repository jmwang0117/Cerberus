# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /root/wheeltec_robot/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/wheeltec_robot/build

# Include any dependencies generated for this target.
include kcf_track/CMakeFiles/kcf_node.dir/depend.make

# Include the progress variables for this target.
include kcf_track/CMakeFiles/kcf_node.dir/progress.make

# Include the compile flags for this target's objects.
include kcf_track/CMakeFiles/kcf_node.dir/flags.make

kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o: kcf_track/CMakeFiles/kcf_node.dir/flags.make
kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o: /root/wheeltec_robot/src/kcf_track/src/fhog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o"
	cd /root/wheeltec_robot/build/kcf_track && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcf_node.dir/src/fhog.cpp.o -c /root/wheeltec_robot/src/kcf_track/src/fhog.cpp

kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcf_node.dir/src/fhog.cpp.i"
	cd /root/wheeltec_robot/build/kcf_track && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/wheeltec_robot/src/kcf_track/src/fhog.cpp > CMakeFiles/kcf_node.dir/src/fhog.cpp.i

kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcf_node.dir/src/fhog.cpp.s"
	cd /root/wheeltec_robot/build/kcf_track && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/wheeltec_robot/src/kcf_track/src/fhog.cpp -o CMakeFiles/kcf_node.dir/src/fhog.cpp.s

kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o.requires:

.PHONY : kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o.requires

kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o.provides: kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o.requires
	$(MAKE) -f kcf_track/CMakeFiles/kcf_node.dir/build.make kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o.provides.build
.PHONY : kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o.provides

kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o.provides.build: kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o


kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o: kcf_track/CMakeFiles/kcf_node.dir/flags.make
kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o: /root/wheeltec_robot/src/kcf_track/src/kcftracker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o"
	cd /root/wheeltec_robot/build/kcf_track && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o -c /root/wheeltec_robot/src/kcf_track/src/kcftracker.cpp

kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcf_node.dir/src/kcftracker.cpp.i"
	cd /root/wheeltec_robot/build/kcf_track && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/wheeltec_robot/src/kcf_track/src/kcftracker.cpp > CMakeFiles/kcf_node.dir/src/kcftracker.cpp.i

kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcf_node.dir/src/kcftracker.cpp.s"
	cd /root/wheeltec_robot/build/kcf_track && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/wheeltec_robot/src/kcf_track/src/kcftracker.cpp -o CMakeFiles/kcf_node.dir/src/kcftracker.cpp.s

kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o.requires:

.PHONY : kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o.requires

kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o.provides: kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o.requires
	$(MAKE) -f kcf_track/CMakeFiles/kcf_node.dir/build.make kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o.provides.build
.PHONY : kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o.provides

kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o.provides.build: kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o


kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o: kcf_track/CMakeFiles/kcf_node.dir/flags.make
kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o: /root/wheeltec_robot/src/kcf_track/src/runtracker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o"
	cd /root/wheeltec_robot/build/kcf_track && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kcf_node.dir/src/runtracker.cpp.o -c /root/wheeltec_robot/src/kcf_track/src/runtracker.cpp

kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kcf_node.dir/src/runtracker.cpp.i"
	cd /root/wheeltec_robot/build/kcf_track && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/wheeltec_robot/src/kcf_track/src/runtracker.cpp > CMakeFiles/kcf_node.dir/src/runtracker.cpp.i

kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kcf_node.dir/src/runtracker.cpp.s"
	cd /root/wheeltec_robot/build/kcf_track && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/wheeltec_robot/src/kcf_track/src/runtracker.cpp -o CMakeFiles/kcf_node.dir/src/runtracker.cpp.s

kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o.requires:

.PHONY : kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o.requires

kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o.provides: kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o.requires
	$(MAKE) -f kcf_track/CMakeFiles/kcf_node.dir/build.make kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o.provides.build
.PHONY : kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o.provides

kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o.provides.build: kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o


# Object files for target kcf_node
kcf_node_OBJECTS = \
"CMakeFiles/kcf_node.dir/src/fhog.cpp.o" \
"CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o" \
"CMakeFiles/kcf_node.dir/src/runtracker.cpp.o"

# External object files for target kcf_node
kcf_node_EXTERNAL_OBJECTS =

/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: kcf_track/CMakeFiles/kcf_node.dir/build.make
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_face.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_text.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/libcv_bridge.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/libimage_transport.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/libmessage_filters.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/libclass_loader.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/libPocoFoundation.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libdl.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/libroslib.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/librospack.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/libroscpp.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/librosconsole.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/librostime.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /opt/ros/melodic/lib/libcpp_common.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_video.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/root/wheeltec_robot/devel/lib/kcf_track/kcf_node: kcf_track/CMakeFiles/kcf_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable /root/wheeltec_robot/devel/lib/kcf_track/kcf_node"
	cd /root/wheeltec_robot/build/kcf_track && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kcf_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
kcf_track/CMakeFiles/kcf_node.dir/build: /root/wheeltec_robot/devel/lib/kcf_track/kcf_node

.PHONY : kcf_track/CMakeFiles/kcf_node.dir/build

kcf_track/CMakeFiles/kcf_node.dir/requires: kcf_track/CMakeFiles/kcf_node.dir/src/fhog.cpp.o.requires
kcf_track/CMakeFiles/kcf_node.dir/requires: kcf_track/CMakeFiles/kcf_node.dir/src/kcftracker.cpp.o.requires
kcf_track/CMakeFiles/kcf_node.dir/requires: kcf_track/CMakeFiles/kcf_node.dir/src/runtracker.cpp.o.requires

.PHONY : kcf_track/CMakeFiles/kcf_node.dir/requires

kcf_track/CMakeFiles/kcf_node.dir/clean:
	cd /root/wheeltec_robot/build/kcf_track && $(CMAKE_COMMAND) -P CMakeFiles/kcf_node.dir/cmake_clean.cmake
.PHONY : kcf_track/CMakeFiles/kcf_node.dir/clean

kcf_track/CMakeFiles/kcf_node.dir/depend:
	cd /root/wheeltec_robot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/wheeltec_robot/src /root/wheeltec_robot/src/kcf_track /root/wheeltec_robot/build /root/wheeltec_robot/build/kcf_track /root/wheeltec_robot/build/kcf_track/CMakeFiles/kcf_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : kcf_track/CMakeFiles/kcf_node.dir/depend

