;; Auto-generated. Do not edit!


(when (boundp 'hlpr_perception_msgs::ShapeHist)
  (if (not (find-package "HLPR_PERCEPTION_MSGS"))
    (make-package "HLPR_PERCEPTION_MSGS"))
  (shadow 'ShapeHist (find-package "HLPR_PERCEPTION_MSGS")))
(unless (find-package "HLPR_PERCEPTION_MSGS::SHAPEHIST")
  (make-package "HLPR_PERCEPTION_MSGS::SHAPEHIST"))

(in-package "ROS")
;;//! \htmlinclude ShapeHist.msg.html


(defclass hlpr_perception_msgs::ShapeHist
  :super ros::object
  :slots (_cvfh_features_size _cvfh_feature_vector _fpfh_features_size _fpfh_feature_vector ))

(defmethod hlpr_perception_msgs::ShapeHist
  (:init
   (&key
    ((:cvfh_features_size __cvfh_features_size) 0)
    ((:cvfh_feature_vector __cvfh_feature_vector) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fpfh_features_size __fpfh_features_size) 0)
    ((:fpfh_feature_vector __fpfh_feature_vector) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _cvfh_features_size (round __cvfh_features_size))
   (setq _cvfh_feature_vector __cvfh_feature_vector)
   (setq _fpfh_features_size (round __fpfh_features_size))
   (setq _fpfh_feature_vector __fpfh_feature_vector)
   self)
  (:cvfh_features_size
   (&optional __cvfh_features_size)
   (if __cvfh_features_size (setq _cvfh_features_size __cvfh_features_size)) _cvfh_features_size)
  (:cvfh_feature_vector
   (&optional __cvfh_feature_vector)
   (if __cvfh_feature_vector (setq _cvfh_feature_vector __cvfh_feature_vector)) _cvfh_feature_vector)
  (:fpfh_features_size
   (&optional __fpfh_features_size)
   (if __fpfh_features_size (setq _fpfh_features_size __fpfh_features_size)) _fpfh_features_size)
  (:fpfh_feature_vector
   (&optional __fpfh_feature_vector)
   (if __fpfh_feature_vector (setq _fpfh_feature_vector __fpfh_feature_vector)) _fpfh_feature_vector)
  (:serialization-length
   ()
   (+
    ;; uint32 _cvfh_features_size
    4
    ;; float64[] _cvfh_feature_vector
    (* 8    (length _cvfh_feature_vector)) 4
    ;; uint32 _fpfh_features_size
    4
    ;; float64[] _fpfh_feature_vector
    (* 8    (length _fpfh_feature_vector)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _cvfh_features_size
       (write-long _cvfh_features_size s)
     ;; float64[] _cvfh_feature_vector
     (write-long (length _cvfh_feature_vector) s)
     (dotimes (i (length _cvfh_feature_vector))
       (sys::poke (elt _cvfh_feature_vector i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint32 _fpfh_features_size
       (write-long _fpfh_features_size s)
     ;; float64[] _fpfh_feature_vector
     (write-long (length _fpfh_feature_vector) s)
     (dotimes (i (length _fpfh_feature_vector))
       (sys::poke (elt _fpfh_feature_vector i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _cvfh_features_size
     (setq _cvfh_features_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _cvfh_feature_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cvfh_feature_vector (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cvfh_feature_vector i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint32 _fpfh_features_size
     (setq _fpfh_features_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _fpfh_feature_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fpfh_feature_vector (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fpfh_feature_vector i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get hlpr_perception_msgs::ShapeHist :md5sum-) "65c53c27de6ca549a96dbffa1766d8b4")
(setf (get hlpr_perception_msgs::ShapeHist :datatype-) "hlpr_perception_msgs/ShapeHist")
(setf (get hlpr_perception_msgs::ShapeHist :definition-)
      "# Shape histogram using CVFH

uint32 cvfh_features_size
float64[] cvfh_feature_vector

#################################
# Shape histogram using FPFH

uint32 fpfh_features_size
float64[] fpfh_feature_vector

")



(provide :hlpr_perception_msgs/ShapeHist "65c53c27de6ca549a96dbffa1766d8b4")


