;; Auto-generated. Do not edit!


(when (boundp 'hlpr_perception_msgs::OtherFeatures)
  (if (not (find-package "HLPR_PERCEPTION_MSGS"))
    (make-package "HLPR_PERCEPTION_MSGS"))
  (shadow 'OtherFeatures (find-package "HLPR_PERCEPTION_MSGS")))
(unless (find-package "HLPR_PERCEPTION_MSGS::OTHERFEATURES")
  (make-package "HLPR_PERCEPTION_MSGS::OTHERFEATURES"))

(in-package "ROS")
;;//! \htmlinclude OtherFeatures.msg.html


(defclass hlpr_perception_msgs::OtherFeatures
  :super ros::object
  :slots (_other_features_size _data ))

(defmethod hlpr_perception_msgs::OtherFeatures
  (:init
   (&key
    ((:other_features_size __other_features_size) 0)
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _other_features_size (round __other_features_size))
   (setq _data __data)
   self)
  (:other_features_size
   (&optional __other_features_size)
   (if __other_features_size (setq _other_features_size __other_features_size)) _other_features_size)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _other_features_size
    4
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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

(setf (get hlpr_perception_msgs::OtherFeatures :md5sum-) "2d22cbac6bc3cfd07bc3aeb056714914")
(setf (get hlpr_perception_msgs::OtherFeatures :datatype-) "hlpr_perception_msgs/OtherFeatures")
(setf (get hlpr_perception_msgs::OtherFeatures :definition-)
      "#Other features, etc. Unpacking will be on the other side

uint32 other_features_size
float64[] data

")



(provide :hlpr_perception_msgs/OtherFeatures "2d22cbac6bc3cfd07bc3aeb056714914")


