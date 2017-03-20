;; Auto-generated. Do not edit!


(when (boundp 'wpi_jaco_msgs::AngularCommand)
  (if (not (find-package "WPI_JACO_MSGS"))
    (make-package "WPI_JACO_MSGS"))
  (shadow 'AngularCommand (find-package "WPI_JACO_MSGS")))
(unless (find-package "WPI_JACO_MSGS::ANGULARCOMMAND")
  (make-package "WPI_JACO_MSGS::ANGULARCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude AngularCommand.msg.html


(defclass wpi_jaco_msgs::AngularCommand
  :super ros::object
  :slots (_position _armCommand _fingerCommand _repeat _joints _fingers ))

(defmethod wpi_jaco_msgs::AngularCommand
  (:init
   (&key
    ((:position __position) nil)
    ((:armCommand __armCommand) nil)
    ((:fingerCommand __fingerCommand) nil)
    ((:repeat __repeat) nil)
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fingers __fingers) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _position __position)
   (setq _armCommand __armCommand)
   (setq _fingerCommand __fingerCommand)
   (setq _repeat __repeat)
   (setq _joints __joints)
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
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
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
    ;; float32[] _joints
    (* 4    (length _joints)) 4
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
     ;; float32[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
   ;; float32[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
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

(setf (get wpi_jaco_msgs::AngularCommand :md5sum-) "f29b6dabb764f8caf0ebba4c1ef528d8")
(setf (get wpi_jaco_msgs::AngularCommand :datatype-) "wpi_jaco_msgs/AngularCommand")
(setf (get wpi_jaco_msgs::AngularCommand :definition-)
      "bool position       # true for a position command, false for a velocity command
bool armCommand     # true if this command includes arm joint inputs
bool fingerCommand  # true if this command includes finger inputs
bool repeat         # true if the command should be repeatedly sent over a short interval
float32[] joints    # position (rad) or velocity (rad/s) arm command
float32[] fingers   # position (rad) or velocity (rad/s) finger command

")



(provide :wpi_jaco_msgs/AngularCommand "f29b6dabb764f8caf0ebba4c1ef528d8")


