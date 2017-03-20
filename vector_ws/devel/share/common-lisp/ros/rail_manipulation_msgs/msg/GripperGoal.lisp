; Auto-generated. Do not edit!


(cl:in-package rail_manipulation_msgs-msg)


;//! \htmlinclude GripperGoal.msg.html

(cl:defclass <GripperGoal> (roslisp-msg-protocol:ros-message)
  ((close
    :reader close
    :initarg :close
    :type cl:boolean
    :initform cl:nil)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0))
)

(cl:defclass GripperGoal (<GripperGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-msg:<GripperGoal> is deprecated: use rail_manipulation_msgs-msg:GripperGoal instead.")))

(cl:ensure-generic-function 'close-val :lambda-list '(m))
(cl:defmethod close-val ((m <GripperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:close-val is deprecated.  Use rail_manipulation_msgs-msg:close instead.")
  (close m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <GripperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:speed-val is deprecated.  Use rail_manipulation_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <GripperGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:force-val is deprecated.  Use rail_manipulation_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperGoal>) ostream)
  "Serializes a message object of type '<GripperGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'close) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperGoal>) istream)
  "Deserializes a message object of type '<GripperGoal>"
    (cl:setf (cl:slot-value msg 'close) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperGoal>)))
  "Returns string type for a message object of type '<GripperGoal>"
  "rail_manipulation_msgs/GripperGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperGoal)))
  "Returns string type for a message object of type 'GripperGoal"
  "rail_manipulation_msgs/GripperGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperGoal>)))
  "Returns md5sum for a message object of type '<GripperGoal>"
  "ba8c137093baeeb86c98d9ca45e7e1d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperGoal)))
  "Returns md5sum for a message object of type 'GripperGoal"
  "ba8c137093baeeb86c98d9ca45e7e1d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperGoal>)))
  "Returns full string definition for message of type '<GripperGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%bool close      # True for close gripper, false for open gripper~%float64 speed   # Speed the gripper should move at, in the gripper's preferred units~%float64 force   # Force the gripper should move at, in the gripper's preferred units~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperGoal)))
  "Returns full string definition for message of type 'GripperGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%bool close      # True for close gripper, false for open gripper~%float64 speed   # Speed the gripper should move at, in the gripper's preferred units~%float64 force   # Force the gripper should move at, in the gripper's preferred units~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperGoal>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperGoal
    (cl:cons ':close (close msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':force (force msg))
))
