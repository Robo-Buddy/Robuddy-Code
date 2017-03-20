; Auto-generated. Do not edit!


(cl:in-package rail_manipulation_msgs-msg)


;//! \htmlinclude MoveToJointPoseGoal.msg.html

(cl:defclass <MoveToJointPoseGoal> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (planningTime
    :reader planningTime
    :initarg :planningTime
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveToJointPoseGoal (<MoveToJointPoseGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToJointPoseGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToJointPoseGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-msg:<MoveToJointPoseGoal> is deprecated: use rail_manipulation_msgs-msg:MoveToJointPoseGoal instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <MoveToJointPoseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:joints-val is deprecated.  Use rail_manipulation_msgs-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'planningTime-val :lambda-list '(m))
(cl:defmethod planningTime-val ((m <MoveToJointPoseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:planningTime-val is deprecated.  Use rail_manipulation_msgs-msg:planningTime instead.")
  (planningTime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToJointPoseGoal>) ostream)
  "Serializes a message object of type '<MoveToJointPoseGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joints))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'planningTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToJointPoseGoal>) istream)
  "Deserializes a message object of type '<MoveToJointPoseGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'planningTime) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToJointPoseGoal>)))
  "Returns string type for a message object of type '<MoveToJointPoseGoal>"
  "rail_manipulation_msgs/MoveToJointPoseGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToJointPoseGoal)))
  "Returns string type for a message object of type 'MoveToJointPoseGoal"
  "rail_manipulation_msgs/MoveToJointPoseGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToJointPoseGoal>)))
  "Returns md5sum for a message object of type '<MoveToJointPoseGoal>"
  "290df0c43aba8e112c66bc523496042e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToJointPoseGoal)))
  "Returns md5sum for a message object of type 'MoveToJointPoseGoal"
  "290df0c43aba8e112c66bc523496042e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToJointPoseGoal>)))
  "Returns full string definition for message of type '<MoveToJointPoseGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32[] joints      # Full set of arm joint angles as a planning goal~%float32 planningTime  # Maximum planning time, defaults to 5 seconds if unset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToJointPoseGoal)))
  "Returns full string definition for message of type 'MoveToJointPoseGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32[] joints      # Full set of arm joint angles as a planning goal~%float32 planningTime  # Maximum planning time, defaults to 5 seconds if unset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToJointPoseGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToJointPoseGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToJointPoseGoal
    (cl:cons ':joints (joints msg))
    (cl:cons ':planningTime (planningTime msg))
))
