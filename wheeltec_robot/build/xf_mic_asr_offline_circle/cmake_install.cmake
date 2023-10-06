# Install script for directory: /root/wheeltec_robot/src/xf_mic_asr_offline_circle

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xf_mic_asr_offline_circle/msg" TYPE FILE FILES "/root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg/Pcm_Msg.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xf_mic_asr_offline_circle/msg" TYPE FILE FILES "/root/wheeltec_robot/src/xf_mic_asr_offline_circle/msg/position.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xf_mic_asr_offline_circle/srv" TYPE FILE FILES
    "/root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Get_Offline_Result_srv.srv"
    "/root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Set_Major_Mic_srv.srv"
    "/root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Get_Major_Mic_srv.srv"
    "/root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Start_Record_srv.srv"
    "/root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Set_Awake_Word_srv.srv"
    "/root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Set_Led_On_srv.srv"
    "/root/wheeltec_robot/src/xf_mic_asr_offline_circle/srv/Get_Awake_Angle_srv.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xf_mic_asr_offline_circle/cmake" TYPE FILE FILES "/root/wheeltec_robot/build/xf_mic_asr_offline_circle/catkin_generated/installspace/xf_mic_asr_offline_circle-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/root/wheeltec_robot/devel/include/xf_mic_asr_offline_circle")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/root/wheeltec_robot/devel/share/roseus/ros/xf_mic_asr_offline_circle")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/root/wheeltec_robot/devel/share/common-lisp/ros/xf_mic_asr_offline_circle")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/root/wheeltec_robot/devel/share/gennodejs/ros/xf_mic_asr_offline_circle")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/root/wheeltec_robot/devel/lib/python2.7/dist-packages/xf_mic_asr_offline_circle")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/root/wheeltec_robot/devel/lib/python2.7/dist-packages/xf_mic_asr_offline_circle")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/wheeltec_robot/build/xf_mic_asr_offline_circle/catkin_generated/installspace/xf_mic_asr_offline_circle.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xf_mic_asr_offline_circle/cmake" TYPE FILE FILES "/root/wheeltec_robot/build/xf_mic_asr_offline_circle/catkin_generated/installspace/xf_mic_asr_offline_circle-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xf_mic_asr_offline_circle/cmake" TYPE FILE FILES
    "/root/wheeltec_robot/build/xf_mic_asr_offline_circle/catkin_generated/installspace/xf_mic_asr_offline_circleConfig.cmake"
    "/root/wheeltec_robot/build/xf_mic_asr_offline_circle/catkin_generated/installspace/xf_mic_asr_offline_circleConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xf_mic_asr_offline_circle" TYPE FILE FILES "/root/wheeltec_robot/src/xf_mic_asr_offline_circle/package.xml")
endif()
