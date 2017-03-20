; Auto-generated. Do not edit!


(cl:in-package hlpr_perception_msgs-msg)


;//! \htmlinclude ShapeHist.msg.html

(cl:defclass <ShapeHist> (roslisp-msg-protocol:ros-message)
  ((cvfh_features_size
    :reader cvfh_features_size
    :initarg :cvfh_features_size
    :type cl:integer
    :initform 0)
   (cvfh_feature_vector
    :reader cvfh_feature_vector
    :initarg :cvfh_feature_vector
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (fpfh_features_size
    :reader fpfh_features_size
    :initarg :fpfh_features_size
    :type cl:integer
    :initform 0)
   (fpfh_feature_vector
    :reader fpfh_feature_vector
    :initarg :fpfh_feature_vector
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ShapeHist (<ShapeHist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShapeHist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShapeHist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_perception_msgs-msg:<ShapeHist> is deprecated: use hlpr_perception_msgs-msg:ShapeHist instead.")))

(cl:ensure-generic-function 'cvfh_features_size-val :lambda-list '(m))
(cl:defmethod cvfh_features_size-val ((m <ShapeHist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:cvfh_features_size-val is deprecated.  Use hlpr_perception_msgs-msg:cvfh_features_size instead.")
  (cvfh_features_size m))

(cl:ensure-generic-function 'cvfh_feature_vector-val :lambda-list '(m))
(cl:defmethod cvfh_feature_vector-val ((m <ShapeHist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:cvfh_feature_vector-val is deprecated.  Use hlpr_perception_msgs-msg:cvfh_feature_vector instead.")
  (cvfh_feature_vector m))

(cl:ensure-generic-function 'fpfh_features_size-val :lambda-list '(m))
(cl:defmethod fpfh_features_size-val ((m <ShapeHist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:fpfh_features_size-val is deprecated.  Use hlpr_perception_msgs-msg:fpfh_features_size instead.")
  (fpfh_features_size m))

(cl:ensure-generic-function 'fpfh_feature_vector-val :lambda-list '(m))
(cl:defmethod fpfh_feature_vector-val ((m <ShapeHist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_perception_msgs-msg:fpfh_feature_vector-val is deprecated.  Use hlpr_perception_msgs-msg:fpfh_feature_vector instead.")
  (fpfh_feature_vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShapeHist>) ostream)
  "Serializes a message object of type '<ShapeHist>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cvfh_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cvfh_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cvfh_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cvfh_features_size)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cvfh_feature_vector))))
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
   (cl:slot-value msg 'cvfh_feature_vector))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fpfh_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fpfh_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fpfh_features_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fpfh_features_size)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fpfh_feature_vector))))
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
   (cl:slot-value msg 'fpfh_feature_vector))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShapeHist>) istream)
  "Deserializes a message object of type '<ShapeHist>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cvfh_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cvfh_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cvfh_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cvfh_features_size)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cvfh_feature_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cvfh_feature_vector)))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fpfh_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fpfh_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fpfh_features_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fpfh_features_size)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fpfh_feature_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fpfh_feature_vector)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShapeHist>)))
  "Returns string type for a message object of type '<ShapeHist>"
  "hlpr_perception_msgs/ShapeHist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShapeHist)))
  "Returns string type for a message object of type 'ShapeHist"
  "hlpr_perception_msgs/ShapeHist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShapeHist>)))
  "Returns md5sum for a message object of type '<ShapeHist>"
  "65c53c27de6ca549a96dbffa1766d8b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShapeHist)))
  "Returns md5sum for a message object of type 'ShapeHist"
  "65c53c27de6ca549a96dbffa1766d8b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShapeHist>)))
  "Returns full string definition for message of type '<ShapeHist>"
  (cl:format cl:nil "# Shape histogram using CVFH~%~%uint32 cvfh_features_size~%float64[] cvfh_feature_vector~%~%#################################~%# Shape histogram using FPFH~%~%uint32 fpfh_features_size~%float64[] fpfh_feature_vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShapeHist)))
  "Returns full string definition for message of type 'ShapeHist"
  (cl:format cl:nil "# Shape histogram using CVFH~%~%uint32 cvfh_features_size~%float64[] cvfh_feature_vector~%~%#################################~%# Shape histogram using FPFH~%~%uint32 fpfh_features_size~%float64[] fpfh_feature_vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShapeHist>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cvfh_feature_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fpfh_feature_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShapeHist>))
  "Converts a ROS message object to a list"
  (cl:list 'ShapeHist
    (cl:cons ':cvfh_features_size (cvfh_features_size msg))
    (cl:cons ':cvfh_feature_vector (cvfh_feature_vector msg))
    (cl:cons ':fpfh_features_size (fpfh_features_size msg))
    (cl:cons ':fpfh_feature_vector (fpfh_feature_vector msg))
))
