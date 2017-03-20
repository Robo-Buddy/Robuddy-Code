;; Auto-generated. Do not edit!


(when (boundp 'wpi_jaco_msgs::CartesianCommand)
  (if (not (find-package "WPI_JACO_MSGS"))
    (make-package "WPI_JACO_MSGS"))
  (shadow 'CartesianCommand (find-package "WPI_JACO_MSGS")))
(unless (find-package "WPI_JACO_MSGS::CARTESIANCOMMAND")
  (make-package "WPI_JACO_MSGS::CARTESIANCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude CartesianCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass wpi_jaco_msgs::CartesianCommand
  :super ros::object
  :slots (_position _armCommand _fingerCommand _repeat _arm _fingers ))

(defmethod wpi_jaco_msgs::CartesianCommand
  (:init
   (&key
    ((:position __position) nil)
    ((:armCommand __armCommand) nil)
    ((:fingerCommand __fingerCommand) nil)
    ((:repeat __repeat) nil)
    ((:arm __arm) (instance geometry_msgs::Twist :init))
    ((:fingers __fingers) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _position __position)
   (setq _armCommand __armCommand)
   (setq _fingerCommand __fingerCommand)
   (setq _repeat __repeat)
   (setq _arm __arm)
   (setq _fingers __fingers)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:armCommand
   (&optional __armCommand)
   (if __armCommand (setq _armCommand __armCommand)) _armCommand)
  (:fingerCommand
   (&optional __fingerCommand)
   (if __fingerCommand (setq _fingerCommand __fingerCommand)) _fingerCommand)
  (:repeat
   (&optional __repeat)
   (if __repeat (setq _repeat __repeat)) _repeat)
  (:arm
   (&rest __arm)
   (if (keywordp (car __arm))
       (send* _arm __arm)
     (progn
       (if __arm (setq _arm (car __arm)))
       _arm)))
  (:fingers
   (&optional __fingers)
   (if __fingers (setq _fingers __fingers)) _fingers)
  (:serialization-length
   ()
   (+
    ;; bool _position
    1
    ;; bool _armCommand
    1
    ;; bool _fingerCommand
    1
    ;; bool _repeat
    1
    ;; geometry_msgs/Twist _arm
    (send _arm :serialization-length)
    ;; float32[] _fingers
    (* 4    (length _fingers)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _position
       (if _position (write-byte -1 s) (write-byte 0 s))
     ;; bool _armCommand
       (if _armCommand (write-byte -1 s) (write-byte 0 s))
     ;; bool _fingerCommand
       (if _fingerCommand (write-byte -1 s) (write-byte 0 s))
     ;; bool _repeat
       (if _repeat (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Twist _arm
       (send _arm :serialize s)
     ;; float32[] _fingers
     (write-long (length _fingers) s)
     (dotimes (i (length _fingers))
       (sys::poke (elt _fingers i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _position
     (setq _position (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _armCommand
     (setq _armCommand (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fingerCommand
     (setq _fingerCommand (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _repeat
     (setq _repeat (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Twist _arm
     (send _arm :deserialize buf ptr-) (incf ptr- (send _arm :serialization-length))
   ;; float32[] _fingers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fingers (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fingers i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get wpi_jaco_msgs::CartesianCommand :md5sum-) "be41abcf10fd0ff2a0ead4293f8dfdf1")
(setf (get wpi_jaco_msgs::CartesianCommand :datatype-) "wpi_jaco_msgs/CartesianCommand")
(setf (get wpi_jaco_msgs::CartesianCommand :definition-)
      "bool position             # true for a position command, false for a velocity command
bool armCommand           # true if this command includes arm joint inputs
bool fingerCommand        # true if this command includes finger inputs
bool repeat               # true if the command should be repeatedly sent over a short interval
geometry_msgs/Twist arm   # position (m, rad) or velocity (m/s, rad/s) arm command
float32[] fingers         # position (rad) or velocity (rad/s) finger command

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
")



(provide :wpi_jaco_msgs/CartesianCommand "be41abcf10fd0ff2a0ead4293f8dfdf1")


