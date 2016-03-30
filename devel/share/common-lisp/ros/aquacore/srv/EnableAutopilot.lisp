; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude EnableAutopilot-request.msg.html

(cl:defclass <EnableAutopilot-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass EnableAutopilot-request (<EnableAutopilot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableAutopilot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableAutopilot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<EnableAutopilot-request> is deprecated: use aquacore-srv:EnableAutopilot-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <EnableAutopilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:state-val is deprecated.  Use aquacore-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableAutopilot-request>) ostream)
  "Serializes a message object of type '<EnableAutopilot-request>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableAutopilot-request>) istream)
  "Deserializes a message object of type '<EnableAutopilot-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableAutopilot-request>)))
  "Returns string type for a service object of type '<EnableAutopilot-request>"
  "aquacore/EnableAutopilotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableAutopilot-request)))
  "Returns string type for a service object of type 'EnableAutopilot-request"
  "aquacore/EnableAutopilotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableAutopilot-request>)))
  "Returns md5sum for a message object of type '<EnableAutopilot-request>"
  "8ae95d1385d7365f05201d22aea7ac68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableAutopilot-request)))
  "Returns md5sum for a message object of type 'EnableAutopilot-request"
  "8ae95d1385d7365f05201d22aea7ac68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableAutopilot-request>)))
  "Returns full string definition for message of type '<EnableAutopilot-request>"
  (cl:format cl:nil "int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableAutopilot-request)))
  "Returns full string definition for message of type 'EnableAutopilot-request"
  (cl:format cl:nil "int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableAutopilot-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableAutopilot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableAutopilot-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude EnableAutopilot-response.msg.html

(cl:defclass <EnableAutopilot-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EnableAutopilot-response (<EnableAutopilot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableAutopilot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableAutopilot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<EnableAutopilot-response> is deprecated: use aquacore-srv:EnableAutopilot-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <EnableAutopilot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:response-val is deprecated.  Use aquacore-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableAutopilot-response>) ostream)
  "Serializes a message object of type '<EnableAutopilot-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableAutopilot-response>) istream)
  "Deserializes a message object of type '<EnableAutopilot-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableAutopilot-response>)))
  "Returns string type for a service object of type '<EnableAutopilot-response>"
  "aquacore/EnableAutopilotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableAutopilot-response)))
  "Returns string type for a service object of type 'EnableAutopilot-response"
  "aquacore/EnableAutopilotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableAutopilot-response>)))
  "Returns md5sum for a message object of type '<EnableAutopilot-response>"
  "8ae95d1385d7365f05201d22aea7ac68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableAutopilot-response)))
  "Returns md5sum for a message object of type 'EnableAutopilot-response"
  "8ae95d1385d7365f05201d22aea7ac68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableAutopilot-response>)))
  "Returns full string definition for message of type '<EnableAutopilot-response>"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableAutopilot-response)))
  "Returns full string definition for message of type 'EnableAutopilot-response"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableAutopilot-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableAutopilot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableAutopilot-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EnableAutopilot)))
  'EnableAutopilot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EnableAutopilot)))
  'EnableAutopilot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableAutopilot)))
  "Returns string type for a service object of type '<EnableAutopilot>"
  "aquacore/EnableAutopilot")