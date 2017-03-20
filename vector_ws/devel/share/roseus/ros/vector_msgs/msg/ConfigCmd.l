;; Auto-generated. Do not edit!


(when (boundp 'vector_msgs::ConfigCmd)
  (if (not (find-package "VECTOR_MSGS"))
    (make-package "VECTOR_MSGS"))
  (shadow 'ConfigCmd (find-package "VECTOR_MSGS")))
(unless (find-package "VECTOR_MSGS::CONFIGCMD")
  (make-package "VECTOR_MSGS::CONFIGCMD"))

(in-package "ROS")
;;//! \htmlinclude ConfigCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vector_msgs::ConfigCmd
  :super ros::object
  :slots (_header _gp_cmd _gp_param ))

(defmethod vector_msgs::ConfigCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gp_cmd __gp_cmd) "")
    ((:gp_param __gp_param) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gp_cmd (string __gp_cmd))
   (setq _gp_param (round __gp_param))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gp_cmd
   (&optional __gp_cmd)
   (if __gp_cmd (setq _gp_cmd __gp_cmd)) _gp_cmd)
  (:gp_param
   (&optional __gp_param)
   (if __gp_param (setq _gp_param __gp_param)) _gp_param)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _gp_cmd
    4 (length _gp_cmd)
    ;; uint32 _gp_param
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _gp_cmd
       (write-long (length _gp_cmd) s) (princ _gp_cmd s)
     ;; uint32 _gp_param
       (write-long _gp_param s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _gp_cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gp_cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _gp_param
     (setq _gp_param (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vector_msgs::ConfigCmd :md5sum-) "48e0d9e9ce5afb7e797ea6a1ab30254b")
(setf (get vector_msgs::ConfigCmd :datatype-) "vector_msgs/ConfigCmd")
(setf (get vector_msgs::ConfigCmd :definition-)
      "Header header
string gp_cmd
uint32 gp_param

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



(provide :vector_msgs/ConfigCmd "48e0d9e9ce5afb7e797ea6a1ab30254b")


