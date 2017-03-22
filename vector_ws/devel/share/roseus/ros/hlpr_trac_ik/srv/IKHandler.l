;; Auto-generated. Do not edit!


(when (boundp 'hlpr_trac_ik::IKHandler)
  (if (not (find-package "HLPR_TRAC_IK"))
    (make-package "HLPR_TRAC_IK"))
  (shadow 'IKHandler (find-package "HLPR_TRAC_IK")))
(unless (find-package "HLPR_TRAC_IK::IKHANDLER")
  (make-package "HLPR_TRAC_IK::IKHANDLER"))
(unless (find-package "HLPR_TRAC_IK::IKHANDLERREQUEST")
  (make-package "HLPR_TRAC_IK::IKHANDLERREQUEST"))
(unless (find-package "HLPR_TRAC_IK::IKHANDLERRESPONSE")
  (make-package "HLPR_TRAC_IK::IKHANDLERRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass hlpr_trac_ik::IKHandlerRequest
  :super ros::object
  :slots (_origin _goals _tolerance _verbose ))

(defmethod hlpr_trac_ik::IKHandlerRequest
  (:init
   (&key
    ((:origin __origin) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:goals __goals) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:tolerance __tolerance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:verbose __verbose) nil)
    )
   (send-super :init)
   (setq _origin __origin)
   (setq _goals __goals)
   (setq _tolerance __tolerance)
   (setq _verbose __verbose)
   self)
  (:origin
   (&optional __origin)
   (if __origin (setq _origin __origin)) _origin)
  (:goals
   (&rest __goals)
   (if (keywordp (car __goals))
       (send* _goals __goals)
     (progn
       (if __goals (setq _goals (car __goals)))
       _goals)))
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:verbose
   (&optional __verbose)
   (if __verbose (setq _verbose __verbose)) _verbose)
  (:serialization-length
   ()
   (+
    ;; float32[] _origin
    (* 4    (length _origin)) 4
    ;; geometry_msgs/Pose[] _goals
    (apply #'+ (send-all _goals :serialization-length)) 4
    ;; float32[] _tolerance
    (* 4    (length _tolerance)) 4
    ;; bool _verbose
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _origin
     (write-long (length _origin) s)
     (dotimes (i (length _origin))
       (sys::poke (elt _origin i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Pose[] _goals
     (write-long (length _goals) s)
     (dolist (elem _goals)
       (send elem :serialize s)
       )
     ;; float32[] _tolerance
     (write-long (length _tolerance) s)
     (dotimes (i (length _tolerance))
       (sys::poke (elt _tolerance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _verbose
       (if _verbose (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _origin
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _origin (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _origin i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose[] _goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goals (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _tolerance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tolerance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tolerance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _verbose
     (setq _verbose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hlpr_trac_ik::IKHandlerResponse
  :super ros::object
  :slots (_poses _success ))

(defmethod hlpr_trac_ik::IKHandlerResponse
  (:init
   (&key
    ((:poses __poses) (let (r) (dotimes (i 0) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _poses __poses)
   (setq _success __success)
   self)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectoryPoint[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectoryPoint[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectoryPoint[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hlpr_trac_ik::IKHandler
  :super ros::object
  :slots ())

(setf (get hlpr_trac_ik::IKHandler :md5sum-) "9aa495ca2916258a4ba1dba1ad308475")
(setf (get hlpr_trac_ik::IKHandler :datatype-) "hlpr_trac_ik/IKHandler")
(setf (get hlpr_trac_ik::IKHandler :request) hlpr_trac_ik::IKHandlerRequest)
(setf (get hlpr_trac_ik::IKHandler :response) hlpr_trac_ik::IKHandlerResponse)

(defmethod hlpr_trac_ik::IKHandlerRequest
  (:response () (instance hlpr_trac_ik::IKHandlerResponse :init)))

(setf (get hlpr_trac_ik::IKHandlerRequest :md5sum-) "9aa495ca2916258a4ba1dba1ad308475")
(setf (get hlpr_trac_ik::IKHandlerRequest :datatype-) "hlpr_trac_ik/IKHandlerRequest")
(setf (get hlpr_trac_ik::IKHandlerRequest :definition-)
      "float32[] origin
geometry_msgs/Pose[] goals
float32[] tolerance
bool verbose

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
trajectory_msgs/JointTrajectoryPoint[] poses
bool success


================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
")

(setf (get hlpr_trac_ik::IKHandlerResponse :md5sum-) "9aa495ca2916258a4ba1dba1ad308475")
(setf (get hlpr_trac_ik::IKHandlerResponse :datatype-) "hlpr_trac_ik/IKHandlerResponse")
(setf (get hlpr_trac_ik::IKHandlerResponse :definition-)
      "float32[] origin
geometry_msgs/Pose[] goals
float32[] tolerance
bool verbose

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
trajectory_msgs/JointTrajectoryPoint[] poses
bool success


================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
")



(provide :hlpr_trac_ik/IKHandler "9aa495ca2916258a4ba1dba1ad308475")


