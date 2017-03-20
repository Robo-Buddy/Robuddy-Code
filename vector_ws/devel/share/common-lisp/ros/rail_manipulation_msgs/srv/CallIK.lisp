; Auto-generated. Do not edit!


(cl:in-package rail_manipulation_msgs-srv)


;//! \htmlinclude CallIK-request.msg.html

(cl:defclass <CallIK-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass CallIK-request (<CallIK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CallIK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CallIK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-srv:<CallIK-request> is deprecated: use rail_manipulation_msgs-srv:CallIK-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CallIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-srv:pose-val is deprecated.  Use rail_manipulation_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CallIK-request>) ostream)
  "Serializes a message object of type '<CallIK-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CallIK-request>) istream)
  "Deserializes a message object of type '<CallIK-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CallIK-request>)))
  "Returns string type for a service object of type '<CallIK-request>"
  "rail_manipulation_msgs/CallIKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallIK-request)))
  "Returns string type for a service object of type 'CallIK-request"
  "rail_manipulation_msgs/CallIKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CallIK-request>)))
  "Returns md5sum for a message object of type '<CallIK-request>"
  "538966e8ee9bb323633dfda1747087d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CallIK-request)))
  "Returns md5sum for a message object of type 'CallIK-request"
  "538966e8ee9bb323633dfda1747087d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CallIK-request>)))
  "Returns full string definition for message of type '<CallIK-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CallIK-request)))
  "Returns full string definition for message of type 'CallIK-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CallIK-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CallIK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CallIK-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude CallIK-response.msg.html

(cl:defclass <CallIK-response> (roslisp-msg-protocol:ros-message)
  ((jointPositions
    :reader jointPositions
    :initarg :jointPositions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CallIK-response (<CallIK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CallIK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CallIK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-srv:<CallIK-response> is deprecated: use rail_manipulation_msgs-srv:CallIK-response instead.")))

(cl:ensure-generic-function 'jointPositions-val :lambda-list '(m))
(cl:defmethod jointPositions-val ((m <CallIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-srv:jointPositions-val is deprecated.  Use rail_manipulation_msgs-srv:jointPositions instead.")
  (jointPositions m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CallIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-srv:success-val is deprecated.  Use rail_manipulation_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CallIK-response>) ostream)
  "Serializes a message object of type '<CallIK-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'jointPositions))))
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
   (cl:slot-value msg 'jointPositions))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CallIK-response>) istream)
  "Deserializes a message object of type '<CallIK-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'jointPositions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'jointPositions)))
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
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CallIK-response>)))
  "Returns string type for a service object of type '<CallIK-response>"
  "rail_manipulation_msgs/CallIKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallIK-response)))
  "Returns string type for a service object of type 'CallIK-response"
  "rail_manipulation_msgs/CallIKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CallIK-response>)))
  "Returns md5sum for a message object of type '<CallIK-response>"
  "538966e8ee9bb323633dfda1747087d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CallIK-response)))
  "Returns md5sum for a message object of type 'CallIK-response"
  "538966e8ee9bb323633dfda1747087d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CallIK-response>)))
  "Returns full string definition for message of type '<CallIK-response>"
  (cl:format cl:nil "float64[] jointPositions~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CallIK-response)))
  "Returns full string definition for message of type 'CallIK-response"
  (cl:format cl:nil "float64[] jointPositions~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CallIK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'jointPositions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CallIK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CallIK-response
    (cl:cons ':jointPositions (jointPositions msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CallIK)))
  'CallIK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CallIK)))
  'CallIK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallIK)))
  "Returns string type for a service object of type '<CallIK>"
  "rail_manipulation_msgs/CallIK")