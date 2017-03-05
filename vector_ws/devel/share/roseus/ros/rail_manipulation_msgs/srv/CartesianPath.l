;; Auto-generated. Do not edit!


(when (boundp 'rail_manipulation_msgs::CartesianPath)
  (if (not (find-package "RAIL_MANIPULATION_MSGS"))
    (make-package "RAIL_MANIPULATION_MSGS"))
  (shadow 'CartesianPath (find-package "RAIL_MANIPULATION_MSGS")))
(unless (find-package "RAIL_MANIPULATION_MSGS::CARTESIANPATH")
  (make-package "RAIL_MANIPULATION_MSGS::CARTESIANPATH"))
(unless (find-package "RAIL_MANIPULATION_MSGS::CARTESIANPATHREQUEST")
  (make-package "RAIL_MANIPULATION_MSGS::CARTESIANPATHREQUEST"))
(unless (find-package "RAIL_MANIPULATION_MSGS::CARTESIANPATHRESPONSE")
  (make-package "RAIL_MANIPULATION_MSGS::CARTESIANPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass rail_manipulation_msgs::CartesianPathRequest
  :super ros::object
  :slots (_waypoints _avoidCollisions ))

(defmethod rail_manipulation_msgs::CartesianPathRequest
  (:init
   (&key
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    ((:avoidCollisions __avoidCollisions) nil)
    )
   (send-super :init)
   (setq _waypoints __waypoints)
   (setq _avoidCollisions __avoidCollisions)
   self)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:avoidCollisions
   (&optional __avoidCollisions)
   (if __avoidCollisions (setq _avoidCollisions __avoidCollisions)) _avoidCollisions)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; bool _avoidCollisions
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; bool _avoidCollisions
       (if _avoidCollisions (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _avoidCollisions
     (setq _avoidCollisions (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rail_manipulation_msgs::CartesianPathResponse
  :super ros::object
  :slots (_success _completion ))

(defmethod rail_manipulation_msgs::CartesianPathResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:completion __completion) 0.0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _completion (float __completion))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:completion
   (&optional __completion)
   (if __completion (setq _completion __completion)) _completion)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float64 _completion
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float64 _completion
       (sys::poke _completion (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _completion
     (setq _completion (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rail_manipulation_msgs::CartesianPath
  :super ros::object
  :slots ())

(setf (get rail_manipulation_msgs::CartesianPath :md5sum-) "b32f98167e03f87b66fd0385675ba5f1")
(setf (get rail_manipulation_msgs::CartesianPath :datatype-) "rail_manipulation_msgs/CartesianPath")
(setf (get rail_manipulation_msgs::CartesianPath :request) rail_manipulation_msgs::CartesianPathRequest)
(setf (get rail_manipulation_msgs::CartesianPath :response) rail_manipulation_msgs::CartesianPathResponse)

(defmethod rail_manipulation_msgs::CartesianPathRequest
  (:response () (instance rail_manipulation_msgs::CartesianPathResponse :init)))

(setf (get rail_manipulation_msgs::CartesianPathRequest :md5sum-) "b32f98167e03f87b66fd0385675ba5f1")
(setf (get rail_manipulation_msgs::CartesianPathRequest :datatype-) "rail_manipulation_msgs/CartesianPathRequest")
(setf (get rail_manipulation_msgs::CartesianPathRequest :definition-)
      "geometry_msgs/PoseStamped[] waypoints
bool avoidCollisions

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
bool success
float64 completion
")

(setf (get rail_manipulation_msgs::CartesianPathResponse :md5sum-) "b32f98167e03f87b66fd0385675ba5f1")
(setf (get rail_manipulation_msgs::CartesianPathResponse :datatype-) "rail_manipulation_msgs/CartesianPathResponse")
(setf (get rail_manipulation_msgs::CartesianPathResponse :definition-)
      "geometry_msgs/PoseStamped[] waypoints
bool avoidCollisions

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
bool success
float64 completion
")



(provide :rail_manipulation_msgs/CartesianPath "b32f98167e03f87b66fd0385675ba5f1")


