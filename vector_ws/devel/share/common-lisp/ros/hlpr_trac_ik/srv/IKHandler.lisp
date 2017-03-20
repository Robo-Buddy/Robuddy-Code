; Auto-generated. Do not edit!


(cl:in-package hlpr_trac_ik-srv)


;//! \htmlinclude IKHandler-request.msg.html

(cl:defclass <IKHandler-request> (roslisp-msg-protocol:ros-message)
  ((origin
    :reader origin
    :initarg :origin
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (goals
    :reader goals
    :initarg :goals
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (tolerance
    :reader tolerance
    :initarg :tolerance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (verbose
    :reader verbose
    :initarg :verbose
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IKHandler-request (<IKHandler-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IKHandler-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IKHandler-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_trac_ik-srv:<IKHandler-request> is deprecated: use hlpr_trac_ik-srv:IKHandler-request instead.")))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <IKHandler-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_trac_ik-srv:origin-val is deprecated.  Use hlpr_trac_ik-srv:origin instead.")
  (origin m))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <IKHandler-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_trac_ik-srv:goals-val is deprecated.  Use hlpr_trac_ik-srv:goals instead.")
  (goals m))

(cl:ensure-generic-function 'tolerance-val :lambda-list '(m))
(cl:defmethod tolerance-val ((m <IKHandler-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_trac_ik-srv:tolerance-val is deprecated.  Use hlpr_trac_ik-srv:tolerance instead.")
  (tolerance m))

(cl:ensure-generic-function 'verbose-val :lambda-list '(m))
(cl:defmethod verbose-val ((m <IKHandler-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_trac_ik-srv:verbose-val is deprecated.  Use hlpr_trac_ik-srv:verbose instead.")
  (verbose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IKHandler-request>) ostream)
  "Serializes a message object of type '<IKHandler-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'origin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'origin))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'tolerance))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'verbose) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IKHandler-request>) istream)
  "Deserializes a message object of type '<IKHandler-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'origin) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'origin)))
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
  (cl:setf (cl:slot-value msg 'goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tolerance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tolerance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'verbose) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IKHandler-request>)))
  "Returns string type for a service object of type '<IKHandler-request>"
  "hlpr_trac_ik/IKHandlerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKHandler-request)))
  "Returns string type for a service object of type 'IKHandler-request"
  "hlpr_trac_ik/IKHandlerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IKHandler-request>)))
  "Returns md5sum for a message object of type '<IKHandler-request>"
  "9aa495ca2916258a4ba1dba1ad308475")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IKHandler-request)))
  "Returns md5sum for a message object of type 'IKHandler-request"
  "9aa495ca2916258a4ba1dba1ad308475")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IKHandler-request>)))
  "Returns full string definition for message of type '<IKHandler-request>"
  (cl:format cl:nil "float32[] origin~%geometry_msgs/Pose[] goals~%float32[] tolerance~%bool verbose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IKHandler-request)))
  "Returns full string definition for message of type 'IKHandler-request"
  (cl:format cl:nil "float32[] origin~%geometry_msgs/Pose[] goals~%float32[] tolerance~%bool verbose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IKHandler-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'origin) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tolerance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IKHandler-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IKHandler-request
    (cl:cons ':origin (origin msg))
    (cl:cons ':goals (goals msg))
    (cl:cons ':tolerance (tolerance msg))
    (cl:cons ':verbose (verbose msg))
))
;//! \htmlinclude IKHandler-response.msg.html

(cl:defclass <IKHandler-response> (roslisp-msg-protocol:ros-message)
  ((poses
    :reader poses
    :initarg :poses
    :type (cl:vector trajectory_msgs-msg:JointTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'trajectory_msgs-msg:JointTrajectoryPoint :initial-element (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint)))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IKHandler-response (<IKHandler-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IKHandler-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IKHandler-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_trac_ik-srv:<IKHandler-response> is deprecated: use hlpr_trac_ik-srv:IKHandler-response instead.")))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <IKHandler-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_trac_ik-srv:poses-val is deprecated.  Use hlpr_trac_ik-srv:poses instead.")
  (poses m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <IKHandler-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_trac_ik-srv:success-val is deprecated.  Use hlpr_trac_ik-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IKHandler-response>) ostream)
  "Serializes a message object of type '<IKHandler-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IKHandler-response>) istream)
  "Deserializes a message object of type '<IKHandler-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IKHandler-response>)))
  "Returns string type for a service object of type '<IKHandler-response>"
  "hlpr_trac_ik/IKHandlerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKHandler-response)))
  "Returns string type for a service object of type 'IKHandler-response"
  "hlpr_trac_ik/IKHandlerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IKHandler-response>)))
  "Returns md5sum for a message object of type '<IKHandler-response>"
  "9aa495ca2916258a4ba1dba1ad308475")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IKHandler-response)))
  "Returns md5sum for a message object of type 'IKHandler-response"
  "9aa495ca2916258a4ba1dba1ad308475")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IKHandler-response>)))
  "Returns full string definition for message of type '<IKHandler-response>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint[] poses~%bool success~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IKHandler-response)))
  "Returns full string definition for message of type 'IKHandler-response"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint[] poses~%bool success~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IKHandler-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IKHandler-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IKHandler-response
    (cl:cons ':poses (poses msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IKHandler)))
  'IKHandler-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IKHandler)))
  'IKHandler-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKHandler)))
  "Returns string type for a service object of type '<IKHandler>"
  "hlpr_trac_ik/IKHandler")