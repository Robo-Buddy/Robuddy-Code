; Auto-generated. Do not edit!


(cl:in-package hlpr_feature_extraction-msg)


;//! \htmlinclude PcFeatures.msg.html

(cl:defclass <PcFeatures> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (points_centroid
    :reader points_centroid
    :initarg :points_centroid
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (points_min
    :reader points_min
    :initarg :points_min
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (points_max
    :reader points_max
    :initarg :points_max
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (num_points
    :reader num_points
    :initarg :num_points
    :type cl:float
    :initform 0.0)
   (rgba_color
    :reader rgba_color
    :initarg :rgba_color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (hue
    :reader hue
    :initarg :hue
    :type cl:float
    :initform 0.0)
   (bb_center
    :reader bb_center
    :initarg :bb_center
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (bb_angle
    :reader bb_angle
    :initarg :bb_angle
    :type cl:float
    :initform 0.0)
   (bb_dims
    :reader bb_dims
    :initarg :bb_dims
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (other_features_size
    :reader other_features_size
    :initarg :other_features_size
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PcFeatures (<PcFeatures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PcFeatures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PcFeatures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_feature_extraction-msg:<PcFeatures> is deprecated: use hlpr_feature_extraction-msg:PcFeatures instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:header-val is deprecated.  Use hlpr_feature_extraction-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:transform-val is deprecated.  Use hlpr_feature_extraction-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'points_centroid-val :lambda-list '(m))
(cl:defmethod points_centroid-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:points_centroid-val is deprecated.  Use hlpr_feature_extraction-msg:points_centroid instead.")
  (points_centroid m))

(cl:ensure-generic-function 'points_min-val :lambda-list '(m))
(cl:defmethod points_min-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:points_min-val is deprecated.  Use hlpr_feature_extraction-msg:points_min instead.")
  (points_min m))

(cl:ensure-generic-function 'points_max-val :lambda-list '(m))
(cl:defmethod points_max-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:points_max-val is deprecated.  Use hlpr_feature_extraction-msg:points_max instead.")
  (points_max m))

(cl:ensure-generic-function 'num_points-val :lambda-list '(m))
(cl:defmethod num_points-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:num_points-val is deprecated.  Use hlpr_feature_extraction-msg:num_points instead.")
  (num_points m))

(cl:ensure-generic-function 'rgba_color-val :lambda-list '(m))
(cl:defmethod rgba_color-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:rgba_color-val is deprecated.  Use hlpr_feature_extraction-msg:rgba_color instead.")
  (rgba_color m))

(cl:ensure-generic-function 'hue-val :lambda-list '(m))
(cl:defmethod hue-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:hue-val is deprecated.  Use hlpr_feature_extraction-msg:hue instead.")
  (hue m))

(cl:ensure-generic-function 'bb_center-val :lambda-list '(m))
(cl:defmethod bb_center-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:bb_center-val is deprecated.  Use hlpr_feature_extraction-msg:bb_center instead.")
  (bb_center m))

(cl:ensure-generic-function 'bb_angle-val :lambda-list '(m))
(cl:defmethod bb_angle-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:bb_angle-val is deprecated.  Use hlpr_feature_extraction-msg:bb_angle instead.")
  (bb_angle m))

(cl:ensure-generic-function 'bb_dims-val :lambda-list '(m))
(cl:defmethod bb_dims-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:bb_dims-val is deprecated.  Use hlpr_feature_extraction-msg:bb_dims instead.")
  (bb_dims m))

(cl:ensure-generic-function 'other_features_size-val :lambda-list '(m))
(cl:defmethod other_features_size-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:other_features_size-val is deprecated.  Use hlpr_feature_extraction-msg:other_features_size instead.")
  (other_features_size m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <PcFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_feature_extraction-msg:data-val is deprecated.  Use hlpr_feature_extraction-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PcFeatures>) ostream)
  "Serializes a message object of type '<PcFeatures>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points_centroid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points_min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points_max) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'num_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rgba_color) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bb_center) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bb_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bb_dims) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'other_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'other_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'other_features_size)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PcFeatures>) istream)
  "Deserializes a message object of type '<PcFeatures>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points_centroid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points_min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points_max) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num_points) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rgba_color) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hue) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bb_center) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bb_angle) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bb_dims) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'other_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'other_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'other_features_size)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PcFeatures>)))
  "Returns string type for a message object of type '<PcFeatures>"
  "hlpr_feature_extraction/PcFeatures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PcFeatures)))
  "Returns string type for a message object of type 'PcFeatures"
  "hlpr_feature_extraction/PcFeatures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PcFeatures>)))
  "Returns md5sum for a message object of type '<PcFeatures>"
  "623fac7b3275a81643e666d8b500f34f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PcFeatures)))
  "Returns md5sum for a message object of type 'PcFeatures"
  "623fac7b3275a81643e666d8b500f34f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PcFeatures>)))
  "Returns full string definition for message of type '<PcFeatures>"
  (cl:format cl:nil "# PcFeatures for a single cluster~%~%Header header~%~%# Object transform, however calculated~%geometry_msgs/Transform transform~%~%~%#################################~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%float64 num_points~%~%# Average color (RGBA nad hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%#################################~%#Bounding box~%~%#position wrt sensor and angle wrt table normal~%geometry_msgs/Vector3 bb_center~%float64 bb_angle~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#################################~%#Other such as vfh, color hist etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PcFeatures)))
  "Returns full string definition for message of type 'PcFeatures"
  (cl:format cl:nil "# PcFeatures for a single cluster~%~%Header header~%~%# Object transform, however calculated~%geometry_msgs/Transform transform~%~%~%#################################~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%float64 num_points~%~%# Average color (RGBA nad hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%#################################~%#Bounding box~%~%#position wrt sensor and angle wrt table normal~%geometry_msgs/Vector3 bb_center~%float64 bb_angle~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#################################~%#Other such as vfh, color hist etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PcFeatures>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points_centroid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points_min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points_max))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rgba_color))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bb_center))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bb_dims))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PcFeatures>))
  "Converts a ROS message object to a list"
  (cl:list 'PcFeatures
    (cl:cons ':header (header msg))
    (cl:cons ':transform (transform msg))
    (cl:cons ':points_centroid (points_centroid msg))
    (cl:cons ':points_min (points_min msg))
    (cl:cons ':points_max (points_max msg))
    (cl:cons ':num_points (num_points msg))
    (cl:cons ':rgba_color (rgba_color msg))
    (cl:cons ':hue (hue msg))
    (cl:cons ':bb_center (bb_center msg))
    (cl:cons ':bb_angle (bb_angle msg))
    (cl:cons ':bb_dims (bb_dims msg))
    (cl:cons ':other_features_size (other_features_size msg))
    (cl:cons ':data (data msg))
))
