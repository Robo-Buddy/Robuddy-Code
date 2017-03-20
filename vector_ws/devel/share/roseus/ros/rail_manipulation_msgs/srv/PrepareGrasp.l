;; Auto-generated. Do not edit!


(when (boundp 'rail_manipulation_msgs::PrepareGrasp)
  (if (not (find-package "RAIL_MANIPULATION_MSGS"))
    (make-package "RAIL_MANIPULATION_MSGS"))
  (shadow 'PrepareGrasp (find-package "RAIL_MANIPULATION_MSGS")))
(unless (find-package "RAIL_MANIPULATION_MSGS::PREPAREGRASP")
  (make-package "RAIL_MANIPULATION_MSGS::PREPAREGRASP"))
(unless (find-package "RAIL_MANIPULATION_MSGS::PREPAREGRASPREQUEST")
  (make-package "RAIL_MANIPULATION_MSGS::PREPAREGRASPREQUEST"))
(unless (find-package "RAIL_MANIPULATION_MSGS::PREPAREGRASPRESPONSE")
  (make-package "RAIL_MANIPULATION_MSGS::PREPAREGRASPRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass rail_manipulation_msgs::PrepareGraspRequest
  :super ros::object
  :slots (_graspPose ))

(defmethod rail_manipulation_msgs::PrepareGraspRequest
  (:init
   (&key
    ((:graspPose __graspPose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _graspPose __graspPose)
   self)
  (:graspPose
   (&rest __graspPose)
   (if (keywordp (car __graspPose))
       (send* _graspPose __graspPose)
     (progn
       (if __graspPose (setq _graspPose (car __graspPose)))
       _graspPose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _graspPose
    (send _graspPose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _graspPose
       (send _graspPose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _graspPose
     (send _graspPose :deserialize buf ptr-) (incf ptr- (send _graspPose :serialization-length))
   ;;
   self)
  )

(defclass rail_manipulation_msgs::PrepareGraspResponse
  :super ros::object
  :slots (_success ))

(defmethod rail_manipulation_msgs::PrepareGraspResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rail_manipulation_msgs::PrepareGrasp
  :super ros::object
  :slots ())

(setf (get rail_manipulation_msgs::PrepareGrasp :md5sum-) "8918ac08fe533980834453f23389b29a")
(setf (get rail_manipulation_msgs::PrepareGrasp :datatype-) "rail_manipulation_msgs/PrepareGrasp")
(setf (get rail_manipulation_msgs::PrepareGrasp :request) rail_manipulation_msgs::PrepareGraspRequest)
(setf (get rail_manipulation_msgs::PrepareGrasp :response) rail_manipulation_msgs::PrepareGraspResponse)

(defmethod rail_manipulation_msgs::PrepareGraspRequest
  (:response () (instance rail_manipulation_msgs::PrepareGraspResponse :init)))

(setf (get rail_manipulation_msgs::PrepareGraspRequest :md5sum-) "8918ac08fe533980834453f23389b29a")
(setf (get rail_manipulation_msgs::PrepareGraspRequest :datatype-) "rail_manipulation_msgs/PrepareGraspRequest")
(setf (get rail_manipulation_msgs::PrepareGraspRequest :definition-)
      "geometry_msgs/PoseStamped graspPose

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
")

(setf (get rail_manipulation_msgs::PrepareGraspResponse :md5sum-) "8918ac08fe533980834453f23389b29a")
(setf (get rail_manipulation_msgs::PrepareGraspResponse :datatype-) "rail_manipulation_msgs/PrepareGraspResponse")
(setf (get rail_manipulation_msgs::PrepareGraspResponse :definition-)
      "geometry_msgs/PoseStamped graspPose

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
")



(provide :rail_manipulation_msgs/PrepareGrasp "8918ac08fe533980834453f23389b29a")


