;; Auto-generated. Do not edit!


(when (boundp 'wpi_jaco_msgs::EulerToQuaternion)
  (if (not (find-package "WPI_JACO_MSGS"))
    (make-package "WPI_JACO_MSGS"))
  (shadow 'EulerToQuaternion (find-package "WPI_JACO_MSGS")))
(unless (find-package "WPI_JACO_MSGS::EULERTOQUATERNION")
  (make-package "WPI_JACO_MSGS::EULERTOQUATERNION"))
(unless (find-package "WPI_JACO_MSGS::EULERTOQUATERNIONREQUEST")
  (make-package "WPI_JACO_MSGS::EULERTOQUATERNIONREQUEST"))
(unless (find-package "WPI_JACO_MSGS::EULERTOQUATERNIONRESPONSE")
  (make-package "WPI_JACO_MSGS::EULERTOQUATERNIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass wpi_jaco_msgs::EulerToQuaternionRequest
  :super ros::object
  :slots (_roll _pitch _yaw ))

(defmethod wpi_jaco_msgs::EulerToQuaternionRequest
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass wpi_jaco_msgs::EulerToQuaternionResponse
  :super ros::object
  :slots (_orientation ))

(defmethod wpi_jaco_msgs::EulerToQuaternionResponse
  (:init
   (&key
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _orientation __orientation)
   self)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(defclass wpi_jaco_msgs::EulerToQuaternion
  :super ros::object
  :slots ())

(setf (get wpi_jaco_msgs::EulerToQuaternion :md5sum-) "da90a880255964dba6fc422dcbad3806")
(setf (get wpi_jaco_msgs::EulerToQuaternion :datatype-) "wpi_jaco_msgs/EulerToQuaternion")
(setf (get wpi_jaco_msgs::EulerToQuaternion :request) wpi_jaco_msgs::EulerToQuaternionRequest)
(setf (get wpi_jaco_msgs::EulerToQuaternion :response) wpi_jaco_msgs::EulerToQuaternionResponse)

(defmethod wpi_jaco_msgs::EulerToQuaternionRequest
  (:response () (instance wpi_jaco_msgs::EulerToQuaternionResponse :init)))

(setf (get wpi_jaco_msgs::EulerToQuaternionRequest :md5sum-) "da90a880255964dba6fc422dcbad3806")
(setf (get wpi_jaco_msgs::EulerToQuaternionRequest :datatype-) "wpi_jaco_msgs/EulerToQuaternionRequest")
(setf (get wpi_jaco_msgs::EulerToQuaternionRequest :definition-)
      "float32 roll
float32 pitch
float32 yaw
---
geometry_msgs/Quaternion orientation


================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get wpi_jaco_msgs::EulerToQuaternionResponse :md5sum-) "da90a880255964dba6fc422dcbad3806")
(setf (get wpi_jaco_msgs::EulerToQuaternionResponse :datatype-) "wpi_jaco_msgs/EulerToQuaternionResponse")
(setf (get wpi_jaco_msgs::EulerToQuaternionResponse :definition-)
      "float32 roll
float32 pitch
float32 yaw
---
geometry_msgs/Quaternion orientation


================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :wpi_jaco_msgs/EulerToQuaternion "da90a880255964dba6fc422dcbad3806")


