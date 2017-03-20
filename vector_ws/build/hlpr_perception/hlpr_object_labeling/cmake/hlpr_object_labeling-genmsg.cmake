# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hlpr_object_labeling: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ihlpr_object_labeling:/home/athomaz/vector_ws/src/hlpr_perception/hlpr_object_labeling/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Ihlpr_feature_extraction:/home/athomaz/vector_ws/src/hlpr_perception/hlpr_feature_extraction/msg;-Ihlpr_segmentation:/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hlpr_object_labeling_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_object_labeling/msg/LabeledObjects.msg" NAME_WE)
add_custom_target(_hlpr_object_labeling_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_object_labeling" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_object_labeling/msg/LabeledObjects.msg" "std_msgs/String:hlpr_feature_extraction/PcFeatures:geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/ColorRGBA:geometry_msgs/Transform:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hlpr_object_labeling
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_object_labeling/msg/LabeledObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_feature_extraction/msg/PcFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_object_labeling
)

### Generating Services

### Generating Module File
_generate_module_cpp(hlpr_object_labeling
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_object_labeling
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hlpr_object_labeling_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hlpr_object_labeling_generate_messages hlpr_object_labeling_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_object_labeling/msg/LabeledObjects.msg" NAME_WE)
add_dependencies(hlpr_object_labeling_generate_messages_cpp _hlpr_object_labeling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_object_labeling_gencpp)
add_dependencies(hlpr_object_labeling_gencpp hlpr_object_labeling_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_object_labeling_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hlpr_object_labeling
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_object_labeling/msg/LabeledObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_feature_extraction/msg/PcFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_object_labeling
)

### Generating Services

### Generating Module File
_generate_module_eus(hlpr_object_labeling
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_object_labeling
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hlpr_object_labeling_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hlpr_object_labeling_generate_messages hlpr_object_labeling_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_object_labeling/msg/LabeledObjects.msg" NAME_WE)
add_dependencies(hlpr_object_labeling_generate_messages_eus _hlpr_object_labeling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_object_labeling_geneus)
add_dependencies(hlpr_object_labeling_geneus hlpr_object_labeling_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_object_labeling_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hlpr_object_labeling
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_object_labeling/msg/LabeledObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_feature_extraction/msg/PcFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_object_labeling
)

### Generating Services

### Generating Module File
_generate_module_lisp(hlpr_object_labeling
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_object_labeling
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hlpr_object_labeling_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hlpr_object_labeling_generate_messages hlpr_object_labeling_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_object_labeling/msg/LabeledObjects.msg" NAME_WE)
add_dependencies(hlpr_object_labeling_generate_messages_lisp _hlpr_object_labeling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_object_labeling_genlisp)
add_dependencies(hlpr_object_labeling_genlisp hlpr_object_labeling_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_object_labeling_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hlpr_object_labeling
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_object_labeling/msg/LabeledObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_feature_extraction/msg/PcFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_object_labeling
)

### Generating Services

### Generating Module File
_generate_module_py(hlpr_object_labeling
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_object_labeling
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hlpr_object_labeling_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hlpr_object_labeling_generate_messages hlpr_object_labeling_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_object_labeling/msg/LabeledObjects.msg" NAME_WE)
add_dependencies(hlpr_object_labeling_generate_messages_py _hlpr_object_labeling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_object_labeling_genpy)
add_dependencies(hlpr_object_labeling_genpy hlpr_object_labeling_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_object_labeling_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_object_labeling)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_object_labeling
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_object_labeling_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(hlpr_object_labeling_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(hlpr_object_labeling_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(hlpr_object_labeling_generate_messages_cpp hlpr_feature_extraction_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_object_labeling)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_object_labeling
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_object_labeling_generate_messages_eus std_msgs_generate_messages_eus)
add_dependencies(hlpr_object_labeling_generate_messages_eus geometry_msgs_generate_messages_eus)
add_dependencies(hlpr_object_labeling_generate_messages_eus sensor_msgs_generate_messages_eus)
add_dependencies(hlpr_object_labeling_generate_messages_eus hlpr_feature_extraction_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_object_labeling)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_object_labeling
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_object_labeling_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(hlpr_object_labeling_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(hlpr_object_labeling_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(hlpr_object_labeling_generate_messages_lisp hlpr_feature_extraction_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_object_labeling)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_object_labeling\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_object_labeling
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_object_labeling_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(hlpr_object_labeling_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(hlpr_object_labeling_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(hlpr_object_labeling_generate_messages_py hlpr_feature_extraction_generate_messages_py)
