;; Auto-generated. Do not edit!


(when (boundp 'hlpr_feature_extraction::PcFeatures)
  (if (not (find-package "HLPR_FEATURE_EXTRACTION"))
    (make-package "HLPR_FEATURE_EXTRACTION"))
  (shadow 'PcFeatures (find-package "HLPR_FEATURE_EXTRACTION")))
(unless (find-package "HLPR_FEATURE_EXTRACTION::PCFEATURES")
  (make-package "HLPR_FEATURE_EXTRACTION::PCFEATURES"))

(in-package "ROS")
;;//! \htmlinclude PcFeatures.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hlpr_feature_extraction::PcFeatures
  :super ros::object
  :slots (_header _transform _points_centroid _points_min _points_max _num_points _rgba_color _hue _bb_center _bb_angle _bb_dims _other_features_size _data ))

(defmethod hlpr_feature_extraction::PcFeatures
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:points_centroid __points_centroid) (instance geometry_msgs::Vector3 :init))
    ((:points_min __points_min) (instance geometry_msgs::Vector3 :init))
    ((:points_max __points_max) (instance geometry_msgs::Vector3 :init))
    ((:num_points __num_points) 0.0)
    ((:rgba_color __rgba_color) (instance std_msgs::ColorRGBA :init))
    ((:hue __hue) 0.0)
    ((:bb_center __bb_center) (instance geometry_msgs::Vector3 :init))
    ((:bb_angle __bb_angle) 0.0)
    ((:bb_dims __bb_dims) (instance geometry_msgs::Vector3 :init))
    ((:other_features_size __other_features_size) 0)
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _transform __transform)
   (setq _points_centroid __points_centroid)
   (setq _points_min __points_min)
   (setq _points_max __points_max)
   (setq _num_points (float __num_points))
   (setq _rgba_color __rgba_color)
   (setq _hue (float __hue))
   (setq _bb_center __bb_center)
   (setq _bb_angle (float __bb_angle))
   (setq _bb_dims __bb_dims)
   (setq _other_features_size (round __other_features_size))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:points_centroid
   (&rest __points_centroid)
   (if (keywordp (car __points_centroid))
       (send* _points_centroid __points_centroid)
     (progn
       (if __points_centroid (setq _points_centroid (car __points_centroid)))
       _points_centroid)))
  (:points_min
   (&rest __points_min)
   (if (keywordp (car __points_min))
       (send* _points_min __points_min)
     (progn
       (if __points_min (setq _points_min (car __points_min)))
       _points_min)))
  (:points_max
   (&rest __points_max)
   (if (keywordp (car __points_max))
       (send* _points_max __points_max)
     (progn
       (if __points_max (setq _points_max (car __points_max)))
       _points_max)))
  (:num_points
   (&optional __num_points)
   (if __num_points (setq _num_points __num_points)) _num_points)
  (:rgba_color
   (&rest __rgba_color)
   (if (keywordp (car __rgba_color))
       (send* _rgba_color __rgba_color)
     (progn
       (if __rgba_color (setq _rgba_color (car __rgba_color)))
       _rgba_color)))
  (:hue
   (&optional __hue)
   (if __hue (setq _hue __hue)) _hue)
  (:bb_center
   (&rest __bb_center)
   (if (keywordp (car __bb_center))
       (send* _bb_center __bb_center)
     (progn
       (if __bb_center (setq _bb_center (car __bb_center)))
       _bb_center)))
  (:bb_angle
   (&optional __bb_angle)
   (if __bb_angle (setq _bb_angle __bb_angle)) _bb_angle)
  (:bb_dims
   (&rest __bb_dims)
   (if (keywordp (car __bb_dims))
       (send* _bb_dims __bb_dims)
     (progn
       (if __bb_dims (setq _bb_dims (car __bb_dims)))
       _bb_dims)))
  (:other_features_size
   (&optional __other_features_size)
   (if __other_features_size (setq _other_features_size __other_features_size)) _other_features_size)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; geometry_msgs/Vector3 _points_centroid
    (send _points_centroid :serialization-length)
    ;; geometry_msgs/Vector3 _points_min
    (send _points_min :serialization-length)
    ;; geometry_msgs/Vector3 _points_max
    (send _points_max :serialization-length)
    ;; float64 _num_points
    8
    ;; std_msgs/ColorRGBA _rgba_color
    (send _rgba_color :serialization-length)
    ;; float64 _hue
    8
    ;; geometry_msgs/Vector3 _bb_center
    (send _bb_center :serialization-length)
    ;; float64 _bb_angle
    8
    ;; geometry_msgs/Vector3 _bb_dims
    (send _bb_dims :serialization-length)
    ;; uint32 _other_features_size
    4
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; geometry_msgs/Vector3 _points_centroid
       (send _points_centroid :serialize s)
     ;; geometry_msgs/Vector3 _points_min
       (send _points_min :serialize s)
     ;; geometry_msgs/Vector3 _points_max
       (send _points_max :serialize s)
     ;; float64 _num_points
       (sys::poke _num_points (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/ColorRGBA _rgba_color
       (send _rgba_color :serialize s)
     ;; float64 _hue
       (sys::poke _hue (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _bb_center
       (send _bb_center :serialize s)
     ;; float64 _bb_angle
       (sys::poke _bb_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _bb_dims
       (send _bb_dims :serialize s)
     ;; uint32 _other_features_size
       (write-long _other_features_size s)
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; geometry_msgs/Vector3 _points_centroid
     (send _points_centroid :deserialize buf ptr-) (incf ptr- (send _points_centroid :serialization-length))
   ;; geometry_msgs/Vector3 _points_min
     (send _points_min :deserialize buf ptr-) (incf ptr- (send _points_min :serialization-length))
   ;; geometry_msgs/Vector3 _points_max
     (send _points_max :deserialize buf ptr-) (incf ptr- (send _points_max :serialization-length))
   ;; float64 _num_points
     (setq _num_points (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; std_msgs/ColorRGBA _rgba_color
     (send _rgba_color :deserialize buf ptr-) (incf ptr- (send _rgba_color :serialization-length))
   ;; float64 _hue
     (setq _hue (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _bb_center
     (send _bb_center :deserialize buf ptr-) (incf ptr- (send _bb_center :serialization-length))
   ;; float64 _bb_angle
     (setq _bb_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _bb_dims
     (send _bb_dims :deserialize buf ptr-) (incf ptr- (send _bb_dims :serialization-length))
   ;; uint32 _other_features_size
     (setq _other_features_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get hlpr_feature_extraction::PcFeatures :md5sum-) "623fac7b3275a81643e666d8b500f34f")
(setf (get hlpr_feature_extraction::PcFeatures :datatype-) "hlpr_feature_extraction/PcFeatures")
(setf (get hlpr_feature_extraction::PcFeatures :definition-)
      "# PcFeatures for a single cluster

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

")



(provide :hlpr_feature_extraction/PcFeatures "623fac7b3275a81643e666d8b500f34f")


