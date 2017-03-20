; Auto-generated. Do not edit!


(cl:in-package vector_msgs-msg)


;//! \htmlinclude JacoJointCmd.msg.html

(cl:defclass <JacoJointCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command_type
    :reader command_type
    :initarg :command_type
    :type cl:integer
    :initform 0)
   (joint_cmds
    :reader joint_cmds
    :initarg :joint_cmds
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (vel_limits
    :reader vel_limits
    :initarg :vel_limits
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass JacoJointCmd (<JacoJointCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JacoJointCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JacoJointCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_msgs-msg:<JacoJointCmd> is deprecated: use vector_msgs-msg:JacoJointCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JacoJointCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:header-val is deprecated.  Use vector_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command_type-val :lambda-list '(m))
(cl:defmethod command_type-val ((m <JacoJointCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:command_type-val is deprecated.  Use vector_msgs-msg:command_type instead.")
  (command_type m))

(cl:ensure-generic-function 'joint_cmds-val :lambda-list '(m))
(cl:defmethod joint_cmds-val ((m <JacoJointCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:joint_cmds-val is deprecated.  Use vector_msgs-msg:joint_cmds instead.")
  (joint_cmds m))

(cl:ensure-generic-function 'vel_limits-val :lambda-list '(m))
(cl:defmethod vel_limits-val ((m <JacoJointCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:vel_limits-val is deprecated.  Use vector_msgs-msg:vel_limits instead.")
  (vel_limits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JacoJointCmd>) ostream)
  "Serializes a message object of type '<JacoJointCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'command_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'command_type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_cmds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_cmds))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vel_limits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'vel_limits))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JacoJointCmd>) istream)
  "Deserializes a message object of type '<JacoJointCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'command_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'command_type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_cmds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_cmds)))
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
  (cl:setf (cl:slot-value msg 'vel_limits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vel_limits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JacoJointCmd>)))
  "Returns string type for a message object of type '<JacoJointCmd>"
  "vector_msgs/JacoJointCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JacoJointCmd)))
  "Returns string type for a message object of type 'JacoJointCmd"
  "vector_msgs/JacoJointCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JacoJointCmd>)))
  "Returns md5sum for a message object of type '<JacoJointCmd>"
  "f04ef8268b267f61fee55c68b617df3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JacoJointCmd)))
  "Returns md5sum for a message object of type 'JacoJointCmd"
  "f04ef8268b267f61fee55c68b617df3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JacoJointCmd>)))
  "Returns full string definition for message of type '<JacoJointCmd>"
  (cl:format cl:nil "Header header~%uint32 command_type~%float32[] joint_cmds~%float32[] vel_limits~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JacoJointCmd)))
  "Returns full string definition for message of type 'JacoJointCmd"
  (cl:format cl:nil "Header header~%uint32 command_type~%float32[] joint_cmds~%float32[] vel_limits~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JacoJointCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_cmds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vel_limits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JacoJointCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'JacoJointCmd
    (cl:cons ':header (header msg))
    (cl:cons ':command_type (command_type msg))
    (cl:cons ':joint_cmds (joint_cmds msg))
    (cl:cons ':vel_limits (vel_limits msg))
))
