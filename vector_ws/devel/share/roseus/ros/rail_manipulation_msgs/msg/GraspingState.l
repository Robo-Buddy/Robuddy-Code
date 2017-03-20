;; Auto-generated. Do not edit!


(when (boundp 'rail_manipulation_msgs::GraspingState)
  (if (not (find-package "RAIL_MANIPULATION_MSGS"))
    (make-package "RAIL_MANIPULATION_MSGS"))
  (shadow 'GraspingState (find-package "RAIL_MANIPULATION_MSGS")))
(unless (find-package "RAIL_MANIPULATION_MSGS::GRASPINGSTATE")
  (make-package "RAIL_MANIPULATION_MSGS::GRASPINGSTATE"))

(in-package "ROS")
;;//! \htmlinclude GraspingState.msg.html


(defclass rail_manipulation_msgs::GraspingState
  :super ros::object
  :slots (_object_in_gripper _object_name ))

(defmethod rail_manipulation_msgs::GraspingState
  (:init
   (&key
    ((:object_in_gripper __object_in_gripper) nil)
    ((:object_name __object_name) "")
    )
   (send-super :init)
   (setq _object_in_gripper __object_in_gripper)
   (setq _object_name (string __object_name))
   self)
  (:object_in_gripper
   (&optional __object_in_gripper)
   (if __object_in_gripper (setq _object_in_gripper __object_in_gripper)) _object_in_gripper)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:serialization-length
   ()
   (+
    ;; bool _object_in_gripper
    1
    ;; string _object_name
    4 (length _object_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _object_in_gripper
       (if _object_in_gripper (write-byte -1 s) (write-byte 0 s))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _object_in_gripper
     (setq _object_in_gripper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rail_manipulation_msgs::GraspingState :md5sum-) "a13c2818bf8b302fb88a9eb9ee906ba0")
(setf (get rail_manipulation_msgs::GraspingState :datatype-) "rail_manipulation_msgs/GraspingState")
(setf (get rail_manipulation_msgs::GraspingState :definition-)
      "bool object_in_gripper  # True if an object is in the gripper
string object_name      # Name of the object in the gripper, if object_in_gripper is true
")



(provide :rail_manipulation_msgs/GraspingState "a13c2818bf8b302fb88a9eb9ee906ba0")


