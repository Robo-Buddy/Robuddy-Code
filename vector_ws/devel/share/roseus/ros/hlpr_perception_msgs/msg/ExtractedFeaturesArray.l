;; Auto-generated. Do not edit!


(when (boundp 'hlpr_perception_msgs::ExtractedFeaturesArray)
  (if (not (find-package "HLPR_PERCEPTION_MSGS"))
    (make-package "HLPR_PERCEPTION_MSGS"))
  (shadow 'ExtractedFeaturesArray (find-package "HLPR_PERCEPTION_MSGS")))
(unless (find-package "HLPR_PERCEPTION_MSGS::EXTRACTEDFEATURESARRAY")
  (make-package "HLPR_PERCEPTION_MSGS::EXTRACTEDFEATURESARRAY"))

(in-package "ROS")
;;//! \htmlinclude ExtractedFeaturesArray.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hlpr_perception_msgs::ExtractedFeaturesArray
  :super ros::object
  :slots (_header _objects _planes _transforms ))

(defmethod hlpr_perception_msgs::ExtractedFeaturesArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance hlpr_perception_msgs::ObjectFeatures :init) r)) r))
    ((:planes __planes) (let (r) (dotimes (i 0) (push (instance hlpr_perception_msgs::PlaneFeatures :init) r)) r))
    ((:transforms __transforms) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Transform :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   (setq _planes __planes)
   (setq _transforms __transforms)
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
  (:planes
   (&rest __planes)
   (if (keywordp (car __planes))
       (send* _planes __planes)
     (progn
       (if __planes (setq _planes (car __planes)))
       _planes)))
  (:transforms
   (&rest __transforms)
   (if (keywordp (car __transforms))
       (send* _transforms __transforms)
     (progn
       (if __transforms (setq _transforms (car __transforms)))
       _transforms)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hlpr_perception_msgs/ObjectFeatures[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ;; hlpr_perception_msgs/PlaneFeatures[] _planes
    (apply #'+ (send-all _planes :serialization-length)) 4
    ;; geometry_msgs/Transform[] _transforms
    (apply #'+ (send-all _transforms :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hlpr_perception_msgs/ObjectFeatures[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;; hlpr_perception_msgs/PlaneFeatures[] _planes
     (write-long (length _planes) s)
     (dolist (elem _planes)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Transform[] _transforms
     (write-long (length _transforms) s)
     (dolist (elem _transforms)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hlpr_perception_msgs/ObjectFeatures[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance hlpr_perception_msgs::ObjectFeatures :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; hlpr_perception_msgs/PlaneFeatures[] _planes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _planes (let (r) (dotimes (i n) (push (instance hlpr_perception_msgs::PlaneFeatures :init) r)) r))
     (dolist (elem- _planes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Transform[] _transforms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transforms (let (r) (dotimes (i n) (push (instance geometry_msgs::Transform :init) r)) r))
     (dolist (elem- _transforms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hlpr_perception_msgs::ExtractedFeaturesArray :md5sum-) "d19ef1ccb2fc5e726ee96ccb7f68a2e6")
(setf (get hlpr_perception_msgs::ExtractedFeaturesArray :datatype-) "hlpr_perception_msgs/ExtractedFeaturesArray")
(setf (get hlpr_perception_msgs::ExtractedFeaturesArray :definition-)
      "# Features for a single cluster

Header header
ObjectFeatures[] objects
PlaneFeatures[] planes 
geometry_msgs/Transform[] transforms

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
MSG: hlpr_perception_msgs/ObjectFeatures
# Features for a single object cluster

Header header

geometry_msgs/Transform transform

BasicFeatures basicInfo
OrientedBoundingBox obb

bool setColorHist            # Flag to state if hs_hist was computed and set (default=true)
ColorHist hs_hist

bool setShapeHist            # Flag to state if shape_hist was computed and set (default=true)
ShapeHist shape_hist

bool setViewpointHist        # Flag to state if view_hist was computed and set (default=true)
ViewpointHist view_hist

bool setOtherFeatures        # Flag to state if other features were computed and set (default=false)
OtherFeatures other

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
MSG: hlpr_perception_msgs/ColorHist
# Hue-Saturation histogram

uint32 hs_features_size
float64[] hs_feature_vector


================================================================================
MSG: hlpr_perception_msgs/ShapeHist
# Shape histogram using CVFH

uint32 cvfh_features_size
float64[] cvfh_feature_vector

#################################
# Shape histogram using FPFH

uint32 fpfh_features_size
float64[] fpfh_feature_vector

================================================================================
MSG: hlpr_perception_msgs/ViewpointHist
# VFH features

uint32 vfh_features_size
float64[] vfh_feature_vector


================================================================================
MSG: hlpr_perception_msgs/OtherFeatures
#Other features, etc. Unpacking will be on the other side

uint32 other_features_size
float64[] data

================================================================================
MSG: hlpr_perception_msgs/PlaneFeatures
# Features for a single plane cluster

Header header
BasicFeatures basicInfo
OrientedBoundingBox obb

")



(provide :hlpr_perception_msgs/ExtractedFeaturesArray "d19ef1ccb2fc5e726ee96ccb7f68a2e6")


