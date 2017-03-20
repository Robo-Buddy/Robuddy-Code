;; Auto-generated. Do not edit!


(when (boundp 'hlpr_segmentation::ClusterIndex)
  (if (not (find-package "HLPR_SEGMENTATION"))
    (make-package "HLPR_SEGMENTATION"))
  (shadow 'ClusterIndex (find-package "HLPR_SEGMENTATION")))
(unless (find-package "HLPR_SEGMENTATION::CLUSTERINDEX")
  (make-package "HLPR_SEGMENTATION::CLUSTERINDEX"))

(in-package "ROS")
;;//! \htmlinclude ClusterIndex.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hlpr_segmentation::ClusterIndex
  :super ros::object
  :slots (_indices ))

(defmethod hlpr_segmentation::ClusterIndex
  (:init
   (&key
    ((:indices __indices) (let (r) (dotimes (i 0) (push (instance std_msgs::Int32 :init) r)) r))
    )
   (send-super :init)
   (setq _indices __indices)
   self)
  (:indices
   (&rest __indices)
   (if (keywordp (car __indices))
       (send* _indices __indices)
     (progn
       (if __indices (setq _indices (car __indices)))
       _indices)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32[] _indices
    (apply #'+ (send-all _indices :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32[] _indices
     (write-long (length _indices) s)
     (dolist (elem _indices)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32[] _indices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _indices (let (r) (dotimes (i n) (push (instance std_msgs::Int32 :init) r)) r))
     (dolist (elem- _indices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hlpr_segmentation::ClusterIndex :md5sum-) "355aaec182bd3a24f494f1ab4a82fd9e")
(setf (get hlpr_segmentation::ClusterIndex :datatype-) "hlpr_segmentation/ClusterIndex")
(setf (get hlpr_segmentation::ClusterIndex :definition-)
      "std_msgs/Int32[] indices

================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :hlpr_segmentation/ClusterIndex "355aaec182bd3a24f494f1ab4a82fd9e")


