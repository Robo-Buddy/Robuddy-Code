;; Auto-generated. Do not edit!


(when (boundp 'wpi_jaco_msgs::JacoFingerVel)
  (if (not (find-package "WPI_JACO_MSGS"))
    (make-package "WPI_JACO_MSGS"))
  (shadow 'JacoFingerVel (find-package "WPI_JACO_MSGS")))
(unless (find-package "WPI_JACO_MSGS::JACOFINGERVEL")
  (make-package "WPI_JACO_MSGS::JACOFINGERVEL"))

(in-package "ROS")
;;//! \htmlinclude JacoFingerVel.msg.html


(defclass wpi_jaco_msgs::JacoFingerVel
  :super ros::object
  :slots (_finger1Vel _finger2Vel _finger3Vel ))

(defmethod wpi_jaco_msgs::JacoFingerVel
  (:init
   (&key
    ((:finger1Vel __finger1Vel) 0.0)
    ((:finger2Vel __finger2Vel) 0.0)
    ((:finger3Vel __finger3Vel) 0.0)
    )
   (send-super :init)
   (setq _finger1Vel (float __finger1Vel))
   (setq _finger2Vel (float __finger2Vel))
   (setq _finger3Vel (float __finger3Vel))
   self)
  (:finger1Vel
   (&optional __finger1Vel)
   (if __finger1Vel (setq _finger1Vel __finger1Vel)) _finger1Vel)
  (:finger2Vel
   (&optional __finger2Vel)
   (if __finger2Vel (setq _finger2Vel __finger2Vel)) _finger2Vel)
  (:finger3Vel
   (&optional __finger3Vel)
   (if __finger3Vel (setq _finger3Vel __finger3Vel)) _finger3Vel)
  (:serialization-length
   ()
   (+
    ;; float32 _finger1Vel
    4
    ;; float32 _finger2Vel
    4
    ;; float32 _finger3Vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _finger1Vel
       (sys::poke _finger1Vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finger2Vel
       (sys::poke _finger2Vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _finger3Vel
       (sys::poke _finger3Vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _finger1Vel
     (setq _finger1Vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finger2Vel
     (setq _finger2Vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _finger3Vel
     (setq _finger3Vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get wpi_jaco_msgs::JacoFingerVel :md5sum-) "a931e1014161865b6137e2ee19991131")
(setf (get wpi_jaco_msgs::JacoFingerVel :datatype-) "wpi_jaco_msgs/JacoFingerVel")
(setf (get wpi_jaco_msgs::JacoFingerVel :definition-)
      "float32 finger1Vel  # velocity for thumb
float32 finger2Vel  # velocity for top finger
float32 finger3Vel  # velocity for bottom finger

")



(provide :wpi_jaco_msgs/JacoFingerVel "a931e1014161865b6137e2ee19991131")


