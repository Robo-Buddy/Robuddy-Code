;; Auto-generated. Do not edit!


(when (boundp 'rail_manipulation_msgs::PickupResult)
  (if (not (find-package "RAIL_MANIPULATION_MSGS"))
    (make-package "RAIL_MANIPULATION_MSGS"))
  (shadow 'PickupResult (find-package "RAIL_MANIPULATION_MSGS")))
(unless (find-package "RAIL_MANIPULATION_MSGS::PICKUPRESULT")
  (make-package "RAIL_MANIPULATION_MSGS::PICKUPRESULT"))

(in-package "ROS")
;;//! \htmlinclude PickupResult.msg.html


(defclass rail_manipulation_msgs::PickupResult
  :super ros::object
  :slots (_executionSuccess _success ))

(defmethod rail_manipulation_msgs::PickupResult
  (:init
   (&key
    ((:executionSuccess __executionSuccess) nil)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _executionSuccess __executionSuccess)
   (setq _success __success)
   self)
  (:executionSuccess
   (&optional __executionSuccess)
   (if __executionSuccess (setq _executionSuccess __executionSuccess)) _executionSuccess)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _executionSuccess
    1
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _executionSuccess
       (if _executionSuccess (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _executionSuccess
     (setq _executionSuccess (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rail_manipulation_msgs::PickupResult :md5sum-) "5255cc5d9729cec7fd7524dffc953153")
(setf (get rail_manipulation_msgs::PickupResult :datatype-) "rail_manipulation_msgs/PickupResult")
(setf (get rail_manipulation_msgs::PickupResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
bool executionSuccess   # True if the arm could successfully complete motion planning
bool success            # True if the object is verified to be in the gripper after pickup

")



(provide :rail_manipulation_msgs/PickupResult "5255cc5d9729cec7fd7524dffc953153")

