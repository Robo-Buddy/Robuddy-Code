;; Auto-generated. Do not edit!


(when (boundp 'hlpr_perception_msgs::ColorHist)
  (if (not (find-package "HLPR_PERCEPTION_MSGS"))
    (make-package "HLPR_PERCEPTION_MSGS"))
  (shadow 'ColorHist (find-package "HLPR_PERCEPTION_MSGS")))
(unless (find-package "HLPR_PERCEPTION_MSGS::COLORHIST")
  (make-package "HLPR_PERCEPTION_MSGS::COLORHIST"))

(in-package "ROS")
;;//! \htmlinclude ColorHist.msg.html


(defclass hlpr_perception_msgs::ColorHist
  :super ros::object
  :slots (_hs_features_size _hs_feature_vector ))

(defmethod hlpr_perception_msgs::ColorHist
  (:init
   (&key
    ((:hs_features_size __hs_features_size) 0)
    ((:hs_feature_vector __hs_feature_vector) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _hs_features_size (round __hs_features_size))
   (setq _hs_feature_vector __hs_feature_vector)
   self)
  (:hs_features_size
   (&optional __hs_features_size)
   (if __hs_features_size (setq _hs_features_size __hs_features_size)) _hs_features_size)
  (:hs_feature_vector
   (&optional __hs_feature_vector)
   (if __hs_feature_vector (setq _hs_feature_vector __hs_feature_vector)) _hs_feature_vector)
  (:serialization-length
   ()
   (+
    ;; uint32 _hs_features_size
    4
    ;; float64[] _hs_feature_vector
    (* 8    (length _hs_feature_vector)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _hs_features_size
       (write-long _hs_features_size s)
     ;; float64[] _hs_feature_vector
     (write-long (length _hs_feature_vector) s)
     (dotimes (i (length _hs_feature_vector))
       (sys::poke (elt _hs_feature_vector i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _hs_features_size
     (setq _hs_features_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _hs_feature_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hs_feature_vector (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _hs_feature_vector i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get hlpr_perception_msgs::ColorHist :md5sum-) "5ebad72734bb047d4755073dfeadac24")
(setf (get hlpr_perception_msgs::ColorHist :datatype-) "hlpr_perception_msgs/ColorHist")
(setf (get hlpr_perception_msgs::ColorHist :definition-)
      "# Hue-Saturation histogram

uint32 hs_features_size
float64[] hs_feature_vector


")



(provide :hlpr_perception_msgs/ColorHist "5ebad72734bb047d4755073dfeadac24")


