;; Auto-generated. Do not edit!


(when (boundp 'hlpr_perception_msgs::PlaneFeatures)
  (if (not (find-package "HLPR_PERCEPTION_MSGS"))
    (make-package "HLPR_PERCEPTION_MSGS"))
  (shadow 'PlaneFeatures (find-package "HLPR_PERCEPTION_MSGS")))
(unless (find-package "HLPR_PERCEPTION_MSGS::PLANEFEATURES")
  (make-package "HLPR_PERCEPTION_MSGS::PLANEFEATURES"))

(in-package "ROS")
;;//! \htmlinclude PlaneFeatures.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hlpr_perception_msgs::PlaneFeatures
  :super ros::object
  :slots (_header _basicInfo _obb ))

(defmethod hlpr_perception_msgs::PlaneFeatures
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:basicInfo __basicInfo) (instance hlpr_perception_msgs::BasicFeatures :init))
    ((:obb __obb) (instance hlpr_perception_msgs::OrientedBoundingBox :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _basicInfo __basicInfo)
   (setq _obb __obb)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:basicInfo
   (&rest __basicInfo)
   (if (keywordp (car __basicInfo))
       (send* _basicInfo __basicInfo)
     (progn
       (if __basicInfo (setq _basicInfo (car __basicInfo)))
       _basicInfo)))
  (:obb
   (&rest __obb)
   (if (keywordp (car __obb))
       (send* _obb __obb)
     (progn
       (if __obb (setq _obb (car __obb)))
       _obb)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hlpr_perception_msgs/BasicFeatures _basicInfo
    (send _basicInfo :serialization-length)
    ;; hlpr_perception_msgs/OrientedBoundingBox _obb
    (send _obb :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hlpr_perception_msgs/BasicFeatures _basicInfo
       (send _basicInfo :serialize s)
     ;; hlpr_perception_msgs/OrientedBoundingBox _obb
       (send _obb :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hlpr_perception_msgs/BasicFeatures _basicInfo
     (send _basicInfo :deserialize buf ptr-) (incf ptr- (send _basicInfo :serialization-length))
   ;; hlpr_perception_msgs/OrientedBoundingBox _obb
     (send _obb :deserialize buf ptr-) (incf ptr- (send _obb :serialization-length))
   ;;
   self)
  )

(setf (get hlpr_perception_msgs::PlaneFeatures :md5sum-) "212bb6bf8227526a074fad34a7edf8c1")
(setf (get hlpr_perception_msgs::PlaneFeatures :datatype-) "hlpr_perception_msgs/PlaneFeatures")
(setf (get hlpr_perception_msgs::PlaneFeatures :definition-)
      "# Features for a single plane cluster

Header header
BasicFeatures basicInfo
OrientedBoundingBox obb

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
MSG: hlpr_perception_msgs/BasicFeatures
# Raw point Related

# Cluster centroid, min, max and number of points
geometry_msgs/Vector3 points_centroid
geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>
geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>

bool setNumPoints                # flag is required for planes as they only have contours, 
float64 num_points               # the num_points is not applicable to planes

# Average color (RGBA and hue)
std_msgs/ColorRGBA rgba_color
float64 hue

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
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

================================================================================
MSG: hlpr_perception_msgs/OrientedBoundingBox
#Oriented Bounding box

#position wrt sensor 
geometry_msgs/Vector3 bb_center

# Bounding box dimensions
geometry_msgs/Vector3 bb_dims

#Bounding box quaternion
geometry_msgs/Quaternion bb_rot_quat

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :hlpr_perception_msgs/PlaneFeatures "212bb6bf8227526a074fad34a7edf8c1")


