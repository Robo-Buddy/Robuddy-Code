;; Auto-generated. Do not edit!


(when (boundp 'hlpr_object_labeling::LabeledObjects)
  (if (not (find-package "HLPR_OBJECT_LABELING"))
    (make-package "HLPR_OBJECT_LABELING"))
  (shadow 'LabeledObjects (find-package "HLPR_OBJECT_LABELING")))
(unless (find-package "HLPR_OBJECT_LABELING::LABELEDOBJECTS")
  (make-package "HLPR_OBJECT_LABELING::LABELEDOBJECTS"))

(in-package "ROS")
;;//! \htmlinclude LabeledObjects.msg.html
(if (not (find-package "HLPR_FEATURE_EXTRACTION"))
  (ros::roseus-add-msgs "hlpr_feature_extraction"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hlpr_object_labeling::LabeledObjects
  :super ros::object
  :slots (_header _objects _labels ))

(defmethod hlpr_object_labeling::LabeledObjects
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance hlpr_feature_extraction::PcFeatures :init) r)) r))
    ((:labels __labels) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   (setq _labels __labels)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:labels
   (&rest __labels)
   (if (keywordp (car __labels))
       (send* _labels __labels)
     (progn
       (if __labels (setq _labels (car __labels)))
       _labels)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hlpr_feature_extraction/PcFeatures[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ;; std_msgs/String[] _labels
    (apply #'+ (send-all _labels :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hlpr_feature_extraction/PcFeatures[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;; std_msgs/String[] _labels
     (write-long (length _labels) s)
     (dolist (elem _labels)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hlpr_feature_extraction/PcFeatures[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance hlpr_feature_extraction::PcFeatures :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String[] _labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labels (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _labels)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hlpr_object_labeling::LabeledObjects :md5sum-) "2661d64b6e024ded9a0bbaf2fec48297")
(setf (get hlpr_object_labeling::LabeledObjects :datatype-) "hlpr_object_labeling/LabeledObjects")
(setf (get hlpr_object_labeling::LabeledObjects :definition-)
      "Header header
hlpr_feature_extraction/PcFeatures[] objects
std_msgs/String[] labels

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
MSG: hlpr_feature_extraction/PcFeatures
# PcFeatures for a single cluster

Header header

# Object transform, however calculated
geometry_msgs/Transform transform


#################################
# Raw point Related

# Cluster centroid, min, max and number of points
geometry_msgs/Vector3 points_centroid
geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>
geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>
float64 num_points

# Average color (RGBA nad hue)
std_msgs/ColorRGBA rgba_color
float64 hue

#################################
#Bounding box

#position wrt sensor and angle wrt table normal
geometry_msgs/Vector3 bb_center
float64 bb_angle

# Bounding box dimensions
geometry_msgs/Vector3 bb_dims

#################################
#Other such as vfh, color hist etc. Unpacking will be on the other side

uint32 other_features_size
float64[] data
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

================================================================================
MSG: std_msgs/String
string data

")



(provide :hlpr_object_labeling/LabeledObjects "2661d64b6e024ded9a0bbaf2fec48297")


