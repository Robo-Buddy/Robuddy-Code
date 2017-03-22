;; Auto-generated. Do not edit!


(when (boundp 'vector_msgs::Propulsion)
  (if (not (find-package "VECTOR_MSGS"))
    (make-package "VECTOR_MSGS"))
  (shadow 'Propulsion (find-package "VECTOR_MSGS")))
(unless (find-package "VECTOR_MSGS::PROPULSION")
  (make-package "VECTOR_MSGS::PROPULSION"))

(in-package "ROS")
;;//! \htmlinclude Propulsion.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vector_msgs::Propulsion
  :super ros::object
  :slots (_header _wheel_motor_status _wheel_motor_current_A0pk _wheel_motor_speed_rps _wheel_motor_position_rad _linear_motor_status _linear_motor_current_A0pk _linear_motor_speed_rps _linear_motor_position_rad ))

(defmethod vector_msgs::Propulsion
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:wheel_motor_status __wheel_motor_status) (make-array 0 :initial-element 0 :element-type :integer))
    ((:wheel_motor_current_A0pk __wheel_motor_current_A0pk) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wheel_motor_speed_rps __wheel_motor_speed_rps) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wheel_motor_position_rad __wheel_motor_position_rad) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:linear_motor_status __linear_motor_status) 0)
    ((:linear_motor_current_A0pk __linear_motor_current_A0pk) 0.0)
    ((:linear_motor_speed_rps __linear_motor_speed_rps) 0.0)
    ((:linear_motor_position_rad __linear_motor_position_rad) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _wheel_motor_status __wheel_motor_status)
   (setq _wheel_motor_current_A0pk __wheel_motor_current_A0pk)
   (setq _wheel_motor_speed_rps __wheel_motor_speed_rps)
   (setq _wheel_motor_position_rad __wheel_motor_position_rad)
   (setq _linear_motor_status (round __linear_motor_status))
   (setq _linear_motor_current_A0pk (float __linear_motor_current_A0pk))
   (setq _linear_motor_speed_rps (float __linear_motor_speed_rps))
   (setq _linear_motor_position_rad (float __linear_motor_position_rad))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:wheel_motor_status
   (&optional __wheel_motor_status)
   (if __wheel_motor_status (setq _wheel_motor_status __wheel_motor_status)) _wheel_motor_status)
  (:wheel_motor_current_A0pk
   (&optional __wheel_motor_current_A0pk)
   (if __wheel_motor_current_A0pk (setq _wheel_motor_current_A0pk __wheel_motor_current_A0pk)) _wheel_motor_current_A0pk)
  (:wheel_motor_speed_rps
   (&optional __wheel_motor_speed_rps)
   (if __wheel_motor_speed_rps (setq _wheel_motor_speed_rps __wheel_motor_speed_rps)) _wheel_motor_speed_rps)
  (:wheel_motor_position_rad
   (&optional __wheel_motor_position_rad)
   (if __wheel_motor_position_rad (setq _wheel_motor_position_rad __wheel_motor_position_rad)) _wheel_motor_position_rad)
  (:linear_motor_status
   (&optional __linear_motor_status)
   (if __linear_motor_status (setq _linear_motor_status __linear_motor_status)) _linear_motor_status)
  (:linear_motor_current_A0pk
   (&optional __linear_motor_current_A0pk)
   (if __linear_motor_current_A0pk (setq _linear_motor_current_A0pk __linear_motor_current_A0pk)) _linear_motor_current_A0pk)
  (:linear_motor_speed_rps
   (&optional __linear_motor_speed_rps)
   (if __linear_motor_speed_rps (setq _linear_motor_speed_rps __linear_motor_speed_rps)) _linear_motor_speed_rps)
  (:linear_motor_position_rad
   (&optional __linear_motor_position_rad)
   (if __linear_motor_position_rad (setq _linear_motor_position_rad __linear_motor_position_rad)) _linear_motor_position_rad)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _wheel_motor_status
    (* 4    (length _wheel_motor_status)) 4
    ;; float32[] _wheel_motor_current_A0pk
    (* 4    (length _wheel_motor_current_A0pk)) 4
    ;; float32[] _wheel_motor_speed_rps
    (* 4    (length _wheel_motor_speed_rps)) 4
    ;; float32[] _wheel_motor_position_rad
    (* 4    (length _wheel_motor_position_rad)) 4
    ;; uint32 _linear_motor_status
    4
    ;; float32 _linear_motor_current_A0pk
    4
    ;; float32 _linear_motor_speed_rps
    4
    ;; float32 _linear_motor_position_rad
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _wheel_motor_status
     (write-long (length _wheel_motor_status) s)
     (dotimes (i (length _wheel_motor_status))
       (write-long (elt _wheel_motor_status i) s)
       )
     ;; float32[] _wheel_motor_current_A0pk
     (write-long (length _wheel_motor_current_A0pk) s)
     (dotimes (i (length _wheel_motor_current_A0pk))
       (sys::poke (elt _wheel_motor_current_A0pk i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _wheel_motor_speed_rps
     (write-long (length _wheel_motor_speed_rps) s)
     (dotimes (i (length _wheel_motor_speed_rps))
       (sys::poke (elt _wheel_motor_speed_rps i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _wheel_motor_position_rad
     (write-long (length _wheel_motor_position_rad) s)
     (dotimes (i (length _wheel_motor_position_rad))
       (sys::poke (elt _wheel_motor_position_rad i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _linear_motor_status
       (write-long _linear_motor_status s)
     ;; float32 _linear_motor_current_A0pk
       (sys::poke _linear_motor_current_A0pk (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_motor_speed_rps
       (sys::poke _linear_motor_speed_rps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_motor_position_rad
       (sys::poke _linear_motor_position_rad (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[] _wheel_motor_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_motor_status (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wheel_motor_status i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _wheel_motor_current_A0pk
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_motor_current_A0pk (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheel_motor_current_A0pk i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _wheel_motor_speed_rps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_motor_speed_rps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheel_motor_speed_rps i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _wheel_motor_position_rad
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_motor_position_rad (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheel_motor_position_rad i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32 _linear_motor_status
     (setq _linear_motor_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _linear_motor_current_A0pk
     (setq _linear_motor_current_A0pk (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_motor_speed_rps
     (setq _linear_motor_speed_rps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_motor_position_rad
     (setq _linear_motor_position_rad (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vector_msgs::Propulsion :md5sum-) "61491c2b54c7a9e181eff35f997fd6b8")
(setf (get vector_msgs::Propulsion :datatype-) "vector_msgs/Propulsion")
(setf (get vector_msgs::Propulsion :definition-)
      "Header header
uint32[] wheel_motor_status
float32[] wheel_motor_current_A0pk
float32[] wheel_motor_speed_rps
float32[] wheel_motor_position_rad
uint32 linear_motor_status
float32 linear_motor_current_A0pk
float32 linear_motor_speed_rps
float32 linear_motor_position_rad
 



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



(provide :vector_msgs/Propulsion "61491c2b54c7a9e181eff35f997fd6b8")


