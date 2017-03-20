;; Auto-generated. Do not edit!


(when (boundp 'hlpr_perception_msgs::OrientedBoundingBox)
  (if (not (find-package "HLPR_PERCEPTION_MSGS"))
    (make-package "HLPR_PERCEPTION_MSGS"))
  (shadow 'OrientedBoundingBox (find-package "HLPR_PERCEPTION_MSGS")))
(unless (find-package "HLPR_PERCEPTION_MSGS::ORIENTEDBOUNDINGBOX")
  (make-package "HLPR_PERCEPTION_MSGS::ORIENTEDBOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude OrientedBoundingBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hlpr_perception_msgs::OrientedBoundingBox
  :super ros::object
  :slots (_bb_center _bb_dims _bb_rot_quat ))

(defmethod hlpr_perception_msgs::OrientedBoundingBox
  (:init
   (&key
    ((:bb_center __bb_center) (instance geometry_msgs::Vector3 :init))
    ((:bb_dims __bb_dims) (instance geometry_msgs::Vector3 :init))
    ((:bb_rot_quat __bb_rot_quat) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _bb_center __bb_center)
   (setq _bb_dims __bb_dims)
   (setq _bb_rot_quat __bb_rot_quat)
   self)
  (:bb_center
   (&rest __bb_center)
   (if (keywordp (car __bb_center))
       (send* _bb_center __bb_center)
     (progn
       (if __bb_center (setq _bb_center (car __bb_center)))
       _bb_center)))
  (:bb_dims
   (&rest __bb_dims)
   (if (keywordp (car __bb_dims))
       (send* _bb_dims __bb_dims)
     (progn
       (if __bb_dims (setq _bb_dims (car __bb_dims)))
       _bb_dims)))
  (:bb_rot_quat
   (&rest __bb_rot_quat)
   (if (keywordp (car __bb_rot_quat))
       (send* _bb_rot_quat __bb_rot_quat)
     (progn
       (if __bb_rot_quat (setq _bb_rot_quat (car __bb_rot_quat)))
       _bb_rot_quat)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _bb_center
    (send _bb_center :serialization-length)
    ;; geometry_msgs/Vector3 _bb_dims
    (send _bb_dims :serialization-length)
    ;; geometry_msgs/Quaternion _bb_rot_quat
    (send _bb_rot_quat :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _bb_center
       (send _bb_center :serialize s)
     ;; geometry_msgs/Vector3 _bb_dims
       (send _bb_dims :serialize s)
     ;; geometry_msgs/Quaternion _bb_rot_quat
       (send _bb_rot_quat :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _bb_center
     (send _bb_center :deserialize buf ptr-) (incf ptr- (send _bb_center :serialization-length))
   ;; geometry_msgs/Vector3 _bb_dims
     (send _bb_dims :deserialize buf ptr-) (incf ptr- (send _bb_dims :serialization-length))
   ;; geometry_msgs/Quaternion _bb_rot_quat
     (send _bb_rot_quat :deserialize buf ptr-) (incf ptr- (send _bb_rot_quat :serialization-length))
   ;;
   self)
  )

(setf (get hlpr_perception_msgs::OrientedBoundingBox :md5sum-) "a54e8508bb2281f7a95516396df131e5")
(setf (get hlpr_perception_msgs::OrientedBoundingBox :datatype-) "hlpr_perception_msgs/OrientedBoundingBox")
(setf (get hlpr_perception_msgs::OrientedBoundingBox :definition-)
      "#Oriented Bounding box

#position wrt sensor 
geometry_msgs/Vector3 bb_center

# Bounding box dimensions
geometry_msgs/Vector3 bb_dims

#Bounding box quaternion
geometry_msgs/Quaternion bb_rot_quat

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
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :hlpr_perception_msgs/OrientedBoundingBox "a54e8508bb2281f7a95516396df131e5")


