;; Auto-generated. Do not edit!


(when (boundp 'wpi_jaco_msgs::JacoFK)
  (if (not (find-package "WPI_JACO_MSGS"))
    (make-package "WPI_JACO_MSGS"))
  (shadow 'JacoFK (find-package "WPI_JACO_MSGS")))
(unless (find-package "WPI_JACO_MSGS::JACOFK")
  (make-package "WPI_JACO_MSGS::JACOFK"))
(unless (find-package "WPI_JACO_MSGS::JACOFKREQUEST")
  (make-package "WPI_JACO_MSGS::JACOFKREQUEST"))
(unless (find-package "WPI_JACO_MSGS::JACOFKRESPONSE")
  (make-package "WPI_JACO_MSGS::JACOFKRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass wpi_jaco_msgs::JacoFKRequest
  :super ros::object
  :slots (_joints ))

(defmethod wpi_jaco_msgs::JacoFKRequest
  (:init
   (&key
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joints __joints)
   self)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:serialization-length
   ()
   (+
    ;; float32[] _joints
    (* 4    (length _joints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass wpi_jaco_msgs::JacoFKResponse
  :super ros::object
  :slots (_handPose ))

(defmethod wpi_jaco_msgs::JacoFKResponse
  (:init
   (&key
    ((:handPose __handPose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _handPose __handPose)
   self)
  (:handPose
   (&rest __handPose)
   (if (keywordp (car __handPose))
       (send* _handPose __handPose)
     (progn
       (if __handPose (setq _handPose (car __handPose)))
       _handPose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _handPose
    (send _handPose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _handPose
       (send _handPose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _handPose
     (send _handPose :deserialize buf ptr-) (incf ptr- (send _handPose :serialization-length))
   ;;
   self)
  )

(defclass wpi_jaco_msgs::JacoFK
  :super ros::object
  :slots ())

(setf (get wpi_jaco_msgs::JacoFK :md5sum-) "c50123dac67d739b4055eead59e5c12f")
(setf (get wpi_jaco_msgs::JacoFK :datatype-) "wpi_jaco_msgs/JacoFK")
(setf (get wpi_jaco_msgs::JacoFK :request) wpi_jaco_msgs::JacoFKRequest)
(setf (get wpi_jaco_msgs::JacoFK :response) wpi_jaco_msgs::JacoFKResponse)

(defmethod wpi_jaco_msgs::JacoFKRequest
  (:response () (instance wpi_jaco_msgs::JacoFKResponse :init)))

(setf (get wpi_jaco_msgs::JacoFKRequest :md5sum-) "c50123dac67d739b4055eead59e5c12f")
(setf (get wpi_jaco_msgs::JacoFKRequest :datatype-) "wpi_jaco_msgs/JacoFKRequest")
(setf (get wpi_jaco_msgs::JacoFKRequest :definition-)
      "float32[] joints
---
geometry_msgs/PoseStamped handPose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

(setf (get wpi_jaco_msgs::JacoFKResponse :md5sum-) "c50123dac67d739b4055eead59e5c12f")
(setf (get wpi_jaco_msgs::JacoFKResponse :datatype-) "wpi_jaco_msgs/JacoFKResponse")
(setf (get wpi_jaco_msgs::JacoFKResponse :definition-)
      "float32[] joints
---
geometry_msgs/PoseStamped handPose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :wpi_jaco_msgs/JacoFK "c50123dac67d739b4055eead59e5c12f")


