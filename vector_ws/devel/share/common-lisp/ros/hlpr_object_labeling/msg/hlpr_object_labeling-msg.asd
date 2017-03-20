
(cl:in-package :asdf)

(defsystem "hlpr_object_labeling-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :hlpr_feature_extraction-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LabeledObjects" :depends-on ("_package_LabeledObjects"))
    (:file "_package_LabeledObjects" :depends-on ("_package"))
  ))