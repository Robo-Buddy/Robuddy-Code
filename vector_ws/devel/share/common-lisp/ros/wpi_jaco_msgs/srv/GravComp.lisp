; Auto-generated. Do not edit!


(cl:in-package wpi_jaco_msgs-srv)


;//! \htmlinclude GravComp-request.msg.html

(cl:defclass <GravComp-request> (roslisp-msg-protocol:ros-message)
  ((enableGravComp
    :reader enableGravComp
    :initarg :enableGravComp
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GravComp-request (<GravComp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GravComp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GravComp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wpi_jaco_msgs-srv:<GravComp-request> is deprecated: use wpi_jaco_msgs-srv:GravComp-request instead.")))

(cl:ensure-generic-function 'enableGravComp-val :lambda-list '(m))
(cl:defmethod enableGravComp-val ((m <GravComp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpi_jaco_msgs-srv:enableGravComp-val is deprecated.  Use wpi_jaco_msgs-srv:enableGravComp instead.")
  (enableGravComp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GravComp-request>) ostream)
  "Serializes a message object of type '<GravComp-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enableGravComp) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GravComp-request>) istream)
  "Deserializes a message object of type '<GravComp-request>"
    (cl:setf (cl:slot-value msg 'enableGravComp) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GravComp-request>)))
  "Returns string type for a service object of type '<GravComp-request>"
  "wpi_jaco_msgs/GravCompRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GravComp-request)))
  "Returns string type for a service object of type 'GravComp-request"
  "wpi_jaco_msgs/GravCompRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GravComp-request>)))
  "Returns md5sum for a message object of type '<GravComp-request>"
  "9b3823379e0371a824478dadc91ab9ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GravComp-request)))
  "Returns md5sum for a message object of type 'GravComp-request"
  "9b3823379e0371a824478dadc91ab9ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GravComp-request>)))
  "Returns full string definition for message of type '<GravComp-request>"
  (cl:format cl:nil "bool enableGravComp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GravComp-request)))
  "Returns full string definition for message of type 'GravComp-request"
  (cl:format cl:nil "bool enableGravComp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GravComp-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GravComp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GravComp-request
    (cl:cons ':enableGravComp (enableGravComp msg))
))
;//! \htmlinclude GravComp-response.msg.html

(cl:defclass <GravComp-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GravComp-response (<GravComp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GravComp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GravComp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wpi_jaco_msgs-srv:<GravComp-response> is deprecated: use wpi_jaco_msgs-srv:GravComp-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GravComp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpi_jaco_msgs-srv:success-val is deprecated.  Use wpi_jaco_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GravComp-response>) ostream)
  "Serializes a message object of type '<GravComp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GravComp-response>) istream)
  "Deserializes a message object of type '<GravComp-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GravComp-response>)))
  "Returns string type for a service object of type '<GravComp-response>"
  "wpi_jaco_msgs/GravCompResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GravComp-response)))
  "Returns string type for a service object of type 'GravComp-response"
  "wpi_jaco_msgs/GravCompResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GravComp-response>)))
  "Returns md5sum for a message object of type '<GravComp-response>"
  "9b3823379e0371a824478dadc91ab9ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GravComp-response)))
  "Returns md5sum for a message object of type 'GravComp-response"
  "9b3823379e0371a824478dadc91ab9ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GravComp-response>)))
  "Returns full string definition for message of type '<GravComp-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GravComp-response)))
  "Returns full string definition for message of type 'GravComp-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GravComp-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GravComp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GravComp-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GravComp)))
  'GravComp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GravComp)))
  'GravComp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GravComp)))
  "Returns string type for a service object of type '<GravComp>"
  "wpi_jaco_msgs/GravComp")