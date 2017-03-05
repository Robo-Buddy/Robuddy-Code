;; Auto-generated. Do not edit!


(when (boundp 'rail_manipulation_msgs::CallIK)
  (if (not (find-package "RAIL_MANIPULATION_MSGS"))
    (make-package "RAIL_MANIPULATION_MSGS"))
  (shadow 'CallIK (find-package "RAIL_MANIPULATION_MSGS")))
(unless (find-package "RAIL_MANIPULATION_MSGS::CALLIK")
  (make-package "RAIL_MANIPULATION_MSGS::CALLIK"))
(unless (find-package "RAIL_MANIPULATION_MSGS::CALLIKREQUEST")
  (make-package "RAIL_MANIPULATION_MSGS::CALLIKREQUEST"))
(unless (find-package "RAIL_MANIPULATION_MSGS::CALLIKRESPONSE")
  (make-package "RAIL_MANIPULATION_MSGS::CALLIKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass rail_manipulation_msgs::CallIKRequest
  :super ros::object
  :slots (_pose ))

(defmethod rail_manipulation_msgs::CallIKRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
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
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass rail_manipulation_msgs::CallIKResponse
  :super ros::object
  :slots (_jointPositions _success ))

(defmethod rail_manipulation_msgs::CallIKResponse
  (:init
   (&key
    ((:jointPositions __jointPositions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _jointPositions __jointPositions)
   (setq _success __success)
   self)
  (:jointPositions
   (&optional __jointPositions)
   (if __jointPositions (setq _jointPositions __jointPositions)) _jointPositions)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64[] _jointPositions
    (* 8    (length _jointPositions)) 4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _jointPositions
     (write-long (length _jointPositions) s)
     (dotimes (i (length _jointPositions))
       (sys::poke (elt _jointPositions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _jointPositions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jointPositions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _jointPositions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rail_manipulation_msgs::CallIK
  :super ros::object
  :slots ())

(setf (get rail_manipulation_msgs::CallIK :md5sum-) "538966e8ee9bb323633dfda1747087d9")
(setf (get rail_manipulation_msgs::CallIK :datatype-) "rail_manipulation_msgs/CallIK")
(setf (get rail_manipulation_msgs::CallIK :request) rail_manipulation_msgs::CallIKRequest)
(setf (get rail_manipulation_msgs::CallIK :response) rail_manipulation_msgs::CallIKResponse)

(defmethod rail_manipulation_msgs::CallIKRequest
  (:response () (instance rail_manipulation_msgs::CallIKResponse :init)))

(setf (get rail_manipulation_msgs::CallIKRequest :md5sum-) "538966e8ee9bb323633dfda1747087d9")
(setf (get rail_manipulation_msgs::CallIKRequest :datatype-) "rail_manipulation_msgs/CallIKRequest")
(setf (get rail_manipulation_msgs::CallIKRequest :definition-)
      "geometry_msgs/PoseStamped pose

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
---
float64[] jointPositions
bool success

")

(setf (get rail_manipulation_msgs::CallIKResponse :md5sum-) "538966e8ee9bb323633dfda1747087d9")
(setf (get rail_manipulation_msgs::CallIKResponse :datatype-) "rail_manipulation_msgs/CallIKResponse")
(setf (get rail_manipulation_msgs::CallIKResponse :definition-)
      "geometry_msgs/PoseStamped pose

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
---
float64[] jointPositions
bool success

")



(provide :rail_manipulation_msgs/CallIK "538966e8ee9bb323633dfda1747087d9")


