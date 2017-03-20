; Auto-generated. Do not edit!


(cl:in-package rail_manipulation_msgs-msg)


;//! \htmlinclude MoveToPoseGoal.msg.html

(cl:defclass <MoveToPoseGoal> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (planningTime
    :reader planningTime
    :initarg :planningTime
    :type cl:float
    :initform 0.0)
   (jointStateDifference
    :reader jointStateDifference
    :initarg :jointStateDifference
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveToPoseGoal (<MoveToPoseGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToPoseGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToPoseGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-msg:<MoveToPoseGoal> is deprecated: use rail_manipulation_msgs-msg:MoveToPoseGoal instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MoveToPoseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:pose-val is deprecated.  Use rail_manipulation_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'planningTime-val :lambda-list '(m))
(cl:defmethod planningTime-val ((m <MoveToPoseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:planningTime-val is deprecated.  Use rail_manipulation_msgs-msg:planningTime instead.")
  (planningTime m))

(cl:ensure-generic-function 'jointStateDifference-val :lambda-list '(m))
(cl:defmethod jointStateDifference-val ((m <MoveToPoseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:jointStateDifference-val is deprecated.  Use rail_manipulation_msgs-msg:jointStateDifference instead.")
  (jointStateDifference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToPoseGoal>) ostream)
  "Serializes a message object of type '<MoveToPoseGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'planningTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'jointStateDifference))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToPoseGoal>) istream)
  "Deserializes a message object of type '<MoveToPoseGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'planningTime) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jointStateDifference) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToPoseGoal>)))
  "Returns string type for a message object of type '<MoveToPoseGoal>"
  "rail_manipulation_msgs/MoveToPoseGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToPoseGoal)))
  "Returns string type for a message object of type 'MoveToPoseGoal"
  "rail_manipulation_msgs/MoveToPoseGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToPoseGoal>)))
  "Returns md5sum for a message object of type '<MoveToPoseGoal>"
  "884ac5e0a74a1525f80333a77a4292d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToPoseGoal)))
  "Returns md5sum for a message object of type 'MoveToPoseGoal"
  "884ac5e0a74a1525f80333a77a4292d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToPoseGoal>)))
  "Returns full string definition for message of type '<MoveToPoseGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped pose   # End-effector pose goal for planning~%float32 planningTime      # Maximum planning time, defaults to 5 seconds if unset~%float64 jointStateDifference   # Maximum difference in joint angles allowed between start and goal pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToPoseGoal)))
  "Returns full string definition for message of type 'MoveToPoseGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped pose   # End-effector pose goal for planning~%float32 planningTime      # Maximum planning time, defaults to 5 seconds if unset~%float64 jointStateDifference   # Maximum difference in joint angles allowed between start and goal pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToPoseGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToPoseGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToPoseGoal
    (cl:cons ':pose (pose msg))
    (cl:cons ':planningTime (planningTime msg))
    (cl:cons ':jointStateDifference (jointStateDifference msg))
))
