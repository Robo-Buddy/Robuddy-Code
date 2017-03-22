;; Auto-generated. Do not edit!


(when (boundp 'vector_msgs::LinearActuatorCmd)
  (if (not (find-package "VECTOR_MSGS"))
    (make-package "VECTOR_MSGS"))
  (shadow 'LinearActuatorCmd (find-package "VECTOR_MSGS")))
(unless (find-package "VECTOR_MSGS::LINEARACTUATORCMD")
  (make-package "VECTOR_MSGS::LINEARACTUATORCMD"))

(in-package "ROS")
;;//! \htmlinclude LinearActuatorCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vector_msgs::LinearActuatorCmd
  :super ros::object
  :slots (_header _desired_position_m _fdfwd_vel_mps ))

(defmethod vector_msgs::LinearActuatorCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:desired_position_m __desired_position_m) 0.0)
    ((:fdfwd_vel_mps __fdfwd_vel_mps) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _desired_position_m (float __desired_position_m))
   (setq _fdfwd_vel_mps (float __fdfwd_vel_mps))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:desired_position_m
   (&optional __desired_position_m)
   (if __desired_position_m (setq _desired_position_m __desired_position_m)) _desired_position_m)
  (:fdfwd_vel_mps
   (&optional __fdfwd_vel_mps)
   (if __fdfwd_vel_mps (setq _fdfwd_vel_mps __fdfwd_vel_mps)) _fdfwd_vel_mps)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _desired_position_m
    4
    ;; float32 _fdfwd_vel_mps
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _desired_position_m
       (sys::poke _desired_position_m (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fdfwd_vel_mps
       (sys::poke _fdfwd_vel_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _desired_position_m
     (setq _desired_position_m (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fdfwd_vel_mps
     (setq _fdfwd_vel_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vector_msgs::LinearActuatorCmd :md5sum-) "e09ee2452a894d4a26ff82f8c1b80e6a")
(setf (get vector_msgs::LinearActuatorCmd :datatype-) "vector_msgs/LinearActuatorCmd")
(setf (get vector_msgs::LinearActuatorCmd :definition-)
      "Header header
float32 desired_position_m
float32 fdfwd_vel_mps

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



(provide :vector_msgs/LinearActuatorCmd "e09ee2452a894d4a26ff82f8c1b80e6a")


