; Auto-generated. Do not edit!


(cl:in-package hlpr_perception_msgs-msg)


;//! \htmlinclude OrientedBoundingBox.msg.html

(cl:defclass <OrientedBoundingBox> (roslisp-msg-protocol:ros-message)
  ((bb_center
    :reader bb_center
    :initarg :bb_center
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (bb_dims
    :reader bb_dims
    :initarg :bb_dims
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (bb_rot_quat
    :reader bb_rot_quat
    :initarg :bb_rot_quat
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass OrientedBoundingBox (<OrientedBoundingBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrientedBoundingBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrientedBoundingBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_perception_msgs-msg:<OrientedBoundingBox> is deprecated: use hlpr_perception_msgs-msg:OrientedBoundingBox instead.")))

(cl:ensure-generic-function 'bb_center-val :lambda-list '(m))
(cl:defmethod bb_center-val ((m <OrientedBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:bb_center-val is deprecated.  Use hlpr_perception_msgs-msg:bb_center instead.")
  (bb_center m))

(cl:ensure-generic-function 'bb_dims-val :lambda-list '(m))
(cl:defmethod bb_dims-val ((m <OrientedBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:bb_dims-val is deprecated.  Use hlpr_perception_msgs-msg:bb_dims instead.")
  (bb_dims m))

(cl:ensure-generic-function 'bb_rot_quat-val :lambda-list '(m))
(cl:defmethod bb_rot_quat-val ((m <OrientedBoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:bb_rot_quat-val is deprecated.  Use hlpr_perception_msgs-msg:bb_rot_quat instead.")
  (bb_rot_quat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrientedBoundingBox>) ostream)
  "Serializes a message object of type '<OrientedBoundingBox>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bb_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bb_dims) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bb_rot_quat) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrientedBoundingBox>) istream)
  "Deserializes a message object of type '<OrientedBoundingBox>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bb_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bb_dims) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bb_rot_quat) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrientedBoundingBox>)))
  "Returns string type for a message object of type '<OrientedBoundingBox>"
  "hlpr_perception_msgs/OrientedBoundingBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrientedBoundingBox)))
  "Returns string type for a message object of type 'OrientedBoundingBox"
  "hlpr_perception_msgs/OrientedBoundingBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrientedBoundingBox>)))
  "Returns md5sum for a message object of type '<OrientedBoundingBox>"
  "a54e8508bb2281f7a95516396df131e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrientedBoundingBox)))
  "Returns md5sum for a message object of type 'OrientedBoundingBox"
  "a54e8508bb2281f7a95516396df131e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrientedBoundingBox>)))
  "Returns full string definition for message of type '<OrientedBoundingBox>"
  (cl:format cl:nil "#Oriented Bounding box~%~%#position wrt sensor ~%geometry_msgs/Vector3 bb_center~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#Bounding box quaternion~%geometry_msgs/Quaternion bb_rot_quat~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrientedBoundingBox)))
  "Returns full string definition for message of type 'OrientedBoundingBox"
  (cl:format cl:nil "#Oriented Bounding box~%~%#position wrt sensor ~%geometry_msgs/Vector3 bb_center~%~%# Bounding box dimensions~%geometry_msgs/Vector3 bb_dims~%~%#Bounding box quaternion~%geometry_msgs/Quaternion bb_rot_quat~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrientedBoundingBox>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bb_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bb_dims))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bb_rot_quat))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrientedBoundingBox>))
  "Converts a ROS message object to a list"
  (cl:list 'OrientedBoundingBox
    (cl:cons ':bb_center (bb_center msg))
    (cl:cons ':bb_dims (bb_dims msg))
    (cl:cons ':bb_rot_quat (bb_rot_quat msg))
))
