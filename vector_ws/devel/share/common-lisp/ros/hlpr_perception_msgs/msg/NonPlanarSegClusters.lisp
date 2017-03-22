; Auto-generated. Do not edit!


(cl:in-package hlpr_perception_msgs-msg)


;//! \htmlinclude NonPlanarSegClusters.msg.html

(cl:defclass <NonPlanarSegClusters> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (segmentedClusters
    :reader segmentedClusters
    :initarg :segmentedClusters
    :type hlpr_perception_msgs-msg:SegClusters
    :initform (cl:make-instance 'hlpr_perception_msgs-msg:SegClusters))
   (segmentedPlanes
    :reader segmentedPlanes
    :initarg :segmentedPlanes
    :type hlpr_perception_msgs-msg:SegPlanes
    :initform (cl:make-instance 'hlpr_perception_msgs-msg:SegPlanes)))
)

(cl:defclass NonPlanarSegClusters (<NonPlanarSegClusters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NonPlanarSegClusters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NonPlanarSegClusters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_perception_msgs-msg:<NonPlanarSegClusters> is deprecated: use hlpr_perception_msgs-msg:NonPlanarSegClusters instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NonPlanarSegClusters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:header-val is deprecated.  Use hlpr_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'segmentedClusters-val :lambda-list '(m))
(cl:defmethod segmentedClusters-val ((m <NonPlanarSegClusters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:segmentedClusters-val is deprecated.  Use hlpr_perception_msgs-msg:segmentedClusters instead.")
  (segmentedClusters m))

(cl:ensure-generic-function 'segmentedPlanes-val :lambda-list '(m))
(cl:defmethod segmentedPlanes-val ((m <NonPlanarSegClusters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:segmentedPlanes-val is deprecated.  Use hlpr_perception_msgs-msg:segmentedPlanes instead.")
  (segmentedPlanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NonPlanarSegClusters>) ostream)
  "Serializes a message object of type '<NonPlanarSegClusters>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segmentedClusters) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segmentedPlanes) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NonPlanarSegClusters>) istream)
  "Deserializes a message object of type '<NonPlanarSegClusters>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segmentedClusters) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segmentedPlanes) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NonPlanarSegClusters>)))
  "Returns string type for a message object of type '<NonPlanarSegClusters>"
  "hlpr_perception_msgs/NonPlanarSegClusters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NonPlanarSegClusters)))
  "Returns string type for a message object of type 'NonPlanarSegClusters"
  "hlpr_perception_msgs/NonPlanarSegClusters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NonPlanarSegClusters>)))
  "Returns md5sum for a message object of type '<NonPlanarSegClusters>"
  "51feb0ee490060ef0c7c730d0a470102")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NonPlanarSegClusters)))
  "Returns md5sum for a message object of type 'NonPlanarSegClusters"
  "51feb0ee490060ef0c7c730d0a470102")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NonPlanarSegClusters>)))
  "Returns full string definition for message of type '<NonPlanarSegClusters>"
  (cl:format cl:nil "Header header~%~%SegClusters segmentedClusters~%SegPlanes segmentedPlanes~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hlpr_perception_msgs/SegClusters~%# The following two are used to store clusters of objects~%Header header~%sensor_msgs/PointCloud2[] clusters~%sensor_msgs/PointCloud2[] normals~%std_msgs/Float32MultiArray plane~%ClusterIndex[] cluster_ids~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: hlpr_perception_msgs/ClusterIndex~%std_msgs/Int32[] indices~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: hlpr_perception_msgs/SegPlanes~%# The following are used to store information about planes~%std_msgs/Float32MultiArray[] plane_coefficients~%sensor_msgs/PointCloud2[] plane_contours~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NonPlanarSegClusters)))
  "Returns full string definition for message of type 'NonPlanarSegClusters"
  (cl:format cl:nil "Header header~%~%SegClusters segmentedClusters~%SegPlanes segmentedPlanes~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hlpr_perception_msgs/SegClusters~%# The following two are used to store clusters of objects~%Header header~%sensor_msgs/PointCloud2[] clusters~%sensor_msgs/PointCloud2[] normals~%std_msgs/Float32MultiArray plane~%ClusterIndex[] cluster_ids~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: hlpr_perception_msgs/ClusterIndex~%std_msgs/Int32[] indices~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: hlpr_perception_msgs/SegPlanes~%# The following are used to store information about planes~%std_msgs/Float32MultiArray[] plane_coefficients~%sensor_msgs/PointCloud2[] plane_contours~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NonPlanarSegClusters>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segmentedClusters))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segmentedPlanes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NonPlanarSegClusters>))
  "Converts a ROS message object to a list"
  (cl:list 'NonPlanarSegClusters
    (cl:cons ':header (header msg))
    (cl:cons ':segmentedClusters (segmentedClusters msg))
    (cl:cons ':segmentedPlanes (segmentedPlanes msg))
))
