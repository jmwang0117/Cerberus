execute_process(COMMAND "/root/wheeltec_robot/build/navigation-melodic/base_local_planner/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/root/wheeltec_robot/build/navigation-melodic/base_local_planner/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
