;; Auto-generated. Do not edit!


(when (boundp 'task3::object_frame_data)
  (if (not (find-package "TASK3"))
    (make-package "TASK3"))
  (shadow 'object_frame_data (find-package "TASK3")))
(unless (find-package "TASK3::OBJECT_FRAME_DATA")
  (make-package "TASK3::OBJECT_FRAME_DATA"))
(unless (find-package "TASK3::OBJECT_FRAME_DATAREQUEST")
  (make-package "TASK3::OBJECT_FRAME_DATAREQUEST"))
(unless (find-package "TASK3::OBJECT_FRAME_DATARESPONSE")
  (make-package "TASK3::OBJECT_FRAME_DATARESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass task3::object_frame_dataRequest
  :super ros::object
  :slots ())

(defmethod task3::object_frame_dataRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass task3::object_frame_dataResponse
  :super ros::object
  :slots (_header _pose ))

(defmethod task3::object_frame_dataResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass task3::object_frame_data
  :super ros::object
  :slots ())

(setf (get task3::object_frame_data :md5sum-) "d3812c3cbc69362b77dc0b19b345f8f5")
(setf (get task3::object_frame_data :datatype-) "task3/object_frame_data")
(setf (get task3::object_frame_data :request) task3::object_frame_dataRequest)
(setf (get task3::object_frame_data :response) task3::object_frame_dataResponse)

(defmethod task3::object_frame_dataRequest
  (:response () (instance task3::object_frame_dataResponse :init)))

(setf (get task3::object_frame_dataRequest :md5sum-) "d3812c3cbc69362b77dc0b19b345f8f5")
(setf (get task3::object_frame_dataRequest :datatype-) "task3/object_frame_dataRequest")
(setf (get task3::object_frame_dataRequest :definition-)
      "---
std_msgs/Header header
geometry_msgs/Pose pose


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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get task3::object_frame_dataResponse :md5sum-) "d3812c3cbc69362b77dc0b19b345f8f5")
(setf (get task3::object_frame_dataResponse :datatype-) "task3/object_frame_dataResponse")
(setf (get task3::object_frame_dataResponse :definition-)
      "---
std_msgs/Header header
geometry_msgs/Pose pose


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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :task3/object_frame_data "d3812c3cbc69362b77dc0b19b345f8f5")


