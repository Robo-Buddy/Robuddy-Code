; Auto-generated. Do not edit!


(cl:in-package hlpr_perception_msgs-msg)


;//! \htmlinclude PlaneFeatures.msg.html

(cl:defclass <PlaneFeatures> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (basicInfo
    :reader basicInfo
    :initarg :basicInfo
    :type hlpr_perception_msgs-msg:BasicFeatures
    :initform (cl:make-instance 'hlpr_perception_msgs-msg:BasicFeatures))
   (obb
    :reader obb
    :initarg :obb
    :type hlpr_perception_msgs-msg:OrientedBoundingBox
    :initform (cl:make-instance 'hlpr_perception_msgs-msg:OrientedBoundingBox)))
)

(cl:defclass PlaneFeatures (<PlaneFeatures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaneFeatures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaneFeatures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_perception_msgs-msg:<PlaneFeatures> is deprecated: use hlpr_perception_msgs-msg:PlaneFeatures instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlaneFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:header-val is deprecated.  Use hlpr_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'basicInfo-val :lambda-list '(m))
(cl:defmethod basicInfo-val ((m <PlaneFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:basicInfo-val is deprecated.  Use hlpr_perception_msgs-msg:basicInfo instead.")
  (basicInfo m))

(cl:ensure-generic-function 'obb-val :lambda-list '(m))
(cl:defmethod obb-val ((m <PlaneFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:obb-val is deprecated.  Use hlpr_perception_msgs-msg:obb instead.")
  (obb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaneFeatures>) ostream)
  "Serializes a message object of type '<PlaneFeatures>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'basicInfo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obb) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaneFeatures>) istream)
  "Deserializes a message object of type '<PlaneFeatures>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'basicInfo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obb) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaneFeatures>)))
  "Returns string type for a message object of type '<PlaneFeatures>"
  "hlpr_perception_msgs/PlaneFeatures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaneFeatures)))
  "Returns string type for a message object of type 'PlaneFeatures"
  "hlpr_perception_msgs/PlaneFeatures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaneFeatures>)))
  "Returns md5sum for a message object of type '<PlaneFeatures>"
  "212bb6bf8227526a074fad34a7edf8c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaneFeatures)))
  "Returns md5sum for a message object of type 'PlaneFeatures"
  "212bb6bf8227526a074fad34a7edf8c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaneFeatures>)))
  "Returns full string definition for message of type '<PlaneFeatures>"
  (cl:format cl:nil "# Features for a single plane cluster~%~%Header header~%BasicFeatures basicInfo~%OrientedBoundingBox obb~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hlpr_perception_msgs/BasicFeatures~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%~%bool setNumPoints                # flag is required for planes as they only have contours, ~%float64 num_points               # the num_points is not applicable to planes~%~%# Average color (RGBA and hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: hlpr_perception_msgs/OrientedBoundingBox~%#Oriented Bounding box~%~%#position wrt sensor ~%geometry_msgs/Vector3 bb_center~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#Bounding box quaternion~%geometry_msgs/Quaternion bb_rot_quat~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaneFeatures)))
  "Returns full string definition for message of type 'PlaneFeatures"
  (cl:format cl:nil "# Features for a single plane cluster~%~%Header header~%BasicFeatures basicInfo~%OrientedBoundingBox obb~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hlpr_perception_msgs/BasicFeatures~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%~%bool setNumPoints                # flag is required for planes as they only have contours, ~%float64 num_points               # the num_points is not applicable to planes~%~%# Average color (RGBA and hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: hlpr_perception_msgs/OrientedBoundingBox~%#Oriented Bounding box~%~%#position wrt sensor ~%geometry_msgs/Vector3 bb_center~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#Bounding box quaternion~%geometry_msgs/Quaternion bb_rot_quat~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaneFeatures>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'basicInfo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obb))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaneFeatures>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaneFeatures
    (cl:cons ':header (header msg))
    (cl:cons ':basicInfo (basicInfo msg))
    (cl:cons ':obb (obb msg))
))
