;; Auto-generated. Do not edit!


(when (boundp 'hlpr_perception_msgs::ObjectFeatures)
  (if (not (find-package "HLPR_PERCEPTION_MSGS"))
    (make-package "HLPR_PERCEPTION_MSGS"))
  (shadow 'ObjectFeatures (find-package "HLPR_PERCEPTION_MSGS")))
(unless (find-package "HLPR_PERCEPTION_MSGS::OBJECTFEATURES")
  (make-package "HLPR_PERCEPTION_MSGS::OBJECTFEATURES"))

(in-package "ROS")
;;//! \htmlinclude ObjectFeatures.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hlpr_perception_msgs::ObjectFeatures
  :super ros::object
  :slots (_header _transform _basicInfo _obb _setColorHist _hs_hist _setShapeHist _shape_hist _setViewpointHist _view_hist _setOtherFeatures _other ))

(defmethod hlpr_perception_msgs::ObjectFeatures
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:basicInfo __basicInfo) (instance hlpr_perception_msgs::BasicFeatures :init))
    ((:obb __obb) (instance hlpr_perception_msgs::OrientedBoundingBox :init))
    ((:setColorHist __setColorHist) nil)
    ((:hs_hist __hs_hist) (instance hlpr_perception_msgs::ColorHist :init))
    ((:setShapeHist __setShapeHist) nil)
    ((:shape_hist __shape_hist) (instance hlpr_perception_msgs::ShapeHist :init))
    ((:setViewpointHist __setViewpointHist) nil)
    ((:view_hist __view_hist) (instance hlpr_perception_msgs::ViewpointHist :init))
    ((:setOtherFeatures __setOtherFeatures) nil)
    ((:other __other) (instance hlpr_perception_msgs::OtherFeatures :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _transform __transform)
   (setq _basicInfo __basicInfo)
   (setq _obb __obb)
   (setq _setColorHist __setColorHist)
   (setq _hs_hist __hs_hist)
   (setq _setShapeHist __setShapeHist)
   (setq _shape_hist __shape_hist)
   (setq _setViewpointHist __setViewpointHist)
   (setq _view_hist __view_hist)
   (setq _setOtherFeatures __setOtherFeatures)
   (setq _other __other)
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
  (:setColorHist
   (&optional __setColorHist)
   (if __setColorHist (setq _setColorHist __setColorHist)) _setColorHist)
  (:hs_hist
   (&rest __hs_hist)
   (if (keywordp (car __hs_hist))
       (send* _hs_hist __hs_hist)
     (progn
       (if __hs_hist (setq _hs_hist (car __hs_hist)))
       _hs_hist)))
  (:setShapeHist
   (&optional __setShapeHist)
   (if __setShapeHist (setq _setShapeHist __setShapeHist)) _setShapeHist)
  (:shape_hist
   (&rest __shape_hist)
   (if (keywordp (car __shape_hist))
       (send* _shape_hist __shape_hist)
     (progn
       (if __shape_hist (setq _shape_hist (car __shape_hist)))
       _shape_hist)))
  (:setViewpointHist
   (&optional __setViewpointHist)
   (if __setViewpointHist (setq _setViewpointHist __setViewpointHist)) _setViewpointHist)
  (:view_hist
   (&rest __view_hist)
   (if (keywordp (car __view_hist))
       (send* _view_hist __view_hist)
     (progn
       (if __view_hist (setq _view_hist (car __view_hist)))
       _view_hist)))
  (:setOtherFeatures
   (&optional __setOtherFeatures)
   (if __setOtherFeatures (setq _setOtherFeatures __setOtherFeatures)) _setOtherFeatures)
  (:other
   (&rest __other)
   (if (keywordp (car __other))
       (send* _other __other)
     (progn
       (if __other (setq _other (car __other)))
       _other)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; hlpr_perception_msgs/BasicFeatures _basicInfo
    (send _basicInfo :serialization-length)
    ;; hlpr_perception_msgs/OrientedBoundingBox _obb
    (send _obb :serialization-length)
    ;; bool _setColorHist
    1
    ;; hlpr_perception_msgs/ColorHist _hs_hist
    (send _hs_hist :serialization-length)
    ;; bool _setShapeHist
    1
    ;; hlpr_perception_msgs/ShapeHist _shape_hist
    (send _shape_hist :serialization-length)
    ;; bool _setViewpointHist
    1
    ;; hlpr_perception_msgs/ViewpointHist _view_hist
    (send _view_hist :serialization-length)
    ;; bool _setOtherFeatures
    1
    ;; hlpr_perception_msgs/OtherFeatures _other
    (send _other :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; hlpr_perception_msgs/BasicFeatures _basicInfo
       (send _basicInfo :serialize s)
     ;; hlpr_perception_msgs/OrientedBoundingBox _obb
       (send _obb :serialize s)
     ;; bool _setColorHist
       (if _setColorHist (write-byte -1 s) (write-byte 0 s))
     ;; hlpr_perception_msgs/ColorHist _hs_hist
       (send _hs_hist :serialize s)
     ;; bool _setShapeHist
       (if _setShapeHist (write-byte -1 s) (write-byte 0 s))
     ;; hlpr_perception_msgs/ShapeHist _shape_hist
       (send _shape_hist :serialize s)
     ;; bool _setViewpointHist
       (if _setViewpointHist (write-byte -1 s) (write-byte 0 s))
     ;; hlpr_perception_msgs/ViewpointHist _view_hist
       (send _view_hist :serialize s)
     ;; bool _setOtherFeatures
       (if _setOtherFeatures (write-byte -1 s) (write-byte 0 s))
     ;; hlpr_perception_msgs/OtherFeatures _other
       (send _other :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; hlpr_perception_msgs/BasicFeatures _basicInfo
     (send _basicInfo :deserialize buf ptr-) (incf ptr- (send _basicInfo :serialization-length))
   ;; hlpr_perception_msgs/OrientedBoundingBox _obb
     (send _obb :deserialize buf ptr-) (incf ptr- (send _obb :serialization-length))
   ;; bool _setColorHist
     (setq _setColorHist (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; hlpr_perception_msgs/ColorHist _hs_hist
     (send _hs_hist :deserialize buf ptr-) (incf ptr- (send _hs_hist :serialization-length))
   ;; bool _setShapeHist
     (setq _setShapeHist (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; hlpr_perception_msgs/ShapeHist _shape_hist
     (send _shape_hist :deserialize buf ptr-) (incf ptr- (send _shape_hist :serialization-length))
   ;; bool _setViewpointHist
     (setq _setViewpointHist (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; hlpr_perception_msgs/ViewpointHist _view_hist
     (send _view_hist :deserialize buf ptr-) (incf ptr- (send _view_hist :serialization-length))
   ;; bool _setOtherFeatures
     (setq _setOtherFeatures (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; hlpr_perception_msgs/OtherFeatures _other
     (send _other :deserialize buf ptr-) (incf ptr- (send _other :serialization-length))
   ;;
   self)
  )

(setf (get hlpr_perception_msgs::ObjectFeatures :md5sum-) "e8002b6ed029f744d9adbb41c97e7480")
(setf (get hlpr_perception_msgs::ObjectFeatures :datatype-) "hlpr_perception_msgs/ObjectFeatures")
(setf (get hlpr_perception_msgs::ObjectFeatures :definition-)
      "# Features for a single object cluster

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

")



(provide :hlpr_perception_msgs/ObjectFeatures "e8002b6ed029f744d9adbb41c97e7480")


