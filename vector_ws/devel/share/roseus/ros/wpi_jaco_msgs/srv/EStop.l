;; Auto-generated. Do not edit!


(when (boundp 'wpi_jaco_msgs::EStop)
  (if (not (find-package "WPI_JACO_MSGS"))
    (make-package "WPI_JACO_MSGS"))
  (shadow 'EStop (find-package "WPI_JACO_MSGS")))
(unless (find-package "WPI_JACO_MSGS::ESTOP")
  (make-package "WPI_JACO_MSGS::ESTOP"))
(unless (find-package "WPI_JACO_MSGS::ESTOPREQUEST")
  (make-package "WPI_JACO_MSGS::ESTOPREQUEST"))
(unless (find-package "WPI_JACO_MSGS::ESTOPRESPONSE")
  (make-package "WPI_JACO_MSGS::ESTOPRESPONSE"))

(in-package "ROS")





(defclass wpi_jaco_msgs::EStopRequest
  :super ros::object
  :slots (_enableEStop ))

(defmethod wpi_jaco_msgs::EStopRequest
  (:init
   (&key
    ((:enableEStop __enableEStop) nil)
    )
   (send-super :init)
   (setq _enableEStop __enableEStop)
   self)
  (:enableEStop
   (&optional __enableEStop)
   (if __enableEStop (setq _enableEStop __enableEStop)) _enableEStop)
  (:serialization-length
   ()
   (+
    ;; bool _enableEStop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enableEStop
       (if _enableEStop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enableEStop
     (setq _enableEStop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wpi_jaco_msgs::EStopResponse
  :super ros::object
  :slots (_success ))

(defmethod wpi_jaco_msgs::EStopResponse
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

(defclass wpi_jaco_msgs::EStop
  :super ros::object
  :slots ())

(setf (get wpi_jaco_msgs::EStop :md5sum-) "41f7cecff29b7a7b77475ec005e19010")
(setf (get wpi_jaco_msgs::EStop :datatype-) "wpi_jaco_msgs/EStop")
(setf (get wpi_jaco_msgs::EStop :request) wpi_jaco_msgs::EStopRequest)
(setf (get wpi_jaco_msgs::EStop :response) wpi_jaco_msgs::EStopResponse)

(defmethod wpi_jaco_msgs::EStopRequest
  (:response () (instance wpi_jaco_msgs::EStopResponse :init)))

(setf (get wpi_jaco_msgs::EStopRequest :md5sum-) "41f7cecff29b7a7b77475ec005e19010")
(setf (get wpi_jaco_msgs::EStopRequest :datatype-) "wpi_jaco_msgs/EStopRequest")
(setf (get wpi_jaco_msgs::EStopRequest :definition-)
      "bool enableEStop
---
bool success
")

(setf (get wpi_jaco_msgs::EStopResponse :md5sum-) "41f7cecff29b7a7b77475ec005e19010")
(setf (get wpi_jaco_msgs::EStopResponse :datatype-) "wpi_jaco_msgs/EStopResponse")
(setf (get wpi_jaco_msgs::EStopResponse :definition-)
      "bool enableEStop
---
bool success
")



(provide :wpi_jaco_msgs/EStop "41f7cecff29b7a7b77475ec005e19010")


