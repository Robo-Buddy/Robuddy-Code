;; Auto-generated. Do not edit!


(when (boundp 'vector_msgs::Status)
  (if (not (find-package "VECTOR_MSGS"))
    (make-package "VECTOR_MSGS"))
  (shadow 'Status (find-package "VECTOR_MSGS")))
(unless (find-package "VECTOR_MSGS::STATUS")
  (make-package "VECTOR_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vector_msgs::Status
  :super ros::object
  :slots (_header _fault_status_words _operational_time _operational_state _dynamic_response _machine_id ))

(defmethod vector_msgs::Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fault_status_words __fault_status_words) (make-array 0 :initial-element 0 :element-type :integer))
    ((:operational_time __operational_time) 0.0)
    ((:operational_state __operational_state) 0)
    ((:dynamic_response __dynamic_response) 0)
    ((:machine_id __machine_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fault_status_words __fault_status_words)
   (setq _operational_time (float __operational_time))
   (setq _operational_state (round __operational_state))
   (setq _dynamic_response (round __dynamic_response))
   (setq _machine_id (round __machine_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fault_status_words
   (&optional __fault_status_words)
   (if __fault_status_words (setq _fault_status_words __fault_status_words)) _fault_status_words)
  (:operational_time
   (&optional __operational_time)
   (if __operational_time (setq _operational_time __operational_time)) _operational_time)
  (:operational_state
   (&optional __operational_state)
   (if __operational_state (setq _operational_state __operational_state)) _operational_state)
  (:dynamic_response
   (&optional __dynamic_response)
   (if __dynamic_response (setq _dynamic_response __dynamic_response)) _dynamic_response)
  (:machine_id
   (&optional __machine_id)
   (if __machine_id (setq _machine_id __machine_id)) _machine_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _fault_status_words
    (* 4    (length _fault_status_words)) 4
    ;; float32 _operational_time
    4
    ;; uint32 _operational_state
    4
    ;; uint32 _dynamic_response
    4
    ;; uint32 _machine_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _fault_status_words
     (write-long (length _fault_status_words) s)
     (dotimes (i (length _fault_status_words))
       (write-long (elt _fault_status_words i) s)
       )
     ;; float32 _operational_time
       (sys::poke _operational_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _operational_state
       (write-long _operational_state s)
     ;; uint32 _dynamic_response
       (write-long _dynamic_response s)
     ;; uint32 _machine_id
       (write-long _machine_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[] _fault_status_words
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fault_status_words (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _fault_status_words i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32 _operational_time
     (setq _operational_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _operational_state
     (setq _operational_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _dynamic_response
     (setq _dynamic_response (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _machine_id
     (setq _machine_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vector_msgs::Status :md5sum-) "dde32396dda94858b879d71dd7ee2e6c")
(setf (get vector_msgs::Status :datatype-) "vector_msgs/Status")
(setf (get vector_msgs::Status :definition-)
      "Header header
uint32[] fault_status_words
float32 operational_time
uint32 operational_state
uint32 dynamic_response
uint32 machine_id

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



(provide :vector_msgs/Status "dde32396dda94858b879d71dd7ee2e6c")


