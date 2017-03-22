; Auto-generated. Do not edit!


(cl:in-package hlpr_perception_msgs-msg)


;//! \htmlinclude ObjectFeatures.msg.html

(cl:defclass <ObjectFeatures> (roslisp-msg-protocol:ros-message)
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
   (basicInfo
    :reader basicInfo
    :initarg :basicInfo
    :type hlpr_perception_msgs-msg:BasicFeatures
    :initform (cl:make-instance 'hlpr_perception_msgs-msg:BasicFeatures))
   (obb
    :reader obb
    :initarg :obb
    :type hlpr_perception_msgs-msg:OrientedBoundingBox
    :initform (cl:make-instance 'hlpr_perception_msgs-msg:OrientedBoundingBox))
   (setColorHist
    :reader setColorHist
    :initarg :setColorHist
    :type cl:boolean
    :initform cl:nil)
   (hs_hist
    :reader hs_hist
    :initarg :hs_hist
    :type hlpr_perception_msgs-msg:ColorHist
    :initform (cl:make-instance 'hlpr_perception_msgs-msg:ColorHist))
   (setShapeHist
    :reader setShapeHist
    :initarg :setShapeHist
    :type cl:boolean
    :initform cl:nil)
   (shape_hist
    :reader shape_hist
    :initarg :shape_hist
    :type hlpr_perception_msgs-msg:ShapeHist
    :initform (cl:make-instance 'hlpr_perception_msgs-msg:ShapeHist))
   (setViewpointHist
    :reader setViewpointHist
    :initarg :setViewpointHist
    :type cl:boolean
    :initform cl:nil)
   (view_hist
    :reader view_hist
    :initarg :view_hist
    :type hlpr_perception_msgs-msg:ViewpointHist
    :initform (cl:make-instance 'hlpr_perception_msgs-msg:ViewpointHist))
   (setOtherFeatures
    :reader setOtherFeatures
    :initarg :setOtherFeatures
    :type cl:boolean
    :initform cl:nil)
   (other
    :reader other
    :initarg :other
    :type hlpr_perception_msgs-msg:OtherFeatures
    :initform (cl:make-instance 'hlpr_perception_msgs-msg:OtherFeatures)))
)

(cl:defclass ObjectFeatures (<ObjectFeatures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectFeatures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectFeatures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_perception_msgs-msg:<ObjectFeatures> is deprecated: use hlpr_perception_msgs-msg:ObjectFeatures instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:header-val is deprecated.  Use hlpr_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:transform-val is deprecated.  Use hlpr_perception_msgs-msg:transform instead.")
  (transform m))

(cl:ensure-generic-function 'basicInfo-val :lambda-list '(m))
(cl:defmethod basicInfo-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:basicInfo-val is deprecated.  Use hlpr_perception_msgs-msg:basicInfo instead.")
  (basicInfo m))

(cl:ensure-generic-function 'obb-val :lambda-list '(m))
(cl:defmethod obb-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:obb-val is deprecated.  Use hlpr_perception_msgs-msg:obb instead.")
  (obb m))

(cl:ensure-generic-function 'setColorHist-val :lambda-list '(m))
(cl:defmethod setColorHist-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:setColorHist-val is deprecated.  Use hlpr_perception_msgs-msg:setColorHist instead.")
  (setColorHist m))

(cl:ensure-generic-function 'hs_hist-val :lambda-list '(m))
(cl:defmethod hs_hist-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:hs_hist-val is deprecated.  Use hlpr_perception_msgs-msg:hs_hist instead.")
  (hs_hist m))

(cl:ensure-generic-function 'setShapeHist-val :lambda-list '(m))
(cl:defmethod setShapeHist-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:setShapeHist-val is deprecated.  Use hlpr_perception_msgs-msg:setShapeHist instead.")
  (setShapeHist m))

(cl:ensure-generic-function 'shape_hist-val :lambda-list '(m))
(cl:defmethod shape_hist-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:shape_hist-val is deprecated.  Use hlpr_perception_msgs-msg:shape_hist instead.")
  (shape_hist m))

(cl:ensure-generic-function 'setViewpointHist-val :lambda-list '(m))
(cl:defmethod setViewpointHist-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:setViewpointHist-val is deprecated.  Use hlpr_perception_msgs-msg:setViewpointHist instead.")
  (setViewpointHist m))

(cl:ensure-generic-function 'view_hist-val :lambda-list '(m))
(cl:defmethod view_hist-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:view_hist-val is deprecated.  Use hlpr_perception_msgs-msg:view_hist instead.")
  (view_hist m))

(cl:ensure-generic-function 'setOtherFeatures-val :lambda-list '(m))
(cl:defmethod setOtherFeatures-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:setOtherFeatures-val is deprecated.  Use hlpr_perception_msgs-msg:setOtherFeatures instead.")
  (setOtherFeatures m))

(cl:ensure-generic-function 'other-val :lambda-list '(m))
(cl:defmethod other-val ((m <ObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:other-val is deprecated.  Use hlpr_perception_msgs-msg:other instead.")
  (other m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectFeatures>) ostream)
  "Serializes a message object of type '<ObjectFeatures>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'basicInfo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obb) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setColorHist) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hs_hist) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setShapeHist) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape_hist) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setViewpointHist) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'view_hist) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setOtherFeatures) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'other) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectFeatures>) istream)
  "Deserializes a message object of type '<ObjectFeatures>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'basicInfo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obb) istream)
    (cl:setf (cl:slot-value msg 'setColorHist) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hs_hist) istream)
    (cl:setf (cl:slot-value msg 'setShapeHist) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape_hist) istream)
    (cl:setf (cl:slot-value msg 'setViewpointHist) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'view_hist) istream)
    (cl:setf (cl:slot-value msg 'setOtherFeatures) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'other) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectFeatures>)))
  "Returns string type for a message object of type '<ObjectFeatures>"
  "hlpr_perception_msgs/ObjectFeatures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectFeatures)))
  "Returns string type for a message object of type 'ObjectFeatures"
  "hlpr_perception_msgs/ObjectFeatures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectFeatures>)))
  "Returns md5sum for a message object of type '<ObjectFeatures>"
  "e8002b6ed029f744d9adbb41c97e7480")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectFeatures)))
  "Returns md5sum for a message object of type 'ObjectFeatures"
  "e8002b6ed029f744d9adbb41c97e7480")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectFeatures>)))
  "Returns full string definition for message of type '<ObjectFeatures>"
  (cl:format cl:nil "# Features for a single object cluster~%~%Header header~%~%geometry_msgs/Transform transform~%~%BasicFeatures basicInfo~%OrientedBoundingBox obb~%~%bool setColorHist            # Flag to state if hs_hist was computed and set (default=true)~%ColorHist hs_hist~%~%bool setShapeHist            # Flag to state if shape_hist was computed and set (default=true)~%ShapeHist shape_hist~%~%bool setViewpointHist        # Flag to state if view_hist was computed and set (default=true)~%ViewpointHist view_hist~%~%bool setOtherFeatures        # Flag to state if other features were computed and set (default=false)~%OtherFeatures other~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hlpr_perception_msgs/BasicFeatures~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%~%bool setNumPoints                # flag is required for planes as they only have contours, ~%float64 num_points               # the num_points is not applicable to planes~%~%# Average color (RGBA and hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: hlpr_perception_msgs/OrientedBoundingBox~%#Oriented Bounding box~%~%#position wrt sensor ~%geometry_msgs/Vector3 bb_center~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#Bounding box quaternion~%geometry_msgs/Quaternion bb_rot_quat~%~%================================================================================~%MSG: hlpr_perception_msgs/ColorHist~%# Hue-Saturation histogram~%~%uint32 hs_features_size~%float64[] hs_feature_vector~%~%~%================================================================================~%MSG: hlpr_perception_msgs/ShapeHist~%# Shape histogram using CVFH~%~%uint32 cvfh_features_size~%float64[] cvfh_feature_vector~%~%#################################~%# Shape histogram using FPFH~%~%uint32 fpfh_features_size~%float64[] fpfh_feature_vector~%~%================================================================================~%MSG: hlpr_perception_msgs/ViewpointHist~%# VFH features~%~%uint32 vfh_features_size~%float64[] vfh_feature_vector~%~%~%================================================================================~%MSG: hlpr_perception_msgs/OtherFeatures~%#Other features, etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectFeatures)))
  "Returns full string definition for message of type 'ObjectFeatures"
  (cl:format cl:nil "# Features for a single object cluster~%~%Header header~%~%geometry_msgs/Transform transform~%~%BasicFeatures basicInfo~%OrientedBoundingBox obb~%~%bool setColorHist            # Flag to state if hs_hist was computed and set (default=true)~%ColorHist hs_hist~%~%bool setShapeHist            # Flag to state if shape_hist was computed and set (default=true)~%ShapeHist shape_hist~%~%bool setViewpointHist        # Flag to state if view_hist was computed and set (default=true)~%ViewpointHist view_hist~%~%bool setOtherFeatures        # Flag to state if other features were computed and set (default=false)~%OtherFeatures other~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hlpr_perception_msgs/BasicFeatures~%# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%~%bool setNumPoints                # flag is required for planes as they only have contours, ~%float64 num_points               # the num_points is not applicable to planes~%~%# Average color (RGBA and hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: hlpr_perception_msgs/OrientedBoundingBox~%#Oriented Bounding box~%~%#position wrt sensor ~%geometry_msgs/Vector3 bb_center~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#Bounding box quaternion~%geometry_msgs/Quaternion bb_rot_quat~%~%================================================================================~%MSG: hlpr_perception_msgs/ColorHist~%# Hue-Saturation histogram~%~%uint32 hs_features_size~%float64[] hs_feature_vector~%~%~%================================================================================~%MSG: hlpr_perception_msgs/ShapeHist~%# Shape histogram using CVFH~%~%uint32 cvfh_features_size~%float64[] cvfh_feature_vector~%~%#################################~%# Shape histogram using FPFH~%~%uint32 fpfh_features_size~%float64[] fpfh_feature_vector~%~%================================================================================~%MSG: hlpr_perception_msgs/ViewpointHist~%# VFH features~%~%uint32 vfh_features_size~%float64[] vfh_feature_vector~%~%~%================================================================================~%MSG: hlpr_perception_msgs/OtherFeatures~%#Other features, etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectFeatures>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'basicInfo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obb))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hs_hist))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape_hist))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'view_hist))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'other))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectFeatures>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectFeatures
    (cl:cons ':header (header msg))
    (cl:cons ':transform (transform msg))
    (cl:cons ':basicInfo (basicInfo msg))
    (cl:cons ':obb (obb msg))
    (cl:cons ':setColorHist (setColorHist msg))
    (cl:cons ':hs_hist (hs_hist msg))
    (cl:cons ':setShapeHist (setShapeHist msg))
    (cl:cons ':shape_hist (shape_hist msg))
    (cl:cons ':setViewpointHist (setViewpointHist msg))
    (cl:cons ':view_hist (view_hist msg))
    (cl:cons ':setOtherFeatures (setOtherFeatures msg))
    (cl:cons ':other (other msg))
))
