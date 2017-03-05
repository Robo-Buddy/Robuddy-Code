;; Auto-generated. Do not edit!


(when (boundp 'wpi_jaco_msgs::GetCartesianPosition)
  (if (not (find-package "WPI_JACO_MSGS"))
    (make-package "WPI_JACO_MSGS"))
  (shadow 'GetCartesianPosition (find-package "WPI_JACO_MSGS")))
(unless (find-package "WPI_JACO_MSGS::GETCARTESIANPOSITION")
  (make-package "WPI_JACO_MSGS::GETCARTESIANPOSITION"))
(unless (find-package "WPI_JACO_MSGS::GETCARTESIANPOSITIONREQUEST")
  (make-package "WPI_JACO_MSGS::GETCARTESIANPOSITIONREQUEST"))
(unless (find-package "WPI_JACO_MSGS::GETCARTESIANPOSITIONRESPONSE")
  (make-package "WPI_JACO_MSGS::GETCARTESIANPOSITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass wpi_jaco_msgs::GetCartesianPositionRequest
  :super ros::object
  :slots ())

(defmethod wpi_jaco_msgs::GetCartesianPositionRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass wpi_jaco_msgs::GetCartesianPositionResponse
  :super ros::object
  :slots (_pos ))

(defmethod wpi_jaco_msgs::GetCartesianPositionResponse
  (:init
   (&key
    ((:pos __pos) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _pos __pos)
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _pos
    (send _pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _pos
       (send _pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;;
   self)
  )

(defclass wpi_jaco_msgs::GetCartesianPosition
  :super ros::object
  :slots ())

(setf (get wpi_jaco_msgs::GetCartesianPosition :md5sum-) "90eff4f5bd7896007c2525f114434660")
(setf (get wpi_jaco_msgs::GetCartesianPosition :datatype-) "wpi_jaco_msgs/GetCartesianPosition")
(setf (get wpi_jaco_msgs::GetCartesianPosition :request) wpi_jaco_msgs::GetCartesianPositionRequest)
(setf (get wpi_jaco_msgs::GetCartesianPosition :response) wpi_jaco_msgs::GetCartesianPositionResponse)

(defmethod wpi_jaco_msgs::GetCartesianPositionRequest
  (:response () (instance wpi_jaco_msgs::GetCartesianPositionResponse :init)))

(setf (get wpi_jaco_msgs::GetCartesianPositionRequest :md5sum-) "90eff4f5bd7896007c2525f114434660")
(setf (get wpi_jaco_msgs::GetCartesianPositionRequest :datatype-) "wpi_jaco_msgs/GetCartesianPositionRequest")
(setf (get wpi_jaco_msgs::GetCartesianPositionRequest :definition-)
      "---
geometry_msgs/Twist pos


================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get wpi_jaco_msgs::GetCartesianPositionResponse :md5sum-) "90eff4f5bd7896007c2525f114434660")
(setf (get wpi_jaco_msgs::GetCartesianPositionResponse :datatype-) "wpi_jaco_msgs/GetCartesianPositionResponse")
(setf (get wpi_jaco_msgs::GetCartesianPositionResponse :definition-)
      "---
geometry_msgs/Twist pos


================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :wpi_jaco_msgs/GetCartesianPosition "90eff4f5bd7896007c2525f114434660")


