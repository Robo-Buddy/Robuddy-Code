; Auto-generated. Do not edit!


(cl:in-package hlpr_perception_msgs-msg)


;//! \htmlinclude OtherFeatures.msg.html

(cl:defclass <OtherFeatures> (roslisp-msg-protocol:ros-message)
  ((other_features_size
    :reader other_features_size
    :initarg :other_features_size
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass OtherFeatures (<OtherFeatures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OtherFeatures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OtherFeatures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_perception_msgs-msg:<OtherFeatures> is deprecated: use hlpr_perception_msgs-msg:OtherFeatures instead.")))

(cl:ensure-generic-function 'other_features_size-val :lambda-list '(m))
(cl:defmethod other_features_size-val ((m <OtherFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:other_features_size-val is deprecated.  Use hlpr_perception_msgs-msg:other_features_size instead.")
  (other_features_size m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <OtherFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:data-val is deprecated.  Use hlpr_perception_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OtherFeatures>) ostream)
  "Serializes a message object of type '<OtherFeatures>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'other_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'other_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'other_features_size)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OtherFeatures>) istream)
  "Deserializes a message object of type '<OtherFeatures>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'other_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'other_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'other_features_size)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OtherFeatures>)))
  "Returns string type for a message object of type '<OtherFeatures>"
  "hlpr_perception_msgs/OtherFeatures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OtherFeatures)))
  "Returns string type for a message object of type 'OtherFeatures"
  "hlpr_perception_msgs/OtherFeatures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OtherFeatures>)))
  "Returns md5sum for a message object of type '<OtherFeatures>"
  "2d22cbac6bc3cfd07bc3aeb056714914")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OtherFeatures)))
  "Returns md5sum for a message object of type 'OtherFeatures"
  "2d22cbac6bc3cfd07bc3aeb056714914")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OtherFeatures>)))
  "Returns full string definition for message of type '<OtherFeatures>"
  (cl:format cl:nil "#Other features, etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OtherFeatures)))
  "Returns full string definition for message of type 'OtherFeatures"
  (cl:format cl:nil "#Other features, etc. Unpacking will be on the other side~%~%uint32 other_features_size~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OtherFeatures>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OtherFeatures>))
  "Converts a ROS message object to a list"
  (cl:list 'OtherFeatures
    (cl:cons ':other_features_size (other_features_size msg))
    (cl:cons ':data (data msg))
))
