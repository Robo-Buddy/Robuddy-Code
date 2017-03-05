;; Auto-generated. Do not edit!


(when (boundp 'wpi_jaco_msgs::GetAngularPosition)
  (if (not (find-package "WPI_JACO_MSGS"))
    (make-package "WPI_JACO_MSGS"))
  (shadow 'GetAngularPosition (find-package "WPI_JACO_MSGS")))
(unless (find-package "WPI_JACO_MSGS::GETANGULARPOSITION")
  (make-package "WPI_JACO_MSGS::GETANGULARPOSITION"))
(unless (find-package "WPI_JACO_MSGS::GETANGULARPOSITIONREQUEST")
  (make-package "WPI_JACO_MSGS::GETANGULARPOSITIONREQUEST"))
(unless (find-package "WPI_JACO_MSGS::GETANGULARPOSITIONRESPONSE")
  (make-package "WPI_JACO_MSGS::GETANGULARPOSITIONRESPONSE"))

(in-package "ROS")





(defclass wpi_jaco_msgs::GetAngularPositionRequest
  :super ros::object
  :slots ())

(defmethod wpi_jaco_msgs::GetAngularPositionRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass wpi_jaco_msgs::GetAngularPositionResponse
  :super ros::object
  :slots (_pos ))

(defmethod wpi_jaco_msgs::GetAngularPositionResponse
  (:init
   (&key
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pos __pos)
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; float32[] _pos
    (* 4    (length _pos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass wpi_jaco_msgs::GetAngularPosition
  :super ros::object
  :slots ())

(setf (get wpi_jaco_msgs::GetAngularPosition :md5sum-) "2ddbdf76cbefd59cd9a914780fdf2963")
(setf (get wpi_jaco_msgs::GetAngularPosition :datatype-) "wpi_jaco_msgs/GetAngularPosition")
(setf (get wpi_jaco_msgs::GetAngularPosition :request) wpi_jaco_msgs::GetAngularPositionRequest)
(setf (get wpi_jaco_msgs::GetAngularPosition :response) wpi_jaco_msgs::GetAngularPositionResponse)

(defmethod wpi_jaco_msgs::GetAngularPositionRequest
  (:response () (instance wpi_jaco_msgs::GetAngularPositionResponse :init)))

(setf (get wpi_jaco_msgs::GetAngularPositionRequest :md5sum-) "2ddbdf76cbefd59cd9a914780fdf2963")
(setf (get wpi_jaco_msgs::GetAngularPositionRequest :datatype-) "wpi_jaco_msgs/GetAngularPositionRequest")
(setf (get wpi_jaco_msgs::GetAngularPositionRequest :definition-)
      "---
float32[] pos

")

(setf (get wpi_jaco_msgs::GetAngularPositionResponse :md5sum-) "2ddbdf76cbefd59cd9a914780fdf2963")
(setf (get wpi_jaco_msgs::GetAngularPositionResponse :datatype-) "wpi_jaco_msgs/GetAngularPositionResponse")
(setf (get wpi_jaco_msgs::GetAngularPositionResponse :definition-)
      "---
float32[] pos

")



(provide :wpi_jaco_msgs/GetAngularPosition "2ddbdf76cbefd59cd9a914780fdf2963")


