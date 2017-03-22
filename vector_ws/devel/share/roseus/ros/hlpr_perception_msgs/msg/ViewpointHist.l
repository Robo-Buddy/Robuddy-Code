;; Auto-generated. Do not edit!


(when (boundp 'hlpr_perception_msgs::ViewpointHist)
  (if (not (find-package "HLPR_PERCEPTION_MSGS"))
    (make-package "HLPR_PERCEPTION_MSGS"))
  (shadow 'ViewpointHist (find-package "HLPR_PERCEPTION_MSGS")))
(unless (find-package "HLPR_PERCEPTION_MSGS::VIEWPOINTHIST")
  (make-package "HLPR_PERCEPTION_MSGS::VIEWPOINTHIST"))

(in-package "ROS")
;;//! \htmlinclude ViewpointHist.msg.html


(defclass hlpr_perception_msgs::ViewpointHist
  :super ros::object
  :slots (_vfh_features_size _vfh_feature_vector ))

(defmethod hlpr_perception_msgs::ViewpointHist
  (:init
   (&key
    ((:vfh_features_size __vfh_features_size) 0)
    ((:vfh_feature_vector __vfh_feature_vector) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _vfh_features_size (round __vfh_features_size))
   (setq _vfh_feature_vector __vfh_feature_vector)
   self)
  (:vfh_features_size
   (&optional __vfh_features_size)
   (if __vfh_features_size (setq _vfh_features_size __vfh_features_size)) _vfh_features_size)
  (:vfh_feature_vector
   (&optional __vfh_feature_vector)
   (if __vfh_feature_vector (setq _vfh_feature_vector __vfh_feature_vector)) _vfh_feature_vector)
  (:serialization-length
   ()
   (+
    ;; uint32 _vfh_features_size
    4
    ;; float64[] _vfh_feature_vector
    (* 8    (length _vfh_feature_vector)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _vfh_features_size
       (write-long _vfh_features_size s)
     ;; float64[] _vfh_feature_vector
     (write-long (length _vfh_feature_vector) s)
     (dotimes (i (length _vfh_feature_vector))
       (sys::poke (elt _vfh_feature_vector i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _vfh_features_size
     (setq _vfh_features_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _vfh_feature_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vfh_feature_vector (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vfh_feature_vector i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get hlpr_perception_msgs::ViewpointHist :md5sum-) "fc7e197b52de2cbf557265bb79769766")
(setf (get hlpr_perception_msgs::ViewpointHist :datatype-) "hlpr_perception_msgs/ViewpointHist")
(setf (get hlpr_perception_msgs::ViewpointHist :definition-)
      "# VFH features

uint32 vfh_features_size
float64[] vfh_feature_vector


")



(provide :hlpr_perception_msgs/ViewpointHist "fc7e197b52de2cbf557265bb79769766")


