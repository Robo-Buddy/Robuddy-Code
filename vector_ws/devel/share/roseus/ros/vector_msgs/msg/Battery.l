;; Auto-generated. Do not edit!


(when (boundp 'vector_msgs::Battery)
  (if (not (find-package "VECTOR_MSGS"))
    (make-package "VECTOR_MSGS"))
  (shadow 'Battery (find-package "VECTOR_MSGS")))
(unless (find-package "VECTOR_MSGS::BATTERY")
  (make-package "VECTOR_MSGS::BATTERY"))

(in-package "ROS")
;;//! \htmlinclude Battery.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vector_msgs::Battery
  :super ros::object
  :slots (_header _battery_status _battery_soc _battery_voltage_VDC _battery_current_A0pk _battery_temperature_degC ))

(defmethod vector_msgs::Battery
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:battery_status __battery_status) 0)
    ((:battery_soc __battery_soc) 0.0)
    ((:battery_voltage_VDC __battery_voltage_VDC) 0.0)
    ((:battery_current_A0pk __battery_current_A0pk) 0.0)
    ((:battery_temperature_degC __battery_temperature_degC) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _battery_status (round __battery_status))
   (setq _battery_soc (float __battery_soc))
   (setq _battery_voltage_VDC (float __battery_voltage_VDC))
   (setq _battery_current_A0pk (float __battery_current_A0pk))
   (setq _battery_temperature_degC (float __battery_temperature_degC))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:battery_status
   (&optional __battery_status)
   (if __battery_status (setq _battery_status __battery_status)) _battery_status)
  (:battery_soc
   (&optional __battery_soc)
   (if __battery_soc (setq _battery_soc __battery_soc)) _battery_soc)
  (:battery_voltage_VDC
   (&optional __battery_voltage_VDC)
   (if __battery_voltage_VDC (setq _battery_voltage_VDC __battery_voltage_VDC)) _battery_voltage_VDC)
  (:battery_current_A0pk
   (&optional __battery_current_A0pk)
   (if __battery_current_A0pk (setq _battery_current_A0pk __battery_current_A0pk)) _battery_current_A0pk)
  (:battery_temperature_degC
   (&optional __battery_temperature_degC)
   (if __battery_temperature_degC (setq _battery_temperature_degC __battery_temperature_degC)) _battery_temperature_degC)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _battery_status
    4
    ;; float32 _battery_soc
    4
    ;; float32 _battery_voltage_VDC
    4
    ;; float32 _battery_current_A0pk
    4
    ;; float32 _battery_temperature_degC
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _battery_status
       (write-long _battery_status s)
     ;; float32 _battery_soc
       (sys::poke _battery_soc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_voltage_VDC
       (sys::poke _battery_voltage_VDC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_current_A0pk
       (sys::poke _battery_current_A0pk (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_temperature_degC
       (sys::poke _battery_temperature_degC (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _battery_status
     (setq _battery_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _battery_soc
     (setq _battery_soc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_voltage_VDC
     (setq _battery_voltage_VDC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_current_A0pk
     (setq _battery_current_A0pk (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_temperature_degC
     (setq _battery_temperature_degC (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vector_msgs::Battery :md5sum-) "85435c1f3cc5833c716f70d9ef5261a7")
(setf (get vector_msgs::Battery :datatype-) "vector_msgs/Battery")
(setf (get vector_msgs::Battery :definition-)
      "Header header
uint32  battery_status
float32 battery_soc
float32 battery_voltage_VDC
float32 battery_current_A0pk
float32 battery_temperature_degC

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



(provide :vector_msgs/Battery "85435c1f3cc5833c716f70d9ef5261a7")


