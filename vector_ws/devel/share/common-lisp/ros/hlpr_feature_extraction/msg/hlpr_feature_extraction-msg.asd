
(cl:in-package :asdf)

(defsystem "hlpr_feature_extraction-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PcFeatures" :depends-on ("_package_PcFeatures"))
    (:file "_package_PcFeatures" :depends-on ("_package"))
    (:file "PcFeatureArray" :depends-on ("_package_PcFeatureArray"))
    (:file "_package_PcFeatureArray" :depends-on ("_package"))
  ))