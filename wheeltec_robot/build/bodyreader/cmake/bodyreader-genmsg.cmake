# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bodyreader: 9 messages, 0 services")

set(MSG_I_FLAGS "-Ibodyreader:/root/wheeltec_robot/src/bodyreader/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bodyreader_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg" NAME_WE)
add_custom_target(_bodyreader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bodyreader" "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg" ""
)

get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/joint.msg" NAME_WE)
add_custom_target(_bodyreader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bodyreader" "/root/wheeltec_robot/src/bodyreader/msg/joint.msg" "bodyreader/vector2f:bodyreader/vector3f"
)

get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/body.msg" NAME_WE)
add_custom_target(_bodyreader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bodyreader" "/root/wheeltec_robot/src/bodyreader/msg/body.msg" "bodyreader/vector2f:bodyreader/vector3f:bodyreader/joint"
)

get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg" NAME_WE)
add_custom_target(_bodyreader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bodyreader" "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg" "bodyreader/vector2f:bodyreader/vector3f:bodyreader/joint:bodyreader/body"
)

get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg" NAME_WE)
add_custom_target(_bodyreader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bodyreader" "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg" ""
)

get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg" NAME_WE)
add_custom_target(_bodyreader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bodyreader" "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg" ""
)

get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg" NAME_WE)
add_custom_target(_bodyreader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bodyreader" "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg" ""
)

get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg" NAME_WE)
add_custom_target(_bodyreader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bodyreader" "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg" ""
)

get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg" NAME_WE)
add_custom_target(_bodyreader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bodyreader" "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader
)
_generate_msg_cpp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/joint.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader
)
_generate_msg_cpp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/body.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg;/root/wheeltec_robot/src/bodyreader/msg/joint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader
)
_generate_msg_cpp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg;/root/wheeltec_robot/src/bodyreader/msg/joint.msg;/root/wheeltec_robot/src/bodyreader/msg/body.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader
)
_generate_msg_cpp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader
)
_generate_msg_cpp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader
)
_generate_msg_cpp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader
)
_generate_msg_cpp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader
)
_generate_msg_cpp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader
)

### Generating Services

### Generating Module File
_generate_module_cpp(bodyreader
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bodyreader_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bodyreader_generate_messages bodyreader_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_cpp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/joint.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_cpp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/body.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_cpp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_cpp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_cpp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_cpp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_cpp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_cpp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_cpp _bodyreader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bodyreader_gencpp)
add_dependencies(bodyreader_gencpp bodyreader_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bodyreader_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader
)
_generate_msg_eus(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/joint.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader
)
_generate_msg_eus(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/body.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg;/root/wheeltec_robot/src/bodyreader/msg/joint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader
)
_generate_msg_eus(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg;/root/wheeltec_robot/src/bodyreader/msg/joint.msg;/root/wheeltec_robot/src/bodyreader/msg/body.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader
)
_generate_msg_eus(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader
)
_generate_msg_eus(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader
)
_generate_msg_eus(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader
)
_generate_msg_eus(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader
)
_generate_msg_eus(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader
)

### Generating Services

### Generating Module File
_generate_module_eus(bodyreader
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bodyreader_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bodyreader_generate_messages bodyreader_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_eus _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/joint.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_eus _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/body.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_eus _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_eus _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_eus _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_eus _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_eus _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_eus _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_eus _bodyreader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bodyreader_geneus)
add_dependencies(bodyreader_geneus bodyreader_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bodyreader_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader
)
_generate_msg_lisp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/joint.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader
)
_generate_msg_lisp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/body.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg;/root/wheeltec_robot/src/bodyreader/msg/joint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader
)
_generate_msg_lisp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg;/root/wheeltec_robot/src/bodyreader/msg/joint.msg;/root/wheeltec_robot/src/bodyreader/msg/body.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader
)
_generate_msg_lisp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader
)
_generate_msg_lisp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader
)
_generate_msg_lisp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader
)
_generate_msg_lisp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader
)
_generate_msg_lisp(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader
)

### Generating Services

### Generating Module File
_generate_module_lisp(bodyreader
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bodyreader_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bodyreader_generate_messages bodyreader_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_lisp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/joint.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_lisp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/body.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_lisp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_lisp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_lisp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_lisp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_lisp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_lisp _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_lisp _bodyreader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bodyreader_genlisp)
add_dependencies(bodyreader_genlisp bodyreader_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bodyreader_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader
)
_generate_msg_nodejs(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/joint.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader
)
_generate_msg_nodejs(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/body.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg;/root/wheeltec_robot/src/bodyreader/msg/joint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader
)
_generate_msg_nodejs(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg;/root/wheeltec_robot/src/bodyreader/msg/joint.msg;/root/wheeltec_robot/src/bodyreader/msg/body.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader
)
_generate_msg_nodejs(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader
)
_generate_msg_nodejs(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader
)
_generate_msg_nodejs(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader
)
_generate_msg_nodejs(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader
)
_generate_msg_nodejs(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader
)

### Generating Services

### Generating Module File
_generate_module_nodejs(bodyreader
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bodyreader_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bodyreader_generate_messages bodyreader_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_nodejs _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/joint.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_nodejs _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/body.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_nodejs _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_nodejs _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_nodejs _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_nodejs _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_nodejs _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_nodejs _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_nodejs _bodyreader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bodyreader_gennodejs)
add_dependencies(bodyreader_gennodejs bodyreader_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bodyreader_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader
)
_generate_msg_py(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/joint.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader
)
_generate_msg_py(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/body.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg;/root/wheeltec_robot/src/bodyreader/msg/joint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader
)
_generate_msg_py(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg"
  "${MSG_I_FLAGS}"
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg;/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg;/root/wheeltec_robot/src/bodyreader/msg/joint.msg;/root/wheeltec_robot/src/bodyreader/msg/body.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader
)
_generate_msg_py(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader
)
_generate_msg_py(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader
)
_generate_msg_py(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader
)
_generate_msg_py(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader
)
_generate_msg_py(bodyreader
  "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader
)

### Generating Services

### Generating Module File
_generate_module_py(bodyreader
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bodyreader_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bodyreader_generate_messages bodyreader_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/locked_char_rgb.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_py _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/joint.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_py _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/body.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_py _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyList.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_py _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/maskdata.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_py _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/lockedmask_w_h.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_py _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector2f.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_py _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/bodyposture.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_py _bodyreader_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/wheeltec_robot/src/bodyreader/msg/vector3f.msg" NAME_WE)
add_dependencies(bodyreader_generate_messages_py _bodyreader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bodyreader_genpy)
add_dependencies(bodyreader_genpy bodyreader_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bodyreader_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bodyreader
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(bodyreader_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bodyreader
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(bodyreader_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bodyreader
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(bodyreader_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bodyreader
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(bodyreader_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bodyreader
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(bodyreader_generate_messages_py std_msgs_generate_messages_py)
endif()
