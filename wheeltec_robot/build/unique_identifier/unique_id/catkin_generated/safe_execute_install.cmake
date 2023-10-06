execute_process(COMMAND "/root/wheeltec_robot/build/unique_identifier/unique_id/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/root/wheeltec_robot/build/unique_identifier/unique_id/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
