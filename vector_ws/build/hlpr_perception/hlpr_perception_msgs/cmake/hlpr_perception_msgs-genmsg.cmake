# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hlpr_perception_msgs: 13 messages, 0 services")

set(MSG_I_FLAGS "-Ihlpr_perception_msgs:/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hlpr_perception_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg" ""
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg" "std_msgs/Float32MultiArray:std_msgs/MultiArrayDimension:sensor_msgs/PointCloud2:std_msgs/Header:sensor_msgs/PointField:std_msgs/MultiArrayLayout"
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg" "std_msgs/Int32"
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg" "hlpr_perception_msgs/BasicFeatures:geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/ColorRGBA:hlpr_perception_msgs/OrientedBoundingBox:std_msgs/Header"
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/NonPlanarSegClusters.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/NonPlanarSegClusters.msg" "hlpr_perception_msgs/SegClusters:hlpr_perception_msgs/SegPlanes:std_msgs/Float32MultiArray:std_msgs/Int32:std_msgs/MultiArrayLayout:sensor_msgs/PointCloud2:std_msgs/Header:sensor_msgs/PointField:hlpr_perception_msgs/ClusterIndex:std_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg" ""
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg" ""
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg" ""
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ExtractedFeaturesArray.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ExtractedFeaturesArray.msg" "hlpr_perception_msgs/PlaneFeatures:hlpr_perception_msgs/BasicFeatures:hlpr_perception_msgs/ColorHist:hlpr_perception_msgs/ObjectFeatures:hlpr_perception_msgs/ShapeHist:hlpr_perception_msgs/ViewpointHist:geometry_msgs/Vector3:hlpr_perception_msgs/OtherFeatures:geometry_msgs/Quaternion:std_msgs/ColorRGBA:geometry_msgs/Transform:hlpr_perception_msgs/OrientedBoundingBox:std_msgs/Header"
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg" "sensor_msgs/PointField:std_msgs/Int32:std_msgs/MultiArrayLayout:sensor_msgs/PointCloud2:std_msgs/Header:std_msgs/Float32MultiArray:hlpr_perception_msgs/ClusterIndex:std_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg" "geometry_msgs/Vector3:std_msgs/ColorRGBA"
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg" NAME_WE)
add_custom_target(_hlpr_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_perception_msgs" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg" "hlpr_perception_msgs/BasicFeatures:hlpr_perception_msgs/ColorHist:hlpr_perception_msgs/ShapeHist:hlpr_perception_msgs/ViewpointHist:geometry_msgs/Vector3:hlpr_perception_msgs/OtherFeatures:geometry_msgs/Quaternion:std_msgs/ColorRGBA:geometry_msgs/Transform:hlpr_perception_msgs/OrientedBoundingBox:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/NonPlanarSegClusters.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ExtractedFeaturesArray.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_cpp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(hlpr_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hlpr_perception_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hlpr_perception_msgs_generate_messages hlpr_perception_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/NonPlanarSegClusters.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ExtractedFeaturesArray.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_perception_msgs_gencpp)
add_dependencies(hlpr_perception_msgs_gencpp hlpr_perception_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_perception_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/NonPlanarSegClusters.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ExtractedFeaturesArray.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_eus(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(hlpr_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hlpr_perception_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hlpr_perception_msgs_generate_messages hlpr_perception_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/NonPlanarSegClusters.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ExtractedFeaturesArray.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_eus _hlpr_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_perception_msgs_geneus)
add_dependencies(hlpr_perception_msgs_geneus hlpr_perception_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_perception_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/NonPlanarSegClusters.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ExtractedFeaturesArray.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_lisp(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(hlpr_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hlpr_perception_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hlpr_perception_msgs_generate_messages hlpr_perception_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/NonPlanarSegClusters.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ExtractedFeaturesArray.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp _hlpr_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_perception_msgs_genlisp)
add_dependencies(hlpr_perception_msgs_genlisp hlpr_perception_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_perception_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/NonPlanarSegClusters.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ExtractedFeaturesArray.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)
_generate_msg_py(hlpr_perception_msgs
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg"
  "${MSG_I_FLAGS}"
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(hlpr_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hlpr_perception_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hlpr_perception_msgs_generate_messages hlpr_perception_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/NonPlanarSegClusters.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ExtractedFeaturesArray.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg" NAME_WE)
add_dependencies(hlpr_perception_msgs_generate_messages_py _hlpr_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_perception_msgs_genpy)
add_dependencies(hlpr_perception_msgs_genpy hlpr_perception_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_perception_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_perception_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_perception_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(hlpr_perception_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_perception_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_perception_msgs_generate_messages_eus std_msgs_generate_messages_eus)
add_dependencies(hlpr_perception_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
add_dependencies(hlpr_perception_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_perception_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_perception_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(hlpr_perception_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_perception_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_perception_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(hlpr_perception_msgs_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(hlpr_perception_msgs_generate_messages_py geometry_msgs_generate_messages_py)
