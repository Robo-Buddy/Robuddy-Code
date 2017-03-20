; Auto-generated. Do not edit!


(cl:in-package hlpr_object_labeling-msg)


;//! \htmlinclude LabeledObjects.msg.html

(cl:defclass <LabeledObjects> (roslisp-msg-protocol:ros-message)
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
   (labels
    :reader labels
    :initarg :labels
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String))))
)

(cl:defclass LabeledObjects (<LabeledObjects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LabeledObjects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LabeledObjects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_object_labeling-msg:<LabeledObjects> is deprecated: use hlpr_object_labeling-msg:LabeledObjects instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LabeledObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_object_labeling-msg:header-val is deprecated.  Use hlpr_object_labeling-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <LabeledObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_object_labeling-msg:objects-val is deprecated.  Use hlpr_object_labeling-msg:objects instead.")
  (objects m))

(cl:ensure-generic-function 'labels-val :lambda-list '(m))
(cl:defmethod labels-val ((m <LabeledObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_object_labeling-msg:labels-val is deprecated.  Use hlpr_object_labeling-msg:labels instead.")
  (labels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LabeledObjects>) ostream)
  "Serializes a message object of type '<LabeledObjects>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'labels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'labels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LabeledObjects>) istream)
  "Deserializes a message object of type '<LabeledObjects>"
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
  (cl:setf (cl:slot-value msg 'labels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'labels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LabeledObjects>)))
  "Returns string type for a message object of type '<LabeledObjects>"
  "hlpr_object_labeling/LabeledObjects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LabeledObjects)))
  "Returns string type for a message object of type 'LabeledObjects"
  "hlpr_object_labeling/LabeledObjects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LabeledObjects>)))
  "Returns md5sum for a message object of type '<LabeledObjects>"
  "2661d64b6e024ded9a0bbaf2fec48297")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LabeledObjects)))
  "Returns md5sum for a message object of type 'LabeledObjects"
  "2661d64b6e024ded9a0bbaf2fec48297")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LabeledObjects>)))
  "Returns full string definition for message of type '<LabeledObjects>"
  (cl:format cl:nil "Header header~%hlpr_feature_extraction/PcFeatures[] objects~%std_msgs/String[] labels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hlpr_feature_extraction/PcFeatures~%# PcFeatures for a single cluster~%~%Header header~%~%# Object transform, however calculated~%geometry_msgs/Transform transform~%~%~%#################################~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%float64 num_points~%~%# Average color (RGBA nad hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%#################################~%#Bounding box~%~%#position wrt sensor and angle wrt table normal~%geometry_msgs/Vector3 bb_center~%float64 bb_angle~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#################################~%#Other such as vfh, color hist etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LabeledObjects)))
  "Returns full string definition for message of type 'LabeledObjects"
  (cl:format cl:nil "Header header~%hlpr_feature_extraction/PcFeatures[] objects~%std_msgs/String[] labels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hlpr_feature_extraction/PcFeatures~%# PcFeatures for a single cluster~%~%Header header~%~%# Object transform, however calculated~%geometry_msgs/Transform transform~%~%~%#################################~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%float64 num_points~%~%# Average color (RGBA nad hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%#################################~%#Bounding box~%~%#position wrt sensor and angle wrt table normal~%geometry_msgs/Vector3 bb_center~%float64 bb_angle~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#################################~%#Other such as vfh, color hist etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LabeledObjects>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'labels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LabeledObjects>))
  "Converts a ROS message object to a list"
  (cl:list 'LabeledObjects
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
    (cl:cons ':labels (labels msg))
))
