# Install script for directory: /root/wheeltec_robot/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/wheeltec_robot/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/wheeltec_robot/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/wheeltec_robot/install" TYPE PROGRAM FILES "/root/wheeltec_robot/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/wheeltec_robot/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/wheeltec_robot/install" TYPE PROGRAM FILES "/root/wheeltec_robot/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/wheeltec_robot/install/setup.bash;/root/wheeltec_robot/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/wheeltec_robot/install" TYPE FILE FILES
    "/root/wheeltec_robot/build/catkin_generated/installspace/setup.bash"
    "/root/wheeltec_robot/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/wheeltec_robot/install/setup.sh;/root/wheeltec_robot/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/wheeltec_robot/install" TYPE FILE FILES
    "/root/wheeltec_robot/build/catkin_generated/installspace/setup.sh"
    "/root/wheeltec_robot/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/wheeltec_robot/install/setup.zsh;/root/wheeltec_robot/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/wheeltec_robot/install" TYPE FILE FILES
    "/root/wheeltec_robot/build/catkin_generated/installspace/setup.zsh"
    "/root/wheeltec_robot/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/wheeltec_robot/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/wheeltec_robot/install" TYPE FILE FILES "/root/wheeltec_robot/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/wheeltec_robot/build/gtest/cmake_install.cmake")
  include("/root/wheeltec_robot/build/lsx10/lslidar/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/navigation/cmake_install.cmake")
  include("/root/wheeltec_robot/build/realsense-ros-development/realsense2_description/cmake_install.cmake")
  include("/root/wheeltec_robot/build/lsx10/lslidar_msgs/cmake_install.cmake")
  include("/root/wheeltec_robot/build/unique_identifier/unique_identifier/cmake_install.cmake")
  include("/root/wheeltec_robot/build/unique_identifier/uuid_msgs/cmake_install.cmake")
  include("/root/wheeltec_robot/build/world_canvas_msgs/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/map_server/cmake_install.cmake")
  include("/root/wheeltec_robot/build/slam_karto/sparse_bundle_adjustment-melodic-devel/cmake_install.cmake")
  include("/root/wheeltec_robot/build/slam_karto/open_karto-melodic-devel/cmake_install.cmake")
  include("/root/wheeltec_robot/build/realsense-ros-development/ddynamic_reconfigure-kinetic-devel/cmake_install.cmake")
  include("/root/wheeltec_robot/build/ros_astra_camera/cmake_install.cmake")
  include("/root/wheeltec_robot/build/depthimage_to_laserscan-melodic-devel/cmake_install.cmake")
  include("/root/wheeltec_robot/build/kcf_track/cmake_install.cmake")
  include("/root/wheeltec_robot/build/ros_tensorflow/cmake_install.cmake")
  include("/root/wheeltec_robot/build/rplidar_ros/cmake_install.cmake")
  include("/root/wheeltec_robot/build/simple_follower/cmake_install.cmake")
  include("/root/wheeltec_robot/build/fdilink_ahrs/cmake_install.cmake")
  include("/root/wheeltec_robot/build/ldlidar_14/cmake_install.cmake")
  include("/root/wheeltec_robot/build/ldlidar_19/cmake_install.cmake")
  include("/root/wheeltec_robot/build/lsx10/lslidar_driver/cmake_install.cmake")
  include("/root/wheeltec_robot/build/realsense-ros-development/realsense2_camera/cmake_install.cmake")
  include("/root/wheeltec_robot/build/robot_pose_ekf/cmake_install.cmake")
  include("/root/wheeltec_robot/build/rrt_exploration/cmake_install.cmake")
  include("/root/wheeltec_robot/build/slam_karto/slam_karto-melodic-devel/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/amcl/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/fake_localization/cmake_install.cmake")
  include("/root/wheeltec_robot/build/orb_slam_2_ros-master/cmake_install.cmake")
  include("/root/wheeltec_robot/build/tts_make/cmake_install.cmake")
  include("/root/wheeltec_robot/build/turn_on_wheeltec_robot/cmake_install.cmake")
  include("/root/wheeltec_robot/build/unique_identifier/unique_id/cmake_install.cmake")
  include("/root/wheeltec_robot/build/usb_cam/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/voxel_grid/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/costmap_2d/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/nav_core/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/base_local_planner/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/carrot_planner/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/clear_costmap_recovery/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/dwa_local_planner/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/move_slow_and_clear/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/navfn/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/global_planner/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/rotate_recovery/cmake_install.cmake")
  include("/root/wheeltec_robot/build/navigation-melodic/move_base/cmake_install.cmake")
  include("/root/wheeltec_robot/build/teb_local_planner-melodic-devel/cmake_install.cmake")
  include("/root/wheeltec_robot/build/web_video_server/cmake_install.cmake")
  include("/root/wheeltec_robot/build/wheeltec_joy_control/cmake_install.cmake")
  include("/root/wheeltec_robot/build/wheeltec_multi/cmake_install.cmake")
  include("/root/wheeltec_robot/build/wheeltec_robot_rc/cmake_install.cmake")
  include("/root/wheeltec_robot/build/wheeltec_yolo_action/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/root/wheeltec_robot/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
