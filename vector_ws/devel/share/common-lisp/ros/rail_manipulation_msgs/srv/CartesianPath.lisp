; Auto-generated. Do not edit!


(cl:in-package rail_manipulation_msgs-srv)


;//! \htmlinclude CartesianPath-request.msg.html

(cl:defclass <CartesianPath-request> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (avoidCollisions
    :reader avoidCollisions
    :initarg :avoidCollisions
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CartesianPath-request (<CartesianPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-srv:<CartesianPath-request> is deprecated: use rail_manipulation_msgs-srv:CartesianPath-request instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <CartesianPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-srv:waypoints-val is deprecated.  Use rail_manipulation_msgs-srv:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'avoidCollisions-val :lambda-list '(m))
(cl:defmethod avoidCollisions-val ((m <CartesianPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-srv:avoidCollisions-val is deprecated.  Use rail_manipulation_msgs-srv:avoidCollisions instead.")
  (avoidCollisions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianPath-request>) ostream)
  "Serializes a message object of type '<CartesianPath-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'avoidCollisions) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianPath-request>) istream)
  "Deserializes a message object of type '<CartesianPath-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'avoidCollisions) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianPath-request>)))
  "Returns string type for a service object of type '<CartesianPath-request>"
  "rail_manipulation_msgs/CartesianPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianPath-request)))
  "Returns string type for a service object of type 'CartesianPath-request"
  "rail_manipulation_msgs/CartesianPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianPath-request>)))
  "Returns md5sum for a message object of type '<CartesianPath-request>"
  "b32f98167e03f87b66fd0385675ba5f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianPath-request)))
  "Returns md5sum for a message object of type 'CartesianPath-request"
  "b32f98167e03f87b66fd0385675ba5f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianPath-request>)))
  "Returns full string definition for message of type '<CartesianPath-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] waypoints~%bool avoidCollisions~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianPath-request)))
  "Returns full string definition for message of type 'CartesianPath-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] waypoints~%bool avoidCollisions~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianPath-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianPath-request
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':avoidCollisions (avoidCollisions msg))
))
;//! \htmlinclude CartesianPath-response.msg.html

(cl:defclass <CartesianPath-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (completion
    :reader completion
    :initarg :completion
    :type cl:float
    :initform 0.0))
)

(cl:defclass CartesianPath-response (<CartesianPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-srv:<CartesianPath-response> is deprecated: use rail_manipulation_msgs-srv:CartesianPath-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CartesianPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-srv:success-val is deprecated.  Use rail_manipulation_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'completion-val :lambda-list '(m))
(cl:defmethod completion-val ((m <CartesianPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-srv:completion-val is deprecated.  Use rail_manipulation_msgs-srv:completion instead.")
  (completion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianPath-response>) ostream)
  "Serializes a message object of type '<CartesianPath-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'completion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianPath-response>) istream)
  "Deserializes a message object of type '<CartesianPath-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'completion) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianPath-response>)))
  "Returns string type for a service object of type '<CartesianPath-response>"
  "rail_manipulation_msgs/CartesianPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianPath-response)))
  "Returns string type for a service object of type 'CartesianPath-response"
  "rail_manipulation_msgs/CartesianPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianPath-response>)))
  "Returns md5sum for a message object of type '<CartesianPath-response>"
  "b32f98167e03f87b66fd0385675ba5f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianPath-response)))
  "Returns md5sum for a message object of type 'CartesianPath-response"
  "b32f98167e03f87b66fd0385675ba5f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianPath-response>)))
  "Returns full string definition for message of type '<CartesianPath-response>"
  (cl:format cl:nil "bool success~%float64 completion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianPath-response)))
  "Returns full string definition for message of type 'CartesianPath-response"
  (cl:format cl:nil "bool success~%float64 completion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianPath-response>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianPath-response
    (cl:cons ':success (success msg))
    (cl:cons ':completion (completion msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CartesianPath)))
  'CartesianPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CartesianPath)))
  'CartesianPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianPath)))
  "Returns string type for a service object of type '<CartesianPath>"
  "rail_manipulation_msgs/CartesianPath")