; Auto-generated. Do not edit!


(cl:in-package rail_manipulation_msgs-srv)


;//! \htmlinclude PrepareGrasp-request.msg.html

(cl:defclass <PrepareGrasp-request> (roslisp-msg-protocol:ros-message)
  ((graspPose
    :reader graspPose
    :initarg :graspPose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass PrepareGrasp-request (<PrepareGrasp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrepareGrasp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrepareGrasp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-srv:<PrepareGrasp-request> is deprecated: use rail_manipulation_msgs-srv:PrepareGrasp-request instead.")))

(cl:ensure-generic-function 'graspPose-val :lambda-list '(m))
(cl:defmethod graspPose-val ((m <PrepareGrasp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-srv:graspPose-val is deprecated.  Use rail_manipulation_msgs-srv:graspPose instead.")
  (graspPose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrepareGrasp-request>) ostream)
  "Serializes a message object of type '<PrepareGrasp-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'graspPose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrepareGrasp-request>) istream)
  "Deserializes a message object of type '<PrepareGrasp-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'graspPose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrepareGrasp-request>)))
  "Returns string type for a service object of type '<PrepareGrasp-request>"
  "rail_manipulation_msgs/PrepareGraspRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrepareGrasp-request)))
  "Returns string type for a service object of type 'PrepareGrasp-request"
  "rail_manipulation_msgs/PrepareGraspRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrepareGrasp-request>)))
  "Returns md5sum for a message object of type '<PrepareGrasp-request>"
  "8918ac08fe533980834453f23389b29a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrepareGrasp-request)))
  "Returns md5sum for a message object of type 'PrepareGrasp-request"
  "8918ac08fe533980834453f23389b29a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrepareGrasp-request>)))
  "Returns full string definition for message of type '<PrepareGrasp-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped graspPose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrepareGrasp-request)))
  "Returns full string definition for message of type 'PrepareGrasp-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped graspPose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrepareGrasp-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'graspPose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrepareGrasp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PrepareGrasp-request
    (cl:cons ':graspPose (graspPose msg))
))
;//! \htmlinclude PrepareGrasp-response.msg.html

(cl:defclass <PrepareGrasp-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PrepareGrasp-response (<PrepareGrasp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrepareGrasp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrepareGrasp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-srv:<PrepareGrasp-response> is deprecated: use rail_manipulation_msgs-srv:PrepareGrasp-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PrepareGrasp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-srv:success-val is deprecated.  Use rail_manipulation_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrepareGrasp-response>) ostream)
  "Serializes a message object of type '<PrepareGrasp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrepareGrasp-response>) istream)
  "Deserializes a message object of type '<PrepareGrasp-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrepareGrasp-response>)))
  "Returns string type for a service object of type '<PrepareGrasp-response>"
  "rail_manipulation_msgs/PrepareGraspResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrepareGrasp-response)))
  "Returns string type for a service object of type 'PrepareGrasp-response"
  "rail_manipulation_msgs/PrepareGraspResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrepareGrasp-response>)))
  "Returns md5sum for a message object of type '<PrepareGrasp-response>"
  "8918ac08fe533980834453f23389b29a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrepareGrasp-response)))
  "Returns md5sum for a message object of type 'PrepareGrasp-response"
  "8918ac08fe533980834453f23389b29a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrepareGrasp-response>)))
  "Returns full string definition for message of type '<PrepareGrasp-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrepareGrasp-response)))
  "Returns full string definition for message of type 'PrepareGrasp-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrepareGrasp-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrepareGrasp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PrepareGrasp-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PrepareGrasp)))
  'PrepareGrasp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PrepareGrasp)))
  'PrepareGrasp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrepareGrasp)))
  "Returns string type for a service object of type '<PrepareGrasp>"
  "rail_manipulation_msgs/PrepareGrasp")