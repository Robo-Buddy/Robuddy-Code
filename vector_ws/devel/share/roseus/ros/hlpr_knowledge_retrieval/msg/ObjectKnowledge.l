;; Auto-generated. Do not edit!


(when (boundp 'hlpr_knowledge_retrieval::ObjectKnowledge)
  (if (not (find-package "HLPR_KNOWLEDGE_RETRIEVAL"))
    (make-package "HLPR_KNOWLEDGE_RETRIEVAL"))
  (shadow 'ObjectKnowledge (find-package "HLPR_KNOWLEDGE_RETRIEVAL")))
(unless (find-package "HLPR_KNOWLEDGE_RETRIEVAL::OBJECTKNOWLEDGE")
  (make-package "HLPR_KNOWLEDGE_RETRIEVAL::OBJECTKNOWLEDGE"))

(in-package "ROS")
;;//! \htmlinclude ObjectKnowledge.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hlpr_knowledge_retrieval::ObjectKnowledge
  :super ros::object
  :slots (_header _labels _knowledge ))

(defmethod hlpr_knowledge_retrieval::ObjectKnowledge
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:labels __labels) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:knowledge __knowledge) (let (r) (dotimes (i 0) (push (instance hlpr_knowledge_retrieval::ObjectKnowledgeArray :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _labels __labels)
   (setq _knowledge __knowledge)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:labels
   (&rest __labels)
   (if (keywordp (car __labels))
       (send* _labels __labels)
     (progn
       (if __labels (setq _labels (car __labels)))
       _labels)))
  (:knowledge
   (&rest __knowledge)
   (if (keywordp (car __knowledge))
       (send* _knowledge __knowledge)
     (progn
       (if __knowledge (setq _knowledge (car __knowledge)))
       _knowledge)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/String[] _labels
    (apply #'+ (send-all _labels :serialization-length)) 4
    ;; hlpr_knowledge_retrieval/ObjectKnowledgeArray[] _knowledge
    (apply #'+ (send-all _knowledge :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/String[] _labels
     (write-long (length _labels) s)
     (dolist (elem _labels)
       (send elem :serialize s)
       )
     ;; hlpr_knowledge_retrieval/ObjectKnowledgeArray[] _knowledge
     (write-long (length _knowledge) s)
     (dolist (elem _knowledge)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/String[] _labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labels (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _labels)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; hlpr_knowledge_retrieval/ObjectKnowledgeArray[] _knowledge
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _knowledge (let (r) (dotimes (i n) (push (instance hlpr_knowledge_retrieval::ObjectKnowledgeArray :init) r)) r))
     (dolist (elem- _knowledge)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hlpr_knowledge_retrieval::ObjectKnowledge :md5sum-) "24ebd4464299d72b0a523b08cac62371")
(setf (get hlpr_knowledge_retrieval::ObjectKnowledge :datatype-) "hlpr_knowledge_retrieval/ObjectKnowledge")
(setf (get hlpr_knowledge_retrieval::ObjectKnowledge :definition-)
      "Header header
std_msgs/String[] labels
ObjectKnowledgeArray[] knowledge

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: hlpr_knowledge_retrieval/ObjectKnowledgeArray
std_msgs/String[] data

")



(provide :hlpr_knowledge_retrieval/ObjectKnowledge "24ebd4464299d72b0a523b08cac62371")


