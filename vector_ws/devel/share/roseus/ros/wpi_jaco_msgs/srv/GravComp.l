;; Auto-generated. Do not edit!


(when (boundp 'wpi_jaco_msgs::GravComp)
  (if (not (find-package "WPI_JACO_MSGS"))
    (make-package "WPI_JACO_MSGS"))
  (shadow 'GravComp (find-package "WPI_JACO_MSGS")))
(unless (find-package "WPI_JACO_MSGS::GRAVCOMP")
  (make-package "WPI_JACO_MSGS::GRAVCOMP"))
(unless (find-package "WPI_JACO_MSGS::GRAVCOMPREQUEST")
  (make-package "WPI_JACO_MSGS::GRAVCOMPREQUEST"))
(unless (find-package "WPI_JACO_MSGS::GRAVCOMPRESPONSE")
  (make-package "WPI_JACO_MSGS::GRAVCOMPRESPONSE"))

(in-package "ROS")





(defclass wpi_jaco_msgs::GravCompRequest
  :super ros::object
  :slots (_enableGravComp ))

(defmethod wpi_jaco_msgs::GravCompRequest
  (:init
   (&key
    ((:enableGravComp __enableGravComp) nil)
    )
   (send-super :init)
   (setq _enableGravComp __enableGravComp)
   self)
  (:enableGravComp
   (&optional __enableGravComp)
   (if __enableGravComp (setq _enableGravComp __enableGravComp)) _enableGravComp)
  (:serialization-length
   ()
   (+
    ;; bool _enableGravComp
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enableGravComp
       (if _enableGravComp (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enableGravComp
     (setq _enableGravComp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wpi_jaco_msgs::GravCompResponse
  :super ros::object
  :slots (_success ))

(defmethod wpi_jaco_msgs::GravCompResponse
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

(defclass wpi_jaco_msgs::GravComp
  :super ros::object
  :slots ())

(setf (get wpi_jaco_msgs::GravComp :md5sum-) "9b3823379e0371a824478dadc91ab9ef")
(setf (get wpi_jaco_msgs::GravComp :datatype-) "wpi_jaco_msgs/GravComp")
(setf (get wpi_jaco_msgs::GravComp :request) wpi_jaco_msgs::GravCompRequest)
(setf (get wpi_jaco_msgs::GravComp :response) wpi_jaco_msgs::GravCompResponse)

(defmethod wpi_jaco_msgs::GravCompRequest
  (:response () (instance wpi_jaco_msgs::GravCompResponse :init)))

(setf (get wpi_jaco_msgs::GravCompRequest :md5sum-) "9b3823379e0371a824478dadc91ab9ef")
(setf (get wpi_jaco_msgs::GravCompRequest :datatype-) "wpi_jaco_msgs/GravCompRequest")
(setf (get wpi_jaco_msgs::GravCompRequest :definition-)
      "bool enableGravComp
---
bool success

")

(setf (get wpi_jaco_msgs::GravCompResponse :md5sum-) "9b3823379e0371a824478dadc91ab9ef")
(setf (get wpi_jaco_msgs::GravCompResponse :datatype-) "wpi_jaco_msgs/GravCompResponse")
(setf (get wpi_jaco_msgs::GravCompResponse :definition-)
      "bool enableGravComp
---
bool success

")



(provide :wpi_jaco_msgs/GravComp "9b3823379e0371a824478dadc91ab9ef")


