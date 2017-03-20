;; Auto-generated. Do not edit!


(when (boundp 'hlpr_knowledge_retrieval::ObjectKnowledgeArray)
  (if (not (find-package "HLPR_KNOWLEDGE_RETRIEVAL"))
    (make-package "HLPR_KNOWLEDGE_RETRIEVAL"))
  (shadow 'ObjectKnowledgeArray (find-package "HLPR_KNOWLEDGE_RETRIEVAL")))
(unless (find-package "HLPR_KNOWLEDGE_RETRIEVAL::OBJECTKNOWLEDGEARRAY")
  (make-package "HLPR_KNOWLEDGE_RETRIEVAL::OBJECTKNOWLEDGEARRAY"))

(in-package "ROS")
;;//! \htmlinclude ObjectKnowledgeArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hlpr_knowledge_retrieval::ObjectKnowledgeArray
  :super ros::object
  :slots (_data ))

(defmethod hlpr_knowledge_retrieval::ObjectKnowledgeArray
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hlpr_knowledge_retrieval::ObjectKnowledgeArray :md5sum-) "131c7b16e90d7646b67a1c83cd590279")
(setf (get hlpr_knowledge_retrieval::ObjectKnowledgeArray :datatype-) "hlpr_knowledge_retrieval/ObjectKnowledgeArray")
(setf (get hlpr_knowledge_retrieval::ObjectKnowledgeArray :definition-)
      "std_msgs/String[] data

================================================================================
MSG: std_msgs/String
string data

")



(provide :hlpr_knowledge_retrieval/ObjectKnowledgeArray "131c7b16e90d7646b67a1c83cd590279")


