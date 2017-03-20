;; Auto-generated. Do not edit!


(when (boundp 'rail_manipulation_msgs::Grasp)
  (if (not (find-package "RAIL_MANIPULATION_MSGS"))
    (make-package "RAIL_MANIPULATION_MSGS"))
  (shadow 'Grasp (find-package "RAIL_MANIPULATION_MSGS")))
(unless (find-package "RAIL_MANIPULATION_MSGS::GRASP")
  (make-package "RAIL_MANIPULATION_MSGS::GRASP"))

(in-package "ROS")
;;//! \htmlinclude Grasp.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rail_manipulation_msgs::Grasp
  :super ros::object
  :slots (_grasp_pose _eef_frame_id _grasp_id _successes _attempts ))

(defmethod rail_manipulation_msgs::Grasp
  (:init
   (&key
    ((:grasp_pose __grasp_pose) (instance geometry_msgs::PoseStamped :init))
    ((:eef_frame_id __eef_frame_id) "")
    ((:grasp_id __grasp_id) 0)
    ((:successes __successes) 0)
    ((:attempts __attempts) 0)
    )
   (send-super :init)
   (setq _grasp_pose __grasp_pose)
   (setq _eef_frame_id (string __eef_frame_id))
   (setq _grasp_id (round __grasp_id))
   (setq _successes (round __successes))
   (setq _attempts (round __attempts))
   self)
  (:grasp_pose
   (&rest __grasp_pose)
   (if (keywordp (car __grasp_pose))
       (send* _grasp_pose __grasp_pose)
     (progn
       (if __grasp_pose (setq _grasp_pose (car __grasp_pose)))
       _grasp_pose)))
  (:eef_frame_id
   (&optional __eef_frame_id)
   (if __eef_frame_id (setq _eef_frame_id __eef_frame_id)) _eef_frame_id)
  (:grasp_id
   (&optional __grasp_id)
   (if __grasp_id (setq _grasp_id __grasp_id)) _grasp_id)
  (:successes
   (&optional __successes)
   (if __successes (setq _successes __successes)) _successes)
  (:attempts
   (&optional __attempts)
   (if __attempts (setq _attempts __attempts)) _attempts)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _grasp_pose
    (send _grasp_pose :serialization-length)
    ;; string _eef_frame_id
    4 (length _eef_frame_id)
    ;; uint32 _grasp_id
    4
    ;; uint32 _successes
    4
    ;; uint32 _attempts
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _grasp_pose
       (send _grasp_pose :serialize s)
     ;; string _eef_frame_id
       (write-long (length _eef_frame_id) s) (princ _eef_frame_id s)
     ;; uint32 _grasp_id
       (write-long _grasp_id s)
     ;; uint32 _successes
       (write-long _successes s)
     ;; uint32 _attempts
       (write-long _attempts s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _grasp_pose
     (send _grasp_pose :deserialize buf ptr-) (incf ptr- (send _grasp_pose :serialization-length))
   ;; string _eef_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _eef_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _grasp_id
     (setq _grasp_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _successes
     (setq _successes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _attempts
     (setq _attempts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rail_manipulation_msgs::Grasp :md5sum-) "3bd8a373e63322c62388b5740259e40d")
(setf (get rail_manipulation_msgs::Grasp :datatype-) "rail_manipulation_msgs/Grasp")
(setf (get rail_manipulation_msgs::Grasp :definition-)
      "geometry_msgs/PoseStamped grasp_pose  # The grasp pose
string eef_frame_id                   # The coordinate frame of the end-effector used by this grasp
uint32 grasp_id
uint32 successes                      # The number of recorded times this grasp was successful (useful for success rate)
uint32 attempts                       # The number of recorded times this grasp was attempted (useful for success rate)

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



(provide :rail_manipulation_msgs/Grasp "3bd8a373e63322c62388b5740259e40d")


