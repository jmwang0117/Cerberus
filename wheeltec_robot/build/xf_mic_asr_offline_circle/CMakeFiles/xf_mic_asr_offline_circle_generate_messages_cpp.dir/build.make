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


# Produce verbose output by default.
VERBOSE = 1

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

# Utility rule file for xf_mic_asr_offline_circle_generate_messages_cpp.

# Include the progress variables for this target.
include xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp.dir/progress.make

xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/position.h
xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Pcm_Msg.h
xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Offline_Result_srv.h
xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Major_Mic_srv.h
xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Awake_Angle_srv.h
xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Awake_Word_srv.h
xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Led_On_srv.h
xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Major_Mic_srv.h
xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Start_Record_srv.h


/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/position.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/position.h: /root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg/position.msg
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/position.h: /opt/ros/melodic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from xf_mic_asr_offline_circle/position.msg"
	cd /root/wheeltec_robot/src/xf_mic_asr_offline_circle && /root/wheeltec_robot/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg/position.msg -Ixf_mic_asr_offline_circle:/root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p xf_mic_asr_offline_circle -o /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle -e /opt/ros/melodic/share/gencpp/cmake/..

/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Pcm_Msg.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Pcm_Msg.h: /root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg/Pcm_Msg.msg
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Pcm_Msg.h: /opt/ros/melodic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from xf_mic_asr_offline_circle/Pcm_Msg.msg"
	cd /root/wheeltec_robot/src/xf_mic_asr_offline_circle && /root/wheeltec_robot/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg/Pcm_Msg.msg -Ixf_mic_asr_offline_circle:/root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p xf_mic_asr_offline_circle -o /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle -e /opt/ros/melodic/share/gencpp/cmake/..

/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Offline_Result_srv.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Offline_Result_srv.h: /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Get_Offline_Result_srv.srv
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Offline_Result_srv.h: /opt/ros/melodic/share/gencpp/msg.h.template
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Offline_Result_srv.h: /opt/ros/melodic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from xf_mic_asr_offline_circle/Get_Offline_Result_srv.srv"
	cd /root/wheeltec_robot/src/xf_mic_asr_offline_circle && /root/wheeltec_robot/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Get_Offline_Result_srv.srv -Ixf_mic_asr_offline_circle:/root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p xf_mic_asr_offline_circle -o /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle -e /opt/ros/melodic/share/gencpp/cmake/..

/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Major_Mic_srv.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Major_Mic_srv.h: /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Get_Major_Mic_srv.srv
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Major_Mic_srv.h: /opt/ros/melodic/share/gencpp/msg.h.template
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Major_Mic_srv.h: /opt/ros/melodic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating C++ code from xf_mic_asr_offline_circle/Get_Major_Mic_srv.srv"
	cd /root/wheeltec_robot/src/xf_mic_asr_offline_circle && /root/wheeltec_robot/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Get_Major_Mic_srv.srv -Ixf_mic_asr_offline_circle:/root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p xf_mic_asr_offline_circle -o /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle -e /opt/ros/melodic/share/gencpp/cmake/..

/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Awake_Angle_srv.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Awake_Angle_srv.h: /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Get_Awake_Angle_srv.srv
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Awake_Angle_srv.h: /opt/ros/melodic/share/gencpp/msg.h.template
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Awake_Angle_srv.h: /opt/ros/melodic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating C++ code from xf_mic_asr_offline_circle/Get_Awake_Angle_srv.srv"
	cd /root/wheeltec_robot/src/xf_mic_asr_offline_circle && /root/wheeltec_robot/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Get_Awake_Angle_srv.srv -Ixf_mic_asr_offline_circle:/root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p xf_mic_asr_offline_circle -o /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle -e /opt/ros/melodic/share/gencpp/cmake/..

/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Awake_Word_srv.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Awake_Word_srv.h: /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Set_Awake_Word_srv.srv
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Awake_Word_srv.h: /opt/ros/melodic/share/gencpp/msg.h.template
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Awake_Word_srv.h: /opt/ros/melodic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating C++ code from xf_mic_asr_offline_circle/Set_Awake_Word_srv.srv"
	cd /root/wheeltec_robot/src/xf_mic_asr_offline_circle && /root/wheeltec_robot/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Set_Awake_Word_srv.srv -Ixf_mic_asr_offline_circle:/root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p xf_mic_asr_offline_circle -o /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle -e /opt/ros/melodic/share/gencpp/cmake/..

/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Led_On_srv.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Led_On_srv.h: /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Set_Led_On_srv.srv
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Led_On_srv.h: /opt/ros/melodic/share/gencpp/msg.h.template
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Led_On_srv.h: /opt/ros/melodic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating C++ code from xf_mic_asr_offline_circle/Set_Led_On_srv.srv"
	cd /root/wheeltec_robot/src/xf_mic_asr_offline_circle && /root/wheeltec_robot/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Set_Led_On_srv.srv -Ixf_mic_asr_offline_circle:/root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p xf_mic_asr_offline_circle -o /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle -e /opt/ros/melodic/share/gencpp/cmake/..

/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Major_Mic_srv.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Major_Mic_srv.h: /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Set_Major_Mic_srv.srv
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Major_Mic_srv.h: /opt/ros/melodic/share/gencpp/msg.h.template
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Major_Mic_srv.h: /opt/ros/melodic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Generating C++ code from xf_mic_asr_offline_circle/Set_Major_Mic_srv.srv"
	cd /root/wheeltec_robot/src/xf_mic_asr_offline_circle && /root/wheeltec_robot/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Set_Major_Mic_srv.srv -Ixf_mic_asr_offline_circle:/root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p xf_mic_asr_offline_circle -o /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle -e /opt/ros/melodic/share/gencpp/cmake/..

/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Start_Record_srv.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Start_Record_srv.h: /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Start_Record_srv.srv
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Start_Record_srv.h: /opt/ros/melodic/share/gencpp/msg.h.template
/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Start_Record_srv.h: /opt/ros/melodic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/wheeltec_robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Generating C++ code from xf_mic_asr_offline_circle/Start_Record_srv.srv"
	cd /root/wheeltec_robot/src/xf_mic_asr_offline_circle && /root/wheeltec_robot/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Start_Record_srv.srv -Ixf_mic_asr_offline_circle:/root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p xf_mic_asr_offline_circle -o /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle -e /opt/ros/melodic/share/gencpp/cmake/..

xf_mic_asr_offline_circle_generate_messages_cpp: xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp
xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/position.h
xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Pcm_Msg.h
xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Offline_Result_srv.h
xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Major_Mic_srv.h
xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Get_Awake_Angle_srv.h
xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Awake_Word_srv.h
xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Led_On_srv.h
xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Set_Major_Mic_srv.h
xf_mic_asr_offline_circle_generate_messages_cpp: /root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle/Start_Record_srv.h
xf_mic_asr_offline_circle_generate_messages_cpp: xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp.dir/build.make

.PHONY : xf_mic_asr_offline_circle_generate_messages_cpp

# Rule to build all files generated by this target.
xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp.dir/build: xf_mic_asr_offline_circle_generate_messages_cpp

.PHONY : xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp.dir/build

xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp.dir/clean:
	cd /root/wheeltec_robot/build/xf_mic_asr_offline_circle && $(CMAKE_COMMAND) -P CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp.dir/clean

xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp.dir/depend:
	cd /root/wheeltec_robot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/wheeltec_robot/src /root/wheeltec_robot/src/xf_mic_asr_offline_circle /root/wheeltec_robot/build /root/wheeltec_robot/build/xf_mic_asr_offline_circle /root/wheeltec_robot/build/xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : xf_mic_asr_offline_circle/CMakeFiles/xf_mic_asr_offline_circle_generate_messages_cpp.dir/depend

