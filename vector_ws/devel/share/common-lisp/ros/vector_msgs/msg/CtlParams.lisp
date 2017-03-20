; Auto-generated. Do not edit!


(cl:in-package vector_msgs-msg)


;//! \htmlinclude CtlParams.msg.html

(cl:defclass <CtlParams> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (p_gain_rps_per_rps
    :reader p_gain_rps_per_rps
    :initarg :p_gain_rps_per_rps
    :type cl:float
    :initform 0.0)
   (i_gain_rps_per_rad
    :reader i_gain_rps_per_rad
    :initarg :i_gain_rps_per_rad
    :type cl:float
    :initform 0.0)
   (d_gain_rps_per_rps2
    :reader d_gain_rps_per_rps2
    :initarg :d_gain_rps_per_rps2
    :type cl:float
    :initform 0.0)
   (fdfwd_gain_rps_per_motor_rps
    :reader fdfwd_gain_rps_per_motor_rps
    :initarg :fdfwd_gain_rps_per_motor_rps
    :type cl:float
    :initform 0.0)
   (p_error_limit_rps
    :reader p_error_limit_rps
    :initarg :p_error_limit_rps
    :type cl:float
    :initform 0.0)
   (i_error_limit_rad
    :reader i_error_limit_rad
    :initarg :i_error_limit_rad
    :type cl:float
    :initform 0.0)
   (d_error_limit_rps2
    :reader d_error_limit_rps2
    :initarg :d_error_limit_rps2
    :type cl:float
    :initform 0.0)
   (i_error_drain_rate_rad_per_frame
    :reader i_error_drain_rate_rad_per_frame
    :initarg :i_error_drain_rate_rad_per_frame
    :type cl:float
    :initform 0.0)
   (output_limit_rps
    :reader output_limit_rps
    :initarg :output_limit_rps
    :type cl:float
    :initform 0.0)
   (input_target_limit_rps
    :reader input_target_limit_rps
    :initarg :input_target_limit_rps
    :type cl:float
    :initform 0.0)
   (control_tuning_unlocked
    :reader control_tuning_unlocked
    :initarg :control_tuning_unlocked
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CtlParams (<CtlParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CtlParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CtlParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_msgs-msg:<CtlParams> is deprecated: use vector_msgs-msg:CtlParams instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:header-val is deprecated.  Use vector_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'p_gain_rps_per_rps-val :lambda-list '(m))
(cl:defmethod p_gain_rps_per_rps-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:p_gain_rps_per_rps-val is deprecated.  Use vector_msgs-msg:p_gain_rps_per_rps instead.")
  (p_gain_rps_per_rps m))

(cl:ensure-generic-function 'i_gain_rps_per_rad-val :lambda-list '(m))
(cl:defmethod i_gain_rps_per_rad-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:i_gain_rps_per_rad-val is deprecated.  Use vector_msgs-msg:i_gain_rps_per_rad instead.")
  (i_gain_rps_per_rad m))

(cl:ensure-generic-function 'd_gain_rps_per_rps2-val :lambda-list '(m))
(cl:defmethod d_gain_rps_per_rps2-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:d_gain_rps_per_rps2-val is deprecated.  Use vector_msgs-msg:d_gain_rps_per_rps2 instead.")
  (d_gain_rps_per_rps2 m))

(cl:ensure-generic-function 'fdfwd_gain_rps_per_motor_rps-val :lambda-list '(m))
(cl:defmethod fdfwd_gain_rps_per_motor_rps-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:fdfwd_gain_rps_per_motor_rps-val is deprecated.  Use vector_msgs-msg:fdfwd_gain_rps_per_motor_rps instead.")
  (fdfwd_gain_rps_per_motor_rps m))

(cl:ensure-generic-function 'p_error_limit_rps-val :lambda-list '(m))
(cl:defmethod p_error_limit_rps-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:p_error_limit_rps-val is deprecated.  Use vector_msgs-msg:p_error_limit_rps instead.")
  (p_error_limit_rps m))

(cl:ensure-generic-function 'i_error_limit_rad-val :lambda-list '(m))
(cl:defmethod i_error_limit_rad-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:i_error_limit_rad-val is deprecated.  Use vector_msgs-msg:i_error_limit_rad instead.")
  (i_error_limit_rad m))

(cl:ensure-generic-function 'd_error_limit_rps2-val :lambda-list '(m))
(cl:defmethod d_error_limit_rps2-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:d_error_limit_rps2-val is deprecated.  Use vector_msgs-msg:d_error_limit_rps2 instead.")
  (d_error_limit_rps2 m))

(cl:ensure-generic-function 'i_error_drain_rate_rad_per_frame-val :lambda-list '(m))
(cl:defmethod i_error_drain_rate_rad_per_frame-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:i_error_drain_rate_rad_per_frame-val is deprecated.  Use vector_msgs-msg:i_error_drain_rate_rad_per_frame instead.")
  (i_error_drain_rate_rad_per_frame m))

(cl:ensure-generic-function 'output_limit_rps-val :lambda-list '(m))
(cl:defmethod output_limit_rps-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:output_limit_rps-val is deprecated.  Use vector_msgs-msg:output_limit_rps instead.")
  (output_limit_rps m))

(cl:ensure-generic-function 'input_target_limit_rps-val :lambda-list '(m))
(cl:defmethod input_target_limit_rps-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:input_target_limit_rps-val is deprecated.  Use vector_msgs-msg:input_target_limit_rps instead.")
  (input_target_limit_rps m))

(cl:ensure-generic-function 'control_tuning_unlocked-val :lambda-list '(m))
(cl:defmethod control_tuning_unlocked-val ((m <CtlParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:control_tuning_unlocked-val is deprecated.  Use vector_msgs-msg:control_tuning_unlocked instead.")
  (control_tuning_unlocked m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CtlParams>) ostream)
  "Serializes a message object of type '<CtlParams>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'p_gain_rps_per_rps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'i_gain_rps_per_rad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd_gain_rps_per_rps2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fdfwd_gain_rps_per_motor_rps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'p_error_limit_rps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'i_error_limit_rad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd_error_limit_rps2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'i_error_drain_rate_rad_per_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'output_limit_rps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'input_target_limit_rps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'control_tuning_unlocked) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CtlParams>) istream)
  "Deserializes a message object of type '<CtlParams>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p_gain_rps_per_rps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i_gain_rps_per_rad) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_gain_rps_per_rps2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fdfwd_gain_rps_per_motor_rps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p_error_limit_rps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i_error_limit_rad) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_error_limit_rps2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i_error_drain_rate_rad_per_frame) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output_limit_rps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'input_target_limit_rps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'control_tuning_unlocked) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CtlParams>)))
  "Returns string type for a message object of type '<CtlParams>"
  "vector_msgs/CtlParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CtlParams)))
  "Returns string type for a message object of type 'CtlParams"
  "vector_msgs/CtlParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CtlParams>)))
  "Returns md5sum for a message object of type '<CtlParams>"
  "93aa6e90d2031cf65eb0758a993f2326")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CtlParams)))
  "Returns md5sum for a message object of type 'CtlParams"
  "93aa6e90d2031cf65eb0758a993f2326")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CtlParams>)))
  "Returns full string definition for message of type '<CtlParams>"
  (cl:format cl:nil "Header header~%float32 p_gain_rps_per_rps~%float32 i_gain_rps_per_rad~%float32 d_gain_rps_per_rps2~%float32 fdfwd_gain_rps_per_motor_rps~%float32 p_error_limit_rps~%float32 i_error_limit_rad~%float32 d_error_limit_rps2~%float32 i_error_drain_rate_rad_per_frame~%float32 output_limit_rps~%float32 input_target_limit_rps~%bool control_tuning_unlocked~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CtlParams)))
  "Returns full string definition for message of type 'CtlParams"
  (cl:format cl:nil "Header header~%float32 p_gain_rps_per_rps~%float32 i_gain_rps_per_rad~%float32 d_gain_rps_per_rps2~%float32 fdfwd_gain_rps_per_motor_rps~%float32 p_error_limit_rps~%float32 i_error_limit_rad~%float32 d_error_limit_rps2~%float32 i_error_drain_rate_rad_per_frame~%float32 output_limit_rps~%float32 input_target_limit_rps~%bool control_tuning_unlocked~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CtlParams>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CtlParams>))
  "Converts a ROS message object to a list"
  (cl:list 'CtlParams
    (cl:cons ':header (header msg))
    (cl:cons ':p_gain_rps_per_rps (p_gain_rps_per_rps msg))
    (cl:cons ':i_gain_rps_per_rad (i_gain_rps_per_rad msg))
    (cl:cons ':d_gain_rps_per_rps2 (d_gain_rps_per_rps2 msg))
    (cl:cons ':fdfwd_gain_rps_per_motor_rps (fdfwd_gain_rps_per_motor_rps msg))
    (cl:cons ':p_error_limit_rps (p_error_limit_rps msg))
    (cl:cons ':i_error_limit_rad (i_error_limit_rad msg))
    (cl:cons ':d_error_limit_rps2 (d_error_limit_rps2 msg))
    (cl:cons ':i_error_drain_rate_rad_per_frame (i_error_drain_rate_rad_per_frame msg))
    (cl:cons ':output_limit_rps (output_limit_rps msg))
    (cl:cons ':input_target_limit_rps (input_target_limit_rps msg))
    (cl:cons ':control_tuning_unlocked (control_tuning_unlocked msg))
))
