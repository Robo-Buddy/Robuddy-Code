; Auto-generated. Do not edit!


(cl:in-package vector_msgs-msg)


;//! \htmlinclude JacoCartesianVelocityCmd.msg.html

(cl:defclass <JacoCartesianVelocityCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (theta_x
    :reader theta_x
    :initarg :theta_x
    :type cl:float
    :initform 0.0)
   (theta_y
    :reader theta_y
    :initarg :theta_y
    :type cl:float
    :initform 0.0)
   (theta_z
    :reader theta_z
    :initarg :theta_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass JacoCartesianVelocityCmd (<JacoCartesianVelocityCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JacoCartesianVelocityCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JacoCartesianVelocityCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_msgs-msg:<JacoCartesianVelocityCmd> is deprecated: use vector_msgs-msg:JacoCartesianVelocityCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JacoCartesianVelocityCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:header-val is deprecated.  Use vector_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <JacoCartesianVelocityCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:x-val is deprecated.  Use vector_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <JacoCartesianVelocityCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:y-val is deprecated.  Use vector_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <JacoCartesianVelocityCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:z-val is deprecated.  Use vector_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'theta_x-val :lambda-list '(m))
(cl:defmethod theta_x-val ((m <JacoCartesianVelocityCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:theta_x-val is deprecated.  Use vector_msgs-msg:theta_x instead.")
  (theta_x m))

(cl:ensure-generic-function 'theta_y-val :lambda-list '(m))
(cl:defmethod theta_y-val ((m <JacoCartesianVelocityCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:theta_y-val is deprecated.  Use vector_msgs-msg:theta_y instead.")
  (theta_y m))

(cl:ensure-generic-function 'theta_z-val :lambda-list '(m))
(cl:defmethod theta_z-val ((m <JacoCartesianVelocityCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:theta_z-val is deprecated.  Use vector_msgs-msg:theta_z instead.")
  (theta_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JacoCartesianVelocityCmd>) ostream)
  "Serializes a message object of type '<JacoCartesianVelocityCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JacoCartesianVelocityCmd>) istream)
  "Deserializes a message object of type '<JacoCartesianVelocityCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JacoCartesianVelocityCmd>)))
  "Returns string type for a message object of type '<JacoCartesianVelocityCmd>"
  "vector_msgs/JacoCartesianVelocityCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JacoCartesianVelocityCmd)))
  "Returns string type for a message object of type 'JacoCartesianVelocityCmd"
  "vector_msgs/JacoCartesianVelocityCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JacoCartesianVelocityCmd>)))
  "Returns md5sum for a message object of type '<JacoCartesianVelocityCmd>"
  "6ee0a1b7bb8021caec58c0ffc7e90709")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JacoCartesianVelocityCmd)))
  "Returns md5sum for a message object of type 'JacoCartesianVelocityCmd"
  "6ee0a1b7bb8021caec58c0ffc7e90709")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JacoCartesianVelocityCmd>)))
  "Returns full string definition for message of type '<JacoCartesianVelocityCmd>"
  (cl:format cl:nil "Header header~%float32 x~%float32 y~%float32 z~%float32 theta_x~%float32 theta_y~%float32 theta_z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JacoCartesianVelocityCmd)))
  "Returns full string definition for message of type 'JacoCartesianVelocityCmd"
  (cl:format cl:nil "Header header~%float32 x~%float32 y~%float32 z~%float32 theta_x~%float32 theta_y~%float32 theta_z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JacoCartesianVelocityCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JacoCartesianVelocityCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'JacoCartesianVelocityCmd
    (cl:cons ':header (header msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':theta_x (theta_x msg))
    (cl:cons ':theta_y (theta_y msg))
    (cl:cons ':theta_z (theta_z msg))
))
