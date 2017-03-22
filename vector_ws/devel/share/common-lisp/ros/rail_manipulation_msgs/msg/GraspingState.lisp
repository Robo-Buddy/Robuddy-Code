; Auto-generated. Do not edit!


(cl:in-package rail_manipulation_msgs-msg)


;//! \htmlinclude GraspingState.msg.html

(cl:defclass <GraspingState> (roslisp-msg-protocol:ros-message)
  ((object_in_gripper
    :reader object_in_gripper
    :initarg :object_in_gripper
    :type cl:boolean
    :initform cl:nil)
   (object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform ""))
)

(cl:defclass GraspingState (<GraspingState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspingState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspingState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-msg:<GraspingState> is deprecated: use rail_manipulation_msgs-msg:GraspingState instead.")))

(cl:ensure-generic-function 'object_in_gripper-val :lambda-list '(m))
(cl:defmethod object_in_gripper-val ((m <GraspingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:object_in_gripper-val is deprecated.  Use rail_manipulation_msgs-msg:object_in_gripper instead.")
  (object_in_gripper m))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <GraspingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:object_name-val is deprecated.  Use rail_manipulation_msgs-msg:object_name instead.")
  (object_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspingState>) ostream)
  "Serializes a message object of type '<GraspingState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'object_in_gripper) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspingState>) istream)
  "Deserializes a message object of type '<GraspingState>"
    (cl:setf (cl:slot-value msg 'object_in_gripper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspingState>)))
  "Returns string type for a message object of type '<GraspingState>"
  "rail_manipulation_msgs/GraspingState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspingState)))
  "Returns string type for a message object of type 'GraspingState"
  "rail_manipulation_msgs/GraspingState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspingState>)))
  "Returns md5sum for a message object of type '<GraspingState>"
  "a13c2818bf8b302fb88a9eb9ee906ba0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspingState)))
  "Returns md5sum for a message object of type 'GraspingState"
  "a13c2818bf8b302fb88a9eb9ee906ba0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspingState>)))
  "Returns full string definition for message of type '<GraspingState>"
  (cl:format cl:nil "bool object_in_gripper  # True if an object is in the gripper~%string object_name      # Name of the object in the gripper, if object_in_gripper is true~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspingState)))
  "Returns full string definition for message of type 'GraspingState"
  (cl:format cl:nil "bool object_in_gripper  # True if an object is in the gripper~%string object_name      # Name of the object in the gripper, if object_in_gripper is true~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspingState>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'object_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspingState>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspingState
    (cl:cons ':object_in_gripper (object_in_gripper msg))
    (cl:cons ':object_name (object_name msg))
))
