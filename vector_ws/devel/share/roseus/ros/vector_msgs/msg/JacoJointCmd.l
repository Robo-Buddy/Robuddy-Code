;; Auto-generated. Do not edit!


(when (boundp 'vector_msgs::JacoJointCmd)
  (if (not (find-package "VECTOR_MSGS"))
    (make-package "VECTOR_MSGS"))
  (shadow 'JacoJointCmd (find-package "VECTOR_MSGS")))
(unless (find-package "VECTOR_MSGS::JACOJOINTCMD")
  (make-package "VECTOR_MSGS::JACOJOINTCMD"))

(in-package "ROS")
;;//! \htmlinclude JacoJointCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vector_msgs::JacoJointCmd
  :super ros::object
  :slots (_header _command_type _joint_cmds _vel_limits ))

(defmethod vector_msgs::JacoJointCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command_type __command_type) 0)
    ((:joint_cmds __joint_cmds) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vel_limits __vel_limits) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _command_type (round __command_type))
   (setq _joint_cmds __joint_cmds)
   (setq _vel_limits __vel_limits)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:command_type
   (&optional __command_type)
   (if __command_type (setq _command_type __command_type)) _command_type)
  (:joint_cmds
   (&optional __joint_cmds)
   (if __joint_cmds (setq _joint_cmds __joint_cmds)) _joint_cmds)
  (:vel_limits
   (&optional __vel_limits)
   (if __vel_limits (setq _vel_limits __vel_limits)) _vel_limits)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _command_type
    4
    ;; float32[] _joint_cmds
    (* 4    (length _joint_cmds)) 4
    ;; float32[] _vel_limits
    (* 4    (length _vel_limits)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _command_type
       (write-long _command_type s)
     ;; float32[] _joint_cmds
     (write-long (length _joint_cmds) s)
     (dotimes (i (length _joint_cmds))
       (sys::poke (elt _joint_cmds i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _vel_limits
     (write-long (length _vel_limits) s)
     (dotimes (i (length _vel_limits))
       (sys::poke (elt _vel_limits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _command_type
     (setq _command_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _joint_cmds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_cmds (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_cmds i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _vel_limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vel_limits (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vel_limits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get vector_msgs::JacoJointCmd :md5sum-) "f04ef8268b267f61fee55c68b617df3d")
(setf (get vector_msgs::JacoJointCmd :datatype-) "vector_msgs/JacoJointCmd")
(setf (get vector_msgs::JacoJointCmd :definition-)
      "Header header
uint32 command_type
float32[] joint_cmds
float32[] vel_limits

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :vector_msgs/JacoJointCmd "f04ef8268b267f61fee55c68b617df3d")


