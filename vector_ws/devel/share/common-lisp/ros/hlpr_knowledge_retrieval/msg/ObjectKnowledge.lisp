; Auto-generated. Do not edit!


(cl:in-package hlpr_knowledge_retrieval-msg)


;//! \htmlinclude ObjectKnowledge.msg.html

(cl:defclass <ObjectKnowledge> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (labels
    :reader labels
    :initarg :labels
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (knowledge
    :reader knowledge
    :initarg :knowledge
    :type (cl:vector hlpr_knowledge_retrieval-msg:ObjectKnowledgeArray)
   :initform (cl:make-array 0 :element-type 'hlpr_knowledge_retrieval-msg:ObjectKnowledgeArray :initial-element (cl:make-instance 'hlpr_knowledge_retrieval-msg:ObjectKnowledgeArray))))
)

(cl:defclass ObjectKnowledge (<ObjectKnowledge>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectKnowledge>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectKnowledge)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_knowledge_retrieval-msg:<ObjectKnowledge> is deprecated: use hlpr_knowledge_retrieval-msg:ObjectKnowledge instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectKnowledge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_knowledge_retrieval-msg:header-val is deprecated.  Use hlpr_knowledge_retrieval-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'labels-val :lambda-list '(m))
(cl:defmethod labels-val ((m <ObjectKnowledge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_knowledge_retrieval-msg:labels-val is deprecated.  Use hlpr_knowledge_retrieval-msg:labels instead.")
  (labels m))

(cl:ensure-generic-function 'knowledge-val :lambda-list '(m))
(cl:defmethod knowledge-val ((m <ObjectKnowledge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_knowledge_retrieval-msg:knowledge-val is deprecated.  Use hlpr_knowledge_retrieval-msg:knowledge instead.")
  (knowledge m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectKnowledge>) ostream)
  "Serializes a message object of type '<ObjectKnowledge>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'labels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'labels))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'knowledge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'knowledge))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectKnowledge>) istream)
  "Deserializes a message object of type '<ObjectKnowledge>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'labels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'labels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'knowledge) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'knowledge)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hlpr_knowledge_retrieval-msg:ObjectKnowledgeArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectKnowledge>)))
  "Returns string type for a message object of type '<ObjectKnowledge>"
  "hlpr_knowledge_retrieval/ObjectKnowledge")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectKnowledge)))
  "Returns string type for a message object of type 'ObjectKnowledge"
  "hlpr_knowledge_retrieval/ObjectKnowledge")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectKnowledge>)))
  "Returns md5sum for a message object of type '<ObjectKnowledge>"
  "24ebd4464299d72b0a523b08cac62371")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectKnowledge)))
  "Returns md5sum for a message object of type 'ObjectKnowledge"
  "24ebd4464299d72b0a523b08cac62371")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectKnowledge>)))
  "Returns full string definition for message of type '<ObjectKnowledge>"
  (cl:format cl:nil "Header header~%std_msgs/String[] labels~%ObjectKnowledgeArray[] knowledge~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: hlpr_knowledge_retrieval/ObjectKnowledgeArray~%std_msgs/String[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectKnowledge)))
  "Returns full string definition for message of type 'ObjectKnowledge"
  (cl:format cl:nil "Header header~%std_msgs/String[] labels~%ObjectKnowledgeArray[] knowledge~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: hlpr_knowledge_retrieval/ObjectKnowledgeArray~%std_msgs/String[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectKnowledge>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'labels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'knowledge) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectKnowledge>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectKnowledge
    (cl:cons ':header (header msg))
    (cl:cons ':labels (labels msg))
    (cl:cons ':knowledge (knowledge msg))
))
