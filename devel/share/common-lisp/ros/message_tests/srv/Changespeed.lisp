; Auto-generated. Do not edit!


(cl:in-package message_tests-srv)


;//! \htmlinclude Changespeed-request.msg.html

(cl:defclass <Changespeed-request> (roslisp-msg-protocol:ros-message)
  ((newspeed
    :reader newspeed
    :initarg :newspeed
    :type cl:float
    :initform 0.0))
)

(cl:defclass Changespeed-request (<Changespeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Changespeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Changespeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name message_tests-srv:<Changespeed-request> is deprecated: use message_tests-srv:Changespeed-request instead.")))

(cl:ensure-generic-function 'newspeed-val :lambda-list '(m))
(cl:defmethod newspeed-val ((m <Changespeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader message_tests-srv:newspeed-val is deprecated.  Use message_tests-srv:newspeed instead.")
  (newspeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Changespeed-request>) ostream)
  "Serializes a message object of type '<Changespeed-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'newspeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Changespeed-request>) istream)
  "Deserializes a message object of type '<Changespeed-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'newspeed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Changespeed-request>)))
  "Returns string type for a service object of type '<Changespeed-request>"
  "message_tests/ChangespeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Changespeed-request)))
  "Returns string type for a service object of type 'Changespeed-request"
  "message_tests/ChangespeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Changespeed-request>)))
  "Returns md5sum for a message object of type '<Changespeed-request>"
  "d7e28d0cca4452e86706e354055b7abc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Changespeed-request)))
  "Returns md5sum for a message object of type 'Changespeed-request"
  "d7e28d0cca4452e86706e354055b7abc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Changespeed-request>)))
  "Returns full string definition for message of type '<Changespeed-request>"
  (cl:format cl:nil "float64 newspeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Changespeed-request)))
  "Returns full string definition for message of type 'Changespeed-request"
  (cl:format cl:nil "float64 newspeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Changespeed-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Changespeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Changespeed-request
    (cl:cons ':newspeed (newspeed msg))
))
;//! \htmlinclude Changespeed-response.msg.html

(cl:defclass <Changespeed-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Changespeed-response (<Changespeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Changespeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Changespeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name message_tests-srv:<Changespeed-response> is deprecated: use message_tests-srv:Changespeed-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <Changespeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader message_tests-srv:ret-val is deprecated.  Use message_tests-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Changespeed-response>) ostream)
  "Serializes a message object of type '<Changespeed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Changespeed-response>) istream)
  "Deserializes a message object of type '<Changespeed-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Changespeed-response>)))
  "Returns string type for a service object of type '<Changespeed-response>"
  "message_tests/ChangespeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Changespeed-response)))
  "Returns string type for a service object of type 'Changespeed-response"
  "message_tests/ChangespeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Changespeed-response>)))
  "Returns md5sum for a message object of type '<Changespeed-response>"
  "d7e28d0cca4452e86706e354055b7abc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Changespeed-response)))
  "Returns md5sum for a message object of type 'Changespeed-response"
  "d7e28d0cca4452e86706e354055b7abc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Changespeed-response>)))
  "Returns full string definition for message of type '<Changespeed-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Changespeed-response)))
  "Returns full string definition for message of type 'Changespeed-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Changespeed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Changespeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Changespeed-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Changespeed)))
  'Changespeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Changespeed)))
  'Changespeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Changespeed)))
  "Returns string type for a service object of type '<Changespeed>"
  "message_tests/Changespeed")