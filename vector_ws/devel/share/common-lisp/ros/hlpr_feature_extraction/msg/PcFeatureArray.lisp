; Auto-generated. Do not edit!


(cl:in-package hlpr_feature_extraction-msg)


;//! \htmlinclude PcFeatureArray.msg.html

(cl:defclass <PcFeatureArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector hlpr_feature_extraction-msg:PcFeatures)
   :initform (cl:make-array 0 :element-type 'hlpr_feature_extraction-msg:PcFeatures :initial-element (cl:make-instance 'hlpr_feature_extraction-msg:PcFeatures)))
   (transforms
    :reader transforms
    :initarg :transforms
    :type (cl:vector geometry_msgs-msg:Transform)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Transform :initial-element (cl:make-instance 'geometry_msgs-msg:Transform))))
)

(cl:defclass PcFeatureArray (<PcFeatureArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PcFeatureArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PcFeatureArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_feature_extraction-msg:<PcFeatureArray> is deprecated: use hlpr_feature_extraction-msg:PcFeatureArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PcFeatureArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:header-val is deprecated.  Use hlpr_feature_extraction-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <PcFeatureArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:objects-val is deprecated.  Use hlpr_feature_extraction-msg:objects instead.")
  (objects m))

(cl:ensure-generic-function 'transforms-val :lambda-list '(m))
(cl:defmethod transforms-val ((m <PcFeatureArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:transforms-val is deprecated.  Use hlpr_feature_extraction-msg:transforms instead.")
  (transforms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PcFeatureArray>) ostream)
  "Serializes a message object of type '<PcFeatureArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transforms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'transforms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PcFeatureArray>) istream)
  "Deserializes a message object of type '<PcFeatureArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hlpr_feature_extraction-msg:PcFeatures))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transforms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transforms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Transform))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PcFeatureArray>)))
  "Returns string type for a message object of type '<PcFeatureArray>"
  "hlpr_feature_extraction/PcFeatureArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PcFeatureArray)))
  "Returns string type for a message object of type 'PcFeatureArray"
  "hlpr_feature_extraction/PcFeatureArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PcFeatureArray>)))
  "Returns md5sum for a message object of type '<PcFeatureArray>"
  "97468c6fac5b9559175d303fc8770b6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PcFeatureArray)))
  "Returns md5sum for a message object of type 'PcFeatureArray"
  "97468c6fac5b9559175d303fc8770b6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PcFeatureArray>)))
  "Returns full string definition for message of type '<PcFeatureArray>"
  (cl:format cl:nil "# PcFeatures for a single cluster~%~%Header header~%PcFeatures[] objects~%geometry_msgs/Transform[] transforms~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hlpr_feature_extraction/PcFeatures~%# PcFeatures for a single cluster~%~%Header header~%~%# Object transform, however calculated~%geometry_msgs/Transform transform~%~%~%#################################~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%float64 num_points~%~%# Average color (RGBA nad hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%#################################~%#Bounding box~%~%#position wrt sensor and angle wrt table normal~%geometry_msgs/Vector3 bb_center~%float64 bb_angle~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#################################~%#Other such as vfh, color hist etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PcFeatureArray)))
  "Returns full string definition for message of type 'PcFeatureArray"
  (cl:format cl:nil "# PcFeatures for a single cluster~%~%Header header~%PcFeatures[] objects~%geometry_msgs/Transform[] transforms~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hlpr_feature_extraction/PcFeatures~%# PcFeatures for a single cluster~%~%Header header~%~%# Object transform, however calculated~%geometry_msgs/Transform transform~%~%~%#################################~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%float64 num_points~%~%# Average color (RGBA nad hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%#################################~%#Bounding box~%~%#position wrt sensor and angle wrt table normal~%geometry_msgs/Vector3 bb_center~%float64 bb_angle~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#################################~%#Other such as vfh, color hist etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PcFeatureArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transforms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PcFeatureArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PcFeatureArray
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
    (cl:cons ':transforms (transforms msg))
))
