; Auto-generated. Do not edit!


(cl:in-package hlpr_perception_msgs-msg)


;//! \htmlinclude ViewpointHist.msg.html

(cl:defclass <ViewpointHist> (roslisp-msg-protocol:ros-message)
  ((vfh_features_size
    :reader vfh_features_size
    :initarg :vfh_features_size
    :type cl:integer
    :initform 0)
   (vfh_feature_vector
    :reader vfh_feature_vector
    :initarg :vfh_feature_vector
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ViewpointHist (<ViewpointHist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ViewpointHist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ViewpointHist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_perception_msgs-msg:<ViewpointHist> is deprecated: use hlpr_perception_msgs-msg:ViewpointHist instead.")))

(cl:ensure-generic-function 'vfh_features_size-val :lambda-list '(m))
(cl:defmethod vfh_features_size-val ((m <ViewpointHist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:vfh_features_size-val is deprecated.  Use hlpr_perception_msgs-msg:vfh_features_size instead.")
  (vfh_features_size m))

(cl:ensure-generic-function 'vfh_feature_vector-val :lambda-list '(m))
(cl:defmethod vfh_feature_vector-val ((m <ViewpointHist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:vfh_feature_vector-val is deprecated.  Use hlpr_perception_msgs-msg:vfh_feature_vector instead.")
  (vfh_feature_vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ViewpointHist>) ostream)
  "Serializes a message object of type '<ViewpointHist>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vfh_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vfh_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vfh_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vfh_features_size)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vfh_feature_vector))))
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
   (cl:slot-value msg 'vfh_feature_vector))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ViewpointHist>) istream)
  "Deserializes a message object of type '<ViewpointHist>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vfh_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vfh_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vfh_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vfh_features_size)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vfh_feature_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vfh_feature_vector)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ViewpointHist>)))
  "Returns string type for a message object of type '<ViewpointHist>"
  "hlpr_perception_msgs/ViewpointHist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ViewpointHist)))
  "Returns string type for a message object of type 'ViewpointHist"
  "hlpr_perception_msgs/ViewpointHist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ViewpointHist>)))
  "Returns md5sum for a message object of type '<ViewpointHist>"
  "fc7e197b52de2cbf557265bb79769766")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ViewpointHist)))
  "Returns md5sum for a message object of type 'ViewpointHist"
  "fc7e197b52de2cbf557265bb79769766")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ViewpointHist>)))
  "Returns full string definition for message of type '<ViewpointHist>"
  (cl:format cl:nil "# VFH features~%~%uint32 vfh_features_size~%float64[] vfh_feature_vector~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ViewpointHist)))
  "Returns full string definition for message of type 'ViewpointHist"
  (cl:format cl:nil "# VFH features~%~%uint32 vfh_features_size~%float64[] vfh_feature_vector~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ViewpointHist>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vfh_feature_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ViewpointHist>))
  "Converts a ROS message object to a list"
  (cl:list 'ViewpointHist
    (cl:cons ':vfh_features_size (vfh_features_size msg))
    (cl:cons ':vfh_feature_vector (vfh_feature_vector msg))
))
