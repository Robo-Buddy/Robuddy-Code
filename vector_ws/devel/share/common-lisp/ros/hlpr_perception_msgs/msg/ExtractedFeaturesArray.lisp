; Auto-generated. Do not edit!


(cl:in-package hlpr_perception_msgs-msg)


;//! \htmlinclude ExtractedFeaturesArray.msg.html

(cl:defclass <ExtractedFeaturesArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector hlpr_perception_msgs-msg:ObjectFeatures)
   :initform (cl:make-array 0 :element-type 'hlpr_perception_msgs-msg:ObjectFeatures :initial-element (cl:make-instance 'hlpr_perception_msgs-msg:ObjectFeatures)))
   (planes
    :reader planes
    :initarg :planes
    :type (cl:vector hlpr_perception_msgs-msg:PlaneFeatures)
   :initform (cl:make-array 0 :element-type 'hlpr_perception_msgs-msg:PlaneFeatures :initial-element (cl:make-instance 'hlpr_perception_msgs-msg:PlaneFeatures)))
   (transforms
    :reader transforms
    :initarg :transforms
    :type (cl:vector geometry_msgs-msg:Transform)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Transform :initial-element (cl:make-instance 'geometry_msgs-msg:Transform))))
)

(cl:defclass ExtractedFeaturesArray (<ExtractedFeaturesArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtractedFeaturesArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtractedFeaturesArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_perception_msgs-msg:<ExtractedFeaturesArray> is deprecated: use hlpr_perception_msgs-msg:ExtractedFeaturesArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ExtractedFeaturesArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:header-val is deprecated.  Use hlpr_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <ExtractedFeaturesArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:objects-val is deprecated.  Use hlpr_perception_msgs-msg:objects instead.")
  (objects m))

(cl:ensure-generic-function 'planes-val :lambda-list '(m))
(cl:defmethod planes-val ((m <ExtractedFeaturesArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:planes-val is deprecated.  Use hlpr_perception_msgs-msg:planes instead.")
  (planes m))

(cl:ensure-generic-function 'transforms-val :lambda-list '(m))
(cl:defmethod transforms-val ((m <ExtractedFeaturesArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:transforms-val is deprecated.  Use hlpr_perception_msgs-msg:transforms instead.")
  (transforms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtractedFeaturesArray>) ostream)
  "Serializes a message object of type '<ExtractedFeaturesArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'planes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'planes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transforms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'transforms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtractedFeaturesArray>) istream)
  "Deserializes a message object of type '<ExtractedFeaturesArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hlpr_perception_msgs-msg:ObjectFeatures))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'planes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'planes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hlpr_perception_msgs-msg:PlaneFeatures))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtractedFeaturesArray>)))
  "Returns string type for a message object of type '<ExtractedFeaturesArray>"
  "hlpr_perception_msgs/ExtractedFeaturesArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractedFeaturesArray)))
  "Returns string type for a message object of type 'ExtractedFeaturesArray"
  "hlpr_perception_msgs/ExtractedFeaturesArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtractedFeaturesArray>)))
  "Returns md5sum for a message object of type '<ExtractedFeaturesArray>"
  "d19ef1ccb2fc5e726ee96ccb7f68a2e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtractedFeaturesArray)))
  "Returns md5sum for a message object of type 'ExtractedFeaturesArray"
  "d19ef1ccb2fc5e726ee96ccb7f68a2e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtractedFeaturesArray>)))
  "Returns full string definition for message of type '<ExtractedFeaturesArray>"
  (cl:format cl:nil "# Features for a single cluster~%~%Header header~%ObjectFeatures[] objects~%PlaneFeatures[] planes ~%geometry_msgs/Transform[] transforms~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hlpr_perception_msgs/ObjectFeatures~%# Features for a single object cluster~%~%Header header~%~%geometry_msgs/Transform transform~%~%BasicFeatures basicInfo~%OrientedBoundingBox obb~%~%bool setColorHist            # Flag to state if hs_hist was computed and set (default=true)~%ColorHist hs_hist~%~%bool setShapeHist            # Flag to state if shape_hist was computed and set (default=true)~%ShapeHist shape_hist~%~%bool setViewpointHist        # Flag to state if view_hist was computed and set (default=true)~%ViewpointHist view_hist~%~%bool setOtherFeatures        # Flag to state if other features were computed and set (default=false)~%OtherFeatures other~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hlpr_perception_msgs/BasicFeatures~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%~%bool setNumPoints                # flag is required for planes as they only have contours, ~%float64 num_points               # the num_points is not applicable to planes~%~%# Average color (RGBA and hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: hlpr_perception_msgs/OrientedBoundingBox~%#Oriented Bounding box~%~%#position wrt sensor ~%geometry_msgs/Vector3 bb_center~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#Bounding box quaternion~%geometry_msgs/Quaternion bb_rot_quat~%~%================================================================================~%MSG: hlpr_perception_msgs/ColorHist~%# Hue-Saturation histogram~%~%uint32 hs_features_size~%float64[] hs_feature_vector~%~%~%================================================================================~%MSG: hlpr_perception_msgs/ShapeHist~%# Shape histogram using CVFH~%~%uint32 cvfh_features_size~%float64[] cvfh_feature_vector~%~%#################################~%# Shape histogram using FPFH~%~%uint32 fpfh_features_size~%float64[] fpfh_feature_vector~%~%================================================================================~%MSG: hlpr_perception_msgs/ViewpointHist~%# VFH features~%~%uint32 vfh_features_size~%float64[] vfh_feature_vector~%~%~%================================================================================~%MSG: hlpr_perception_msgs/OtherFeatures~%#Other features, etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%~%================================================================================~%MSG: hlpr_perception_msgs/PlaneFeatures~%# Features for a single plane cluster~%~%Header header~%BasicFeatures basicInfo~%OrientedBoundingBox obb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtractedFeaturesArray)))
  "Returns full string definition for message of type 'ExtractedFeaturesArray"
  (cl:format cl:nil "# Features for a single cluster~%~%Header header~%ObjectFeatures[] objects~%PlaneFeatures[] planes ~%geometry_msgs/Transform[] transforms~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hlpr_perception_msgs/ObjectFeatures~%# Features for a single object cluster~%~%Header header~%~%geometry_msgs/Transform transform~%~%BasicFeatures basicInfo~%OrientedBoundingBox obb~%~%bool setColorHist            # Flag to state if hs_hist was computed and set (default=true)~%ColorHist hs_hist~%~%bool setShapeHist            # Flag to state if shape_hist was computed and set (default=true)~%ShapeHist shape_hist~%~%bool setViewpointHist        # Flag to state if view_hist was computed and set (default=true)~%ViewpointHist view_hist~%~%bool setOtherFeatures        # Flag to state if other features were computed and set (default=false)~%OtherFeatures other~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hlpr_perception_msgs/BasicFeatures~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%~%bool setNumPoints                # flag is required for planes as they only have contours, ~%float64 num_points               # the num_points is not applicable to planes~%~%# Average color (RGBA and hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: hlpr_perception_msgs/OrientedBoundingBox~%#Oriented Bounding box~%~%#position wrt sensor ~%geometry_msgs/Vector3 bb_center~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#Bounding box quaternion~%geometry_msgs/Quaternion bb_rot_quat~%~%================================================================================~%MSG: hlpr_perception_msgs/ColorHist~%# Hue-Saturation histogram~%~%uint32 hs_features_size~%float64[] hs_feature_vector~%~%~%================================================================================~%MSG: hlpr_perception_msgs/ShapeHist~%# Shape histogram using CVFH~%~%uint32 cvfh_features_size~%float64[] cvfh_feature_vector~%~%#################################~%# Shape histogram using FPFH~%~%uint32 fpfh_features_size~%float64[] fpfh_feature_vector~%~%================================================================================~%MSG: hlpr_perception_msgs/ViewpointHist~%# VFH features~%~%uint32 vfh_features_size~%float64[] vfh_feature_vector~%~%~%================================================================================~%MSG: hlpr_perception_msgs/OtherFeatures~%#Other features, etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%~%================================================================================~%MSG: hlpr_perception_msgs/PlaneFeatures~%# Features for a single plane cluster~%~%Header header~%BasicFeatures basicInfo~%OrientedBoundingBox obb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtractedFeaturesArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'planes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transforms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtractedFeaturesArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtractedFeaturesArray
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
    (cl:cons ':planes (planes msg))
    (cl:cons ':transforms (transforms msg))
))
