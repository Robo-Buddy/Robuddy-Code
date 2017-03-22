; Auto-generated. Do not edit!


(cl:in-package task3-srv)


;//! \htmlinclude object_frame_data-request.msg.html

(cl:defclass <object_frame_data-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass object_frame_data-request (<object_frame_data-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object_frame_data-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object_frame_data-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task3-srv:<object_frame_data-request> is deprecated: use task3-srv:object_frame_data-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object_frame_data-request>) ostream)
  "Serializes a message object of type '<object_frame_data-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object_frame_data-request>) istream)
  "Deserializes a message object of type '<object_frame_data-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object_frame_data-request>)))
  "Returns string type for a service object of type '<object_frame_data-request>"
  "task3/object_frame_dataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_frame_data-request)))
  "Returns string type for a service object of type 'object_frame_data-request"
  "task3/object_frame_dataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object_frame_data-request>)))
  "Returns md5sum for a message object of type '<object_frame_data-request>"
  "d3812c3cbc69362b77dc0b19b345f8f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object_frame_data-request)))
  "Returns md5sum for a message object of type 'object_frame_data-request"
  "d3812c3cbc69362b77dc0b19b345f8f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object_frame_data-request>)))
  "Returns full string definition for message of type '<object_frame_data-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object_frame_data-request)))
  "Returns full string definition for message of type 'object_frame_data-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object_frame_data-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object_frame_data-request>))
  "Converts a ROS message object to a list"
  (cl:list 'object_frame_data-request
))
;//! \htmlinclude object_frame_data-response.msg.html

(cl:defclass <object_frame_data-response> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass object_frame_data-response (<object_frame_data-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <object_frame_data-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'object_frame_data-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task3-srv:<object_frame_data-response> is deprecated: use task3-srv:object_frame_data-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <object_frame_data-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task3-srv:header-val is deprecated.  Use task3-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <object_frame_data-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task3-srv:pose-val is deprecated.  Use task3-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <object_frame_data-response>) ostream)
  "Serializes a message object of type '<object_frame_data-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <object_frame_data-response>) istream)
  "Deserializes a message object of type '<object_frame_data-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<object_frame_data-response>)))
  "Returns string type for a service object of type '<object_frame_data-response>"
  "task3/object_frame_dataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_frame_data-response)))
  "Returns string type for a service object of type 'object_frame_data-response"
  "task3/object_frame_dataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<object_frame_data-response>)))
  "Returns md5sum for a message object of type '<object_frame_data-response>"
  "d3812c3cbc69362b77dc0b19b345f8f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'object_frame_data-response)))
  "Returns md5sum for a message object of type 'object_frame_data-response"
  "d3812c3cbc69362b77dc0b19b345f8f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<object_frame_data-response>)))
  "Returns full string definition for message of type '<object_frame_data-response>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'object_frame_data-response)))
  "Returns full string definition for message of type 'object_frame_data-response"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <object_frame_data-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <object_frame_data-response>))
  "Converts a ROS message object to a list"
  (cl:list 'object_frame_data-response
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'object_frame_data)))
  'object_frame_data-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'object_frame_data)))
  'object_frame_data-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'object_frame_data)))
  "Returns string type for a service object of type '<object_frame_data>"
  "task3/object_frame_data")