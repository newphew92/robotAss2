; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude EnableDepthControl-request.msg.html

(cl:defclass <EnableDepthControl-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass EnableDepthControl-request (<EnableDepthControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableDepthControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableDepthControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<EnableDepthControl-request> is deprecated: use aquacore-srv:EnableDepthControl-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <EnableDepthControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:state-val is deprecated.  Use aquacore-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableDepthControl-request>) ostream)
  "Serializes a message object of type '<EnableDepthControl-request>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableDepthControl-request>) istream)
  "Deserializes a message object of type '<EnableDepthControl-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableDepthControl-request>)))
  "Returns string type for a service object of type '<EnableDepthControl-request>"
  "aquacore/EnableDepthControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableDepthControl-request)))
  "Returns string type for a service object of type 'EnableDepthControl-request"
  "aquacore/EnableDepthControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableDepthControl-request>)))
  "Returns md5sum for a message object of type '<EnableDepthControl-request>"
  "8ae95d1385d7365f05201d22aea7ac68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableDepthControl-request)))
  "Returns md5sum for a message object of type 'EnableDepthControl-request"
  "8ae95d1385d7365f05201d22aea7ac68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableDepthControl-request>)))
  "Returns full string definition for message of type '<EnableDepthControl-request>"
  (cl:format cl:nil "int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableDepthControl-request)))
  "Returns full string definition for message of type 'EnableDepthControl-request"
  (cl:format cl:nil "int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableDepthControl-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableDepthControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableDepthControl-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude EnableDepthControl-response.msg.html

(cl:defclass <EnableDepthControl-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EnableDepthControl-response (<EnableDepthControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableDepthControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableDepthControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<EnableDepthControl-response> is deprecated: use aquacore-srv:EnableDepthControl-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <EnableDepthControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:response-val is deprecated.  Use aquacore-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableDepthControl-response>) ostream)
  "Serializes a message object of type '<EnableDepthControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableDepthControl-response>) istream)
  "Deserializes a message object of type '<EnableDepthControl-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableDepthControl-response>)))
  "Returns string type for a service object of type '<EnableDepthControl-response>"
  "aquacore/EnableDepthControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableDepthControl-response)))
  "Returns string type for a service object of type 'EnableDepthControl-response"
  "aquacore/EnableDepthControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableDepthControl-response>)))
  "Returns md5sum for a message object of type '<EnableDepthControl-response>"
  "8ae95d1385d7365f05201d22aea7ac68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableDepthControl-response)))
  "Returns md5sum for a message object of type 'EnableDepthControl-response"
  "8ae95d1385d7365f05201d22aea7ac68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableDepthControl-response>)))
  "Returns full string definition for message of type '<EnableDepthControl-response>"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableDepthControl-response)))
  "Returns full string definition for message of type 'EnableDepthControl-response"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableDepthControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableDepthControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableDepthControl-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EnableDepthControl)))
  'EnableDepthControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EnableDepthControl)))
  'EnableDepthControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableDepthControl)))
  "Returns string type for a service object of type '<EnableDepthControl>"
  "aquacore/EnableDepthControl")