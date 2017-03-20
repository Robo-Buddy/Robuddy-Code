; Auto-generated. Do not edit!


(cl:in-package hlpr_knowledge_retrieval-msg)


;//! \htmlinclude ObjectKnowledgeArray.msg.html

(cl:defclass <ObjectKnowledgeArray> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String))))
)

(cl:defclass ObjectKnowledgeArray (<ObjectKnowledgeArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectKnowledgeArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectKnowledgeArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hlpr_knowledge_retrieval-msg:<ObjectKnowledgeArray> is deprecated: use hlpr_knowledge_retrieval-msg:ObjectKnowledgeArray instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ObjectKnowledgeArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hlpr_knowledge_retrieval-msg:data-val is deprecated.  Use hlpr_knowledge_retrieval-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectKnowledgeArray>) ostream)
  "Serializes a message object of type '<ObjectKnowledgeArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectKnowledgeArray>) istream)
  "Deserializes a message object of type '<ObjectKnowledgeArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectKnowledgeArray>)))
  "Returns string type for a message object of type '<ObjectKnowledgeArray>"
  "hlpr_knowledge_retrieval/ObjectKnowledgeArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectKnowledgeArray)))
  "Returns string type for a message object of type 'ObjectKnowledgeArray"
  "hlpr_knowledge_retrieval/ObjectKnowledgeArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectKnowledgeArray>)))
  "Returns md5sum for a message object of type '<ObjectKnowledgeArray>"
  "131c7b16e90d7646b67a1c83cd590279")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectKnowledgeArray)))
  "Returns md5sum for a message object of type 'ObjectKnowledgeArray"
  "131c7b16e90d7646b67a1c83cd590279")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectKnowledgeArray>)))
  "Returns full string definition for message of type '<ObjectKnowledgeArray>"
  (cl:format cl:nil "std_msgs/String[] data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectKnowledgeArray)))
  "Returns full string definition for message of type 'ObjectKnowledgeArray"
  (cl:format cl:nil "std_msgs/String[] data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectKnowledgeArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectKnowledgeArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectKnowledgeArray
    (cl:cons ':data (data msg))
))
