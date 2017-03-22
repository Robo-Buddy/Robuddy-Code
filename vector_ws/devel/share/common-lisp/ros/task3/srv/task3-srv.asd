
(cl:in-package :asdf)

(defsystem "task3-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "object_frame_data" :depends-on ("_package_object_frame_data"))
    (:file "_package_object_frame_data" :depends-on ("_package"))
  ))