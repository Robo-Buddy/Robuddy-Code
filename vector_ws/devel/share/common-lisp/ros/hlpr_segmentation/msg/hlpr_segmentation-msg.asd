
(cl:in-package :asdf)

(defsystem "hlpr_segmentation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SegmentedClusters" :depends-on ("_package_SegmentedClusters"))
    (:file "_package_SegmentedClusters" :depends-on ("_package"))
    (:file "ClusterIndex" :depends-on ("_package_ClusterIndex"))
    (:file "_package_ClusterIndex" :depends-on ("_package"))
  ))