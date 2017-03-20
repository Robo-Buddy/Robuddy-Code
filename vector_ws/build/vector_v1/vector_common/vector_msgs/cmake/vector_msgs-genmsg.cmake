# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vector_msgs: 14 messages, 0 services")

set(MSG_I_FLAGS "-Ivector_msgs:/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vector_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Battery.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Battery.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoCartesianVelocityCmd.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoCartesianVelocityCmd.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Propulsion.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Propulsion.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Dynamics.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Dynamics.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperStat.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperStat.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/LinearActuatorCmd.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/LinearActuatorCmd.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoStatus.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/CtlParams.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/CtlParams.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoJointCmd.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoJointCmd.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Status.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/ConfigCmd.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/ConfigCmd.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Faultlog.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Faultlog.msg" ""
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperCmd.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperCmd.msg" ""
)

get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Configuration.msg" NAME_WE)
add_custom_target(_vector_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msgs" "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Configuration.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoCartesianVelocityCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperStat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/LinearActuatorCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Propulsion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Faultlog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/CtlParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoJointCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/ConfigCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Dynamics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)
_generate_msg_cpp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Configuration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(vector_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vector_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vector_msgs_generate_messages vector_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoCartesianVelocityCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Propulsion.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Dynamics.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperStat.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/LinearActuatorCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoStatus.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/CtlParams.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoJointCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Status.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/ConfigCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Faultlog.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Configuration.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_cpp _vector_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vector_msgs_gencpp)
add_dependencies(vector_msgs_gencpp vector_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vector_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoCartesianVelocityCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperStat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/LinearActuatorCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Propulsion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Faultlog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/CtlParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoJointCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/ConfigCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Dynamics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)
_generate_msg_eus(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Configuration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(vector_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vector_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vector_msgs_generate_messages vector_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoCartesianVelocityCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Propulsion.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Dynamics.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperStat.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/LinearActuatorCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoStatus.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/CtlParams.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoJointCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Status.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/ConfigCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Faultlog.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Configuration.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_eus _vector_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vector_msgs_geneus)
add_dependencies(vector_msgs_geneus vector_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vector_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoCartesianVelocityCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperStat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/LinearActuatorCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Propulsion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Faultlog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/CtlParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoJointCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/ConfigCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Dynamics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)
_generate_msg_lisp(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Configuration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(vector_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vector_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vector_msgs_generate_messages vector_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoCartesianVelocityCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Propulsion.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Dynamics.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperStat.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/LinearActuatorCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoStatus.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/CtlParams.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoJointCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Status.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/ConfigCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Faultlog.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Configuration.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_lisp _vector_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vector_msgs_genlisp)
add_dependencies(vector_msgs_genlisp vector_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vector_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoCartesianVelocityCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperStat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/LinearActuatorCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Propulsion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Faultlog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/CtlParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoJointCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/ConfigCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Dynamics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)
_generate_msg_py(vector_msgs
  "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Configuration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(vector_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vector_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vector_msgs_generate_messages vector_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoCartesianVelocityCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Propulsion.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Dynamics.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperStat.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/LinearActuatorCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoStatus.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/CtlParams.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoJointCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Status.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/ConfigCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Faultlog.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperCmd.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Configuration.msg" NAME_WE)
add_dependencies(vector_msgs_generate_messages_py _vector_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vector_msgs_genpy)
add_dependencies(vector_msgs_genpy vector_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vector_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(vector_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vector_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(vector_msgs_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(vector_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(vector_msgs_generate_messages_py std_msgs_generate_messages_py)
