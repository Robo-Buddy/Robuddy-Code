;; Auto-generated. Do not edit!


(when (boundp 'vector_msgs::CtlParams)
  (if (not (find-package "VECTOR_MSGS"))
    (make-package "VECTOR_MSGS"))
  (shadow 'CtlParams (find-package "VECTOR_MSGS")))
(unless (find-package "VECTOR_MSGS::CTLPARAMS")
  (make-package "VECTOR_MSGS::CTLPARAMS"))

(in-package "ROS")
;;//! \htmlinclude CtlParams.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vector_msgs::CtlParams
  :super ros::object
  :slots (_header _p_gain_rps_per_rps _i_gain_rps_per_rad _d_gain_rps_per_rps2 _fdfwd_gain_rps_per_motor_rps _p_error_limit_rps _i_error_limit_rad _d_error_limit_rps2 _i_error_drain_rate_rad_per_frame _output_limit_rps _input_target_limit_rps _control_tuning_unlocked ))

(defmethod vector_msgs::CtlParams
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:p_gain_rps_per_rps __p_gain_rps_per_rps) 0.0)
    ((:i_gain_rps_per_rad __i_gain_rps_per_rad) 0.0)
    ((:d_gain_rps_per_rps2 __d_gain_rps_per_rps2) 0.0)
    ((:fdfwd_gain_rps_per_motor_rps __fdfwd_gain_rps_per_motor_rps) 0.0)
    ((:p_error_limit_rps __p_error_limit_rps) 0.0)
    ((:i_error_limit_rad __i_error_limit_rad) 0.0)
    ((:d_error_limit_rps2 __d_error_limit_rps2) 0.0)
    ((:i_error_drain_rate_rad_per_frame __i_error_drain_rate_rad_per_frame) 0.0)
    ((:output_limit_rps __output_limit_rps) 0.0)
    ((:input_target_limit_rps __input_target_limit_rps) 0.0)
    ((:control_tuning_unlocked __control_tuning_unlocked) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _p_gain_rps_per_rps (float __p_gain_rps_per_rps))
   (setq _i_gain_rps_per_rad (float __i_gain_rps_per_rad))
   (setq _d_gain_rps_per_rps2 (float __d_gain_rps_per_rps2))
   (setq _fdfwd_gain_rps_per_motor_rps (float __fdfwd_gain_rps_per_motor_rps))
   (setq _p_error_limit_rps (float __p_error_limit_rps))
   (setq _i_error_limit_rad (float __i_error_limit_rad))
   (setq _d_error_limit_rps2 (float __d_error_limit_rps2))
   (setq _i_error_drain_rate_rad_per_frame (float __i_error_drain_rate_rad_per_frame))
   (setq _output_limit_rps (float __output_limit_rps))
   (setq _input_target_limit_rps (float __input_target_limit_rps))
   (setq _control_tuning_unlocked __control_tuning_unlocked)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:p_gain_rps_per_rps
   (&optional __p_gain_rps_per_rps)
   (if __p_gain_rps_per_rps (setq _p_gain_rps_per_rps __p_gain_rps_per_rps)) _p_gain_rps_per_rps)
  (:i_gain_rps_per_rad
   (&optional __i_gain_rps_per_rad)
   (if __i_gain_rps_per_rad (setq _i_gain_rps_per_rad __i_gain_rps_per_rad)) _i_gain_rps_per_rad)
  (:d_gain_rps_per_rps2
   (&optional __d_gain_rps_per_rps2)
   (if __d_gain_rps_per_rps2 (setq _d_gain_rps_per_rps2 __d_gain_rps_per_rps2)) _d_gain_rps_per_rps2)
  (:fdfwd_gain_rps_per_motor_rps
   (&optional __fdfwd_gain_rps_per_motor_rps)
   (if __fdfwd_gain_rps_per_motor_rps (setq _fdfwd_gain_rps_per_motor_rps __fdfwd_gain_rps_per_motor_rps)) _fdfwd_gain_rps_per_motor_rps)
  (:p_error_limit_rps
   (&optional __p_error_limit_rps)
   (if __p_error_limit_rps (setq _p_error_limit_rps __p_error_limit_rps)) _p_error_limit_rps)
  (:i_error_limit_rad
   (&optional __i_error_limit_rad)
   (if __i_error_limit_rad (setq _i_error_limit_rad __i_error_limit_rad)) _i_error_limit_rad)
  (:d_error_limit_rps2
   (&optional __d_error_limit_rps2)
   (if __d_error_limit_rps2 (setq _d_error_limit_rps2 __d_error_limit_rps2)) _d_error_limit_rps2)
  (:i_error_drain_rate_rad_per_frame
   (&optional __i_error_drain_rate_rad_per_frame)
   (if __i_error_drain_rate_rad_per_frame (setq _i_error_drain_rate_rad_per_frame __i_error_drain_rate_rad_per_frame)) _i_error_drain_rate_rad_per_frame)
  (:output_limit_rps
   (&optional __output_limit_rps)
   (if __output_limit_rps (setq _output_limit_rps __output_limit_rps)) _output_limit_rps)
  (:input_target_limit_rps
   (&optional __input_target_limit_rps)
   (if __input_target_limit_rps (setq _input_target_limit_rps __input_target_limit_rps)) _input_target_limit_rps)
  (:control_tuning_unlocked
   (&optional __control_tuning_unlocked)
   (if __control_tuning_unlocked (setq _control_tuning_unlocked __control_tuning_unlocked)) _control_tuning_unlocked)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _p_gain_rps_per_rps
    4
    ;; float32 _i_gain_rps_per_rad
    4
    ;; float32 _d_gain_rps_per_rps2
    4
    ;; float32 _fdfwd_gain_rps_per_motor_rps
    4
    ;; float32 _p_error_limit_rps
    4
    ;; float32 _i_error_limit_rad
    4
    ;; float32 _d_error_limit_rps2
    4
    ;; float32 _i_error_drain_rate_rad_per_frame
    4
    ;; float32 _output_limit_rps
    4
    ;; float32 _input_target_limit_rps
    4
    ;; bool _control_tuning_unlocked
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _p_gain_rps_per_rps
       (sys::poke _p_gain_rps_per_rps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _i_gain_rps_per_rad
       (sys::poke _i_gain_rps_per_rad (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d_gain_rps_per_rps2
       (sys::poke _d_gain_rps_per_rps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fdfwd_gain_rps_per_motor_rps
       (sys::poke _fdfwd_gain_rps_per_motor_rps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _p_error_limit_rps
       (sys::poke _p_error_limit_rps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _i_error_limit_rad
       (sys::poke _i_error_limit_rad (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d_error_limit_rps2
       (sys::poke _d_error_limit_rps2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _i_error_drain_rate_rad_per_frame
       (sys::poke _i_error_drain_rate_rad_per_frame (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _output_limit_rps
       (sys::poke _output_limit_rps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _input_target_limit_rps
       (sys::poke _input_target_limit_rps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _control_tuning_unlocked
       (if _control_tuning_unlocked (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _p_gain_rps_per_rps
     (setq _p_gain_rps_per_rps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _i_gain_rps_per_rad
     (setq _i_gain_rps_per_rad (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d_gain_rps_per_rps2
     (setq _d_gain_rps_per_rps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fdfwd_gain_rps_per_motor_rps
     (setq _fdfwd_gain_rps_per_motor_rps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _p_error_limit_rps
     (setq _p_error_limit_rps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _i_error_limit_rad
     (setq _i_error_limit_rad (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d_error_limit_rps2
     (setq _d_error_limit_rps2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _i_error_drain_rate_rad_per_frame
     (setq _i_error_drain_rate_rad_per_frame (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _output_limit_rps
     (setq _output_limit_rps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _input_target_limit_rps
     (setq _input_target_limit_rps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _control_tuning_unlocked
     (setq _control_tuning_unlocked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get vector_msgs::CtlParams :md5sum-) "93aa6e90d2031cf65eb0758a993f2326")
(setf (get vector_msgs::CtlParams :datatype-) "vector_msgs/CtlParams")
(setf (get vector_msgs::CtlParams :definition-)
      "Header header
float32 p_gain_rps_per_rps
float32 i_gain_rps_per_rad
float32 d_gain_rps_per_rps2
float32 fdfwd_gain_rps_per_motor_rps
float32 p_error_limit_rps
float32 i_error_limit_rad
float32 d_error_limit_rps2
float32 i_error_drain_rate_rad_per_frame
float32 output_limit_rps
float32 input_target_limit_rps
bool control_tuning_unlocked




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



(provide :vector_msgs/CtlParams "93aa6e90d2031cf65eb0758a993f2326")


