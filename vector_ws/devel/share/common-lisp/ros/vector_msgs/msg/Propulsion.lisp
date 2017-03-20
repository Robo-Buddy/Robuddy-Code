; Auto-generated. Do not edit!


(cl:in-package vector_msgs-msg)


;//! \htmlinclude Propulsion.msg.html

(cl:defclass <Propulsion> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (wheel_motor_status
    :reader wheel_motor_status
    :initarg :wheel_motor_status
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (wheel_motor_current_A0pk
    :reader wheel_motor_current_A0pk
    :initarg :wheel_motor_current_A0pk
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (wheel_motor_speed_rps
    :reader wheel_motor_speed_rps
    :initarg :wheel_motor_speed_rps
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (wheel_motor_position_rad
    :reader wheel_motor_position_rad
    :initarg :wheel_motor_position_rad
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (linear_motor_status
    :reader linear_motor_status
    :initarg :linear_motor_status
    :type cl:integer
    :initform 0)
   (linear_motor_current_A0pk
    :reader linear_motor_current_A0pk
    :initarg :linear_motor_current_A0pk
    :type cl:float
    :initform 0.0)
   (linear_motor_speed_rps
    :reader linear_motor_speed_rps
    :initarg :linear_motor_speed_rps
    :type cl:float
    :initform 0.0)
   (linear_motor_position_rad
    :reader linear_motor_position_rad
    :initarg :linear_motor_position_rad
    :type cl:float
    :initform 0.0))
)

(cl:defclass Propulsion (<Propulsion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Propulsion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Propulsion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_msgs-msg:<Propulsion> is deprecated: use vector_msgs-msg:Propulsion instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Propulsion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:header-val is deprecated.  Use vector_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'wheel_motor_status-val :lambda-list '(m))
(cl:defmethod wheel_motor_status-val ((m <Propulsion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:wheel_motor_status-val is deprecated.  Use vector_msgs-msg:wheel_motor_status instead.")
  (wheel_motor_status m))

(cl:ensure-generic-function 'wheel_motor_current_A0pk-val :lambda-list '(m))
(cl:defmethod wheel_motor_current_A0pk-val ((m <Propulsion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:wheel_motor_current_A0pk-val is deprecated.  Use vector_msgs-msg:wheel_motor_current_A0pk instead.")
  (wheel_motor_current_A0pk m))

(cl:ensure-generic-function 'wheel_motor_speed_rps-val :lambda-list '(m))
(cl:defmethod wheel_motor_speed_rps-val ((m <Propulsion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:wheel_motor_speed_rps-val is deprecated.  Use vector_msgs-msg:wheel_motor_speed_rps instead.")
  (wheel_motor_speed_rps m))

(cl:ensure-generic-function 'wheel_motor_position_rad-val :lambda-list '(m))
(cl:defmethod wheel_motor_position_rad-val ((m <Propulsion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:wheel_motor_position_rad-val is deprecated.  Use vector_msgs-msg:wheel_motor_position_rad instead.")
  (wheel_motor_position_rad m))

(cl:ensure-generic-function 'linear_motor_status-val :lambda-list '(m))
(cl:defmethod linear_motor_status-val ((m <Propulsion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:linear_motor_status-val is deprecated.  Use vector_msgs-msg:linear_motor_status instead.")
  (linear_motor_status m))

(cl:ensure-generic-function 'linear_motor_current_A0pk-val :lambda-list '(m))
(cl:defmethod linear_motor_current_A0pk-val ((m <Propulsion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:linear_motor_current_A0pk-val is deprecated.  Use vector_msgs-msg:linear_motor_current_A0pk instead.")
  (linear_motor_current_A0pk m))

(cl:ensure-generic-function 'linear_motor_speed_rps-val :lambda-list '(m))
(cl:defmethod linear_motor_speed_rps-val ((m <Propulsion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:linear_motor_speed_rps-val is deprecated.  Use vector_msgs-msg:linear_motor_speed_rps instead.")
  (linear_motor_speed_rps m))

(cl:ensure-generic-function 'linear_motor_position_rad-val :lambda-list '(m))
(cl:defmethod linear_motor_position_rad-val ((m <Propulsion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:linear_motor_position_rad-val is deprecated.  Use vector_msgs-msg:linear_motor_position_rad instead.")
  (linear_motor_position_rad m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Propulsion>) ostream)
  "Serializes a message object of type '<Propulsion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_motor_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'wheel_motor_status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_motor_current_A0pk))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wheel_motor_current_A0pk))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_motor_speed_rps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wheel_motor_speed_rps))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_motor_position_rad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wheel_motor_position_rad))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'linear_motor_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'linear_motor_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'linear_motor_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'linear_motor_status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_motor_current_A0pk))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_motor_speed_rps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_motor_position_rad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Propulsion>) istream)
  "Deserializes a message object of type '<Propulsion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_motor_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_motor_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_motor_current_A0pk) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_motor_current_A0pk)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_motor_speed_rps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_motor_speed_rps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_motor_position_rad) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_motor_position_rad)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'linear_motor_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'linear_motor_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'linear_motor_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'linear_motor_status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_motor_current_A0pk) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_motor_speed_rps) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_motor_position_rad) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Propulsion>)))
  "Returns string type for a message object of type '<Propulsion>"
  "vector_msgs/Propulsion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Propulsion)))
  "Returns string type for a message object of type 'Propulsion"
  "vector_msgs/Propulsion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Propulsion>)))
  "Returns md5sum for a message object of type '<Propulsion>"
  "61491c2b54c7a9e181eff35f997fd6b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Propulsion)))
  "Returns md5sum for a message object of type 'Propulsion"
  "61491c2b54c7a9e181eff35f997fd6b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Propulsion>)))
  "Returns full string definition for message of type '<Propulsion>"
  (cl:format cl:nil "Header header~%uint32[] wheel_motor_status~%float32[] wheel_motor_current_A0pk~%float32[] wheel_motor_speed_rps~%float32[] wheel_motor_position_rad~%uint32 linear_motor_status~%float32 linear_motor_current_A0pk~%float32 linear_motor_speed_rps~%float32 linear_motor_position_rad~% ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Propulsion)))
  "Returns full string definition for message of type 'Propulsion"
  (cl:format cl:nil "Header header~%uint32[] wheel_motor_status~%float32[] wheel_motor_current_A0pk~%float32[] wheel_motor_speed_rps~%float32[] wheel_motor_position_rad~%uint32 linear_motor_status~%float32 linear_motor_current_A0pk~%float32 linear_motor_speed_rps~%float32 linear_motor_position_rad~% ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Propulsion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_motor_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_motor_current_A0pk) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_motor_speed_rps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_motor_position_rad) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Propulsion>))
  "Converts a ROS message object to a list"
  (cl:list 'Propulsion
    (cl:cons ':header (header msg))
    (cl:cons ':wheel_motor_status (wheel_motor_status msg))
    (cl:cons ':wheel_motor_current_A0pk (wheel_motor_current_A0pk msg))
    (cl:cons ':wheel_motor_speed_rps (wheel_motor_speed_rps msg))
    (cl:cons ':wheel_motor_position_rad (wheel_motor_position_rad msg))
    (cl:cons ':linear_motor_status (linear_motor_status msg))
    (cl:cons ':linear_motor_current_A0pk (linear_motor_current_A0pk msg))
    (cl:cons ':linear_motor_speed_rps (linear_motor_speed_rps msg))
    (cl:cons ':linear_motor_position_rad (linear_motor_position_rad msg))
))
