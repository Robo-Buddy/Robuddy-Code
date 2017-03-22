;; Auto-generated. Do not edit!


(when (boundp 'hlpr_perception_msgs::BasicFeatures)
  (if (not (find-package "HLPR_PERCEPTION_MSGS"))
    (make-package "HLPR_PERCEPTION_MSGS"))
  (shadow 'BasicFeatures (find-package "HLPR_PERCEPTION_MSGS")))
(unless (find-package "HLPR_PERCEPTION_MSGS::BASICFEATURES")
  (make-package "HLPR_PERCEPTION_MSGS::BASICFEATURES"))

(in-package "ROS")
;;//! \htmlinclude BasicFeatures.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hlpr_perception_msgs::BasicFeatures
  :super ros::object
  :slots (_points_centroid _points_min _points_max _setNumPoints _num_points _rgba_color _hue ))

(defmethod hlpr_perception_msgs::BasicFeatures
  (:init
   (&key
    ((:points_centroid __points_centroid) (instance geometry_msgs::Vector3 :init))
    ((:points_min __points_min) (instance geometry_msgs::Vector3 :init))
    ((:points_max __points_max) (instance geometry_msgs::Vector3 :init))
    ((:setNumPoints __setNumPoints) nil)
    ((:num_points __num_points) 0.0)
    ((:rgba_color __rgba_color) (instance std_msgs::ColorRGBA :init))
    ((:hue __hue) 0.0)
    )
   (send-super :init)
   (setq _points_centroid __points_centroid)
   (setq _points_min __points_min)
   (setq _points_max __points_max)
   (setq _setNumPoints __setNumPoints)
   (setq _num_points (float __num_points))
   (setq _rgba_color __rgba_color)
   (setq _hue (float __hue))
   self)
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
  (:setNumPoints
   (&optional __setNumPoints)
   (if __setNumPoints (setq _setNumPoints __setNumPoints)) _setNumPoints)
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
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _points_centroid
    (send _points_centroid :serialization-length)
    ;; geometry_msgs/Vector3 _points_min
    (send _points_min :serialization-length)
    ;; geometry_msgs/Vector3 _points_max
    (send _points_max :serialization-length)
    ;; bool _setNumPoints
    1
    ;; float64 _num_points
    8
    ;; std_msgs/ColorRGBA _rgba_color
    (send _rgba_color :serialization-length)
    ;; float64 _hue
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _points_centroid
       (send _points_centroid :serialize s)
     ;; geometry_msgs/Vector3 _points_min
       (send _points_min :serialize s)
     ;; geometry_msgs/Vector3 _points_max
       (send _points_max :serialize s)
     ;; bool _setNumPoints
       (if _setNumPoints (write-byte -1 s) (write-byte 0 s))
     ;; float64 _num_points
       (sys::poke _num_points (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/ColorRGBA _rgba_color
       (send _rgba_color :serialize s)
     ;; float64 _hue
       (sys::poke _hue (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _points_centroid
     (send _points_centroid :deserialize buf ptr-) (incf ptr- (send _points_centroid :serialization-length))
   ;; geometry_msgs/Vector3 _points_min
     (send _points_min :deserialize buf ptr-) (incf ptr- (send _points_min :serialization-length))
   ;; geometry_msgs/Vector3 _points_max
     (send _points_max :deserialize buf ptr-) (incf ptr- (send _points_max :serialization-length))
   ;; bool _setNumPoints
     (setq _setNumPoints (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _num_points
     (setq _num_points (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; std_msgs/ColorRGBA _rgba_color
     (send _rgba_color :deserialize buf ptr-) (incf ptr- (send _rgba_color :serialization-length))
   ;; float64 _hue
     (setq _hue (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hlpr_perception_msgs::BasicFeatures :md5sum-) "9009cdc7b5540d94a129ff483c264725")
(setf (get hlpr_perception_msgs::BasicFeatures :datatype-) "hlpr_perception_msgs/BasicFeatures")
(setf (get hlpr_perception_msgs::BasicFeatures :definition-)
      "# Raw point Related

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

")



(provide :hlpr_perception_msgs/BasicFeatures "9009cdc7b5540d94a129ff483c264725")


