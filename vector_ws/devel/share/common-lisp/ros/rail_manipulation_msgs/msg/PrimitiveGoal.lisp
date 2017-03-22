; Auto-generated. Do not edit!


(cl:in-package rail_manipulation_msgs-msg)


;//! \htmlinclude PrimitiveGoal.msg.html

(cl:defclass <PrimitiveGoal> (roslisp-msg-protocol:ros-message)
  ((primitive_type
    :reader primitive_type
    :initarg :primitive_type
    :type cl:fixnum
    :initform 0)
   (axis
    :reader axis
    :initarg :axis
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass PrimitiveGoal (<PrimitiveGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrimitiveGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrimitiveGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-msg:<PrimitiveGoal> is deprecated: use rail_manipulation_msgs-msg:PrimitiveGoal instead.")))

(cl:ensure-generic-function 'primitive_type-val :lambda-list '(m))
(cl:defmethod primitive_type-val ((m <PrimitiveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:primitive_type-val is deprecated.  Use rail_manipulation_msgs-msg:primitive_type instead.")
  (primitive_type m))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <PrimitiveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:axis-val is deprecated.  Use rail_manipulation_msgs-msg:axis instead.")
  (axis m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <PrimitiveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:distance-val is deprecated.  Use rail_manipulation_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PrimitiveGoal>)))
    "Constants for message type '<PrimitiveGoal>"
  '((:TRANSLATION . 0)
    (:ROTATION . 1)
    (:X_AXIS . 0)
    (:Y_AXIS . 1)
    (:Z_AXIS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PrimitiveGoal)))
    "Constants for message type 'PrimitiveGoal"
  '((:TRANSLATION . 0)
    (:ROTATION . 1)
    (:X_AXIS . 0)
    (:Y_AXIS . 1)
    (:Z_AXIS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrimitiveGoal>) ostream)
  "Serializes a message object of type '<PrimitiveGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'primitive_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axis)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrimitiveGoal>) istream)
  "Deserializes a message object of type '<PrimitiveGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'primitive_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axis)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrimitiveGoal>)))
  "Returns string type for a message object of type '<PrimitiveGoal>"
  "rail_manipulation_msgs/PrimitiveGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrimitiveGoal)))
  "Returns string type for a message object of type 'PrimitiveGoal"
  "rail_manipulation_msgs/PrimitiveGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrimitiveGoal>)))
  "Returns md5sum for a message object of type '<PrimitiveGoal>"
  "c76a07691fd7d25efb98e8b7f78daf49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrimitiveGoal)))
  "Returns md5sum for a message object of type 'PrimitiveGoal"
  "c76a07691fd7d25efb98e8b7f78daf49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrimitiveGoal>)))
  "Returns full string definition for message of type '<PrimitiveGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%~%#actions~%uint8 TRANSLATION=0~%uint8 ROTATION=1~%~%#axes~%uint8 X_AXIS=0~%uint8 Y_AXIS=1~%uint8 Z_AXIS=2~%~%uint8 primitive_type    # type of primitive action~%uint8 axis              # axis of translation/rotation~%float64 distance        # distance to perform the action (in m or rad)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrimitiveGoal)))
  "Returns full string definition for message of type 'PrimitiveGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%~%#actions~%uint8 TRANSLATION=0~%uint8 ROTATION=1~%~%#axes~%uint8 X_AXIS=0~%uint8 Y_AXIS=1~%uint8 Z_AXIS=2~%~%uint8 primitive_type    # type of primitive action~%uint8 axis              # axis of translation/rotation~%float64 distance        # distance to perform the action (in m or rad)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrimitiveGoal>))
  (cl:+ 0
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrimitiveGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PrimitiveGoal
    (cl:cons ':primitive_type (primitive_type msg))
    (cl:cons ':axis (axis msg))
    (cl:cons ':distance (distance msg))
))
