; Auto-generated. Do not edit!


(cl:in-package hlpr_perception_msgs-msg)


;//! \htmlinclude BasicFeatures.msg.html

(cl:defclass <BasicFeatures> (roslisp-msg-protocol:ros-message)
  ((points_centroid
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
   (setNumPoints
    :reader setNumPoints
    :initarg :setNumPoints
    :type cl:boolean
    :initform cl:nil)
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
    :initform 0.0))
)

(cl:defclass BasicFeatures (<BasicFeatures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BasicFeatures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BasicFeatures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_perception_msgs-msg:<BasicFeatures> is deprecated: use hlpr_perception_msgs-msg:BasicFeatures instead.")))

(cl:ensure-generic-function 'points_centroid-val :lambda-list '(m))
(cl:defmethod points_centroid-val ((m <BasicFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:points_centroid-val is deprecated.  Use hlpr_perception_msgs-msg:points_centroid instead.")
  (points_centroid m))

(cl:ensure-generic-function 'points_min-val :lambda-list '(m))
(cl:defmethod points_min-val ((m <BasicFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:points_min-val is deprecated.  Use hlpr_perception_msgs-msg:points_min instead.")
  (points_min m))

(cl:ensure-generic-function 'points_max-val :lambda-list '(m))
(cl:defmethod points_max-val ((m <BasicFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:points_max-val is deprecated.  Use hlpr_perception_msgs-msg:points_max instead.")
  (points_max m))

(cl:ensure-generic-function 'setNumPoints-val :lambda-list '(m))
(cl:defmethod setNumPoints-val ((m <BasicFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:setNumPoints-val is deprecated.  Use hlpr_perception_msgs-msg:setNumPoints instead.")
  (setNumPoints m))

(cl:ensure-generic-function 'num_points-val :lambda-list '(m))
(cl:defmethod num_points-val ((m <BasicFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:num_points-val is deprecated.  Use hlpr_perception_msgs-msg:num_points instead.")
  (num_points m))

(cl:ensure-generic-function 'rgba_color-val :lambda-list '(m))
(cl:defmethod rgba_color-val ((m <BasicFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:rgba_color-val is deprecated.  Use hlpr_perception_msgs-msg:rgba_color instead.")
  (rgba_color m))

(cl:ensure-generic-function 'hue-val :lambda-list '(m))
(cl:defmethod hue-val ((m <BasicFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:hue-val is deprecated.  Use hlpr_perception_msgs-msg:hue instead.")
  (hue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BasicFeatures>) ostream)
  "Serializes a message object of type '<BasicFeatures>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points_centroid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points_min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points_max) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'setNumPoints) 1 0)) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BasicFeatures>) istream)
  "Deserializes a message object of type '<BasicFeatures>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points_centroid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points_min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points_max) istream)
    (cl:setf (cl:slot-value msg 'setNumPoints) (cl:not (cl:zerop (cl:read-byte istream))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BasicFeatures>)))
  "Returns string type for a message object of type '<BasicFeatures>"
  "hlpr_perception_msgs/BasicFeatures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BasicFeatures)))
  "Returns string type for a message object of type 'BasicFeatures"
  "hlpr_perception_msgs/BasicFeatures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BasicFeatures>)))
  "Returns md5sum for a message object of type '<BasicFeatures>"
  "9009cdc7b5540d94a129ff483c264725")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BasicFeatures)))
  "Returns md5sum for a message object of type 'BasicFeatures"
  "9009cdc7b5540d94a129ff483c264725")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BasicFeatures>)))
  "Returns full string definition for message of type '<BasicFeatures>"
  (cl:format cl:nil "# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%~%bool setNumPoints                # flag is required for planes as they only have contours, ~%float64 num_points               # the num_points is not applicable to planes~%~%# Average color (RGBA and hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BasicFeatures)))
  "Returns full string definition for message of type 'BasicFeatures"
  (cl:format cl:nil "# Raw point Related~%~%# Cluster centroid, min, max and number of points~%geometry_msgs/Vector3 points_centroid~%geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>~%geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>~%~%bool setNumPoints                # flag is required for planes as they only have contours, ~%float64 num_points               # the num_points is not applicable to planes~%~%# Average color (RGBA and hue)~%std_msgs/ColorRGBA rgba_color~%float64 hue~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BasicFeatures>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points_centroid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points_min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points_max))
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rgba_color))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BasicFeatures>))
  "Converts a ROS message object to a list"
  (cl:list 'BasicFeatures
    (cl:cons ':points_centroid (points_centroid msg))
    (cl:cons ':points_min (points_min msg))
    (cl:cons ':points_max (points_max msg))
    (cl:cons ':setNumPoints (setNumPoints msg))
    (cl:cons ':num_points (num_points msg))
    (cl:cons ':rgba_color (rgba_color msg))
    (cl:cons ':hue (hue msg))
))
