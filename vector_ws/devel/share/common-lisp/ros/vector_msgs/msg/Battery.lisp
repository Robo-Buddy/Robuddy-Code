; Auto-generated. Do not edit!


(cl:in-package vector_msgs-msg)


;//! \htmlinclude Battery.msg.html

(cl:defclass <Battery> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (battery_status
    :reader battery_status
    :initarg :battery_status
    :type cl:integer
    :initform 0)
   (battery_soc
    :reader battery_soc
    :initarg :battery_soc
    :type cl:float
    :initform 0.0)
   (battery_voltage_VDC
    :reader battery_voltage_VDC
    :initarg :battery_voltage_VDC
    :type cl:float
    :initform 0.0)
   (battery_current_A0pk
    :reader battery_current_A0pk
    :initarg :battery_current_A0pk
    :type cl:float
    :initform 0.0)
   (battery_temperature_degC
    :reader battery_temperature_degC
    :initarg :battery_temperature_degC
    :type cl:float
    :initform 0.0))
)

(cl:defclass Battery (<Battery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Battery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Battery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_msgs-msg:<Battery> is deprecated: use vector_msgs-msg:Battery instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:header-val is deprecated.  Use vector_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'battery_status-val :lambda-list '(m))
(cl:defmethod battery_status-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:battery_status-val is deprecated.  Use vector_msgs-msg:battery_status instead.")
  (battery_status m))

(cl:ensure-generic-function 'battery_soc-val :lambda-list '(m))
(cl:defmethod battery_soc-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:battery_soc-val is deprecated.  Use vector_msgs-msg:battery_soc instead.")
  (battery_soc m))

(cl:ensure-generic-function 'battery_voltage_VDC-val :lambda-list '(m))
(cl:defmethod battery_voltage_VDC-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:battery_voltage_VDC-val is deprecated.  Use vector_msgs-msg:battery_voltage_VDC instead.")
  (battery_voltage_VDC m))

(cl:ensure-generic-function 'battery_current_A0pk-val :lambda-list '(m))
(cl:defmethod battery_current_A0pk-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:battery_current_A0pk-val is deprecated.  Use vector_msgs-msg:battery_current_A0pk instead.")
  (battery_current_A0pk m))

(cl:ensure-generic-function 'battery_temperature_degC-val :lambda-list '(m))
(cl:defmethod battery_temperature_degC-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msgs-msg:battery_temperature_degC-val is deprecated.  Use vector_msgs-msg:battery_temperature_degC instead.")
  (battery_temperature_degC m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Battery>) ostream)
  "Serializes a message object of type '<Battery>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'battery_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'battery_status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_soc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_voltage_VDC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_current_A0pk))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_temperature_degC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Battery>) istream)
  "Deserializes a message object of type '<Battery>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'battery_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'battery_status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_soc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_voltage_VDC) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_current_A0pk) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_temperature_degC) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Battery>)))
  "Returns string type for a message object of type '<Battery>"
  "vector_msgs/Battery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Battery)))
  "Returns string type for a message object of type 'Battery"
  "vector_msgs/Battery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Battery>)))
  "Returns md5sum for a message object of type '<Battery>"
  "85435c1f3cc5833c716f70d9ef5261a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Battery)))
  "Returns md5sum for a message object of type 'Battery"
  "85435c1f3cc5833c716f70d9ef5261a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Battery>)))
  "Returns full string definition for message of type '<Battery>"
  (cl:format cl:nil "Header header~%uint32  battery_status~%float32 battery_soc~%float32 battery_voltage_VDC~%float32 battery_current_A0pk~%float32 battery_temperature_degC~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Battery)))
  "Returns full string definition for message of type 'Battery"
  (cl:format cl:nil "Header header~%uint32  battery_status~%float32 battery_soc~%float32 battery_voltage_VDC~%float32 battery_current_A0pk~%float32 battery_temperature_degC~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Battery>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Battery>))
  "Converts a ROS message object to a list"
  (cl:list 'Battery
    (cl:cons ':header (header msg))
    (cl:cons ':battery_status (battery_status msg))
    (cl:cons ':battery_soc (battery_soc msg))
    (cl:cons ':battery_voltage_VDC (battery_voltage_VDC msg))
    (cl:cons ':battery_current_A0pk (battery_current_A0pk msg))
    (cl:cons ':battery_temperature_degC (battery_temperature_degC msg))
))
