; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetAutopilotMode-request.msg.html

(cl:defclass <SetAutopilotMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass SetAutopilotMode-request (<SetAutopilotMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAutopilotMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAutopilotMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetAutopilotMode-request> is deprecated: use aquacore-srv:SetAutopilotMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetAutopilotMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:mode-val is deprecated.  Use aquacore-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAutopilotMode-request>) ostream)
  "Serializes a message object of type '<SetAutopilotMode-request>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAutopilotMode-request>) istream)
  "Deserializes a message object of type '<SetAutopilotMode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAutopilotMode-request>)))
  "Returns string type for a service object of type '<SetAutopilotMode-request>"
  "aquacore/SetAutopilotModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutopilotMode-request)))
  "Returns string type for a service object of type 'SetAutopilotMode-request"
  "aquacore/SetAutopilotModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAutopilotMode-request>)))
  "Returns md5sum for a message object of type '<SetAutopilotMode-request>"
  "0b08a36ed67e50c96239bec8f215b27f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAutopilotMode-request)))
  "Returns md5sum for a message object of type 'SetAutopilotMode-request"
  "0b08a36ed67e50c96239bec8f215b27f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAutopilotMode-request>)))
  "Returns full string definition for message of type '<SetAutopilotMode-request>"
  (cl:format cl:nil "~%int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAutopilotMode-request)))
  "Returns full string definition for message of type 'SetAutopilotMode-request"
  (cl:format cl:nil "~%int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAutopilotMode-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAutopilotMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAutopilotMode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SetAutopilotMode-response.msg.html

(cl:defclass <SetAutopilotMode-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetAutopilotMode-response (<SetAutopilotMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAutopilotMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAutopilotMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetAutopilotMode-response> is deprecated: use aquacore-srv:SetAutopilotMode-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetAutopilotMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:response-val is deprecated.  Use aquacore-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAutopilotMode-response>) ostream)
  "Serializes a message object of type '<SetAutopilotMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAutopilotMode-response>) istream)
  "Deserializes a message object of type '<SetAutopilotMode-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAutopilotMode-response>)))
  "Returns string type for a service object of type '<SetAutopilotMode-response>"
  "aquacore/SetAutopilotModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutopilotMode-response)))
  "Returns string type for a service object of type 'SetAutopilotMode-response"
  "aquacore/SetAutopilotModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAutopilotMode-response>)))
  "Returns md5sum for a message object of type '<SetAutopilotMode-response>"
  "0b08a36ed67e50c96239bec8f215b27f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAutopilotMode-response)))
  "Returns md5sum for a message object of type 'SetAutopilotMode-response"
  "0b08a36ed67e50c96239bec8f215b27f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAutopilotMode-response>)))
  "Returns full string definition for message of type '<SetAutopilotMode-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAutopilotMode-response)))
  "Returns full string definition for message of type 'SetAutopilotMode-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAutopilotMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAutopilotMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAutopilotMode-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAutopilotMode)))
  'SetAutopilotMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAutopilotMode)))
  'SetAutopilotMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutopilotMode)))
  "Returns string type for a service object of type '<SetAutopilotMode>"
  "aquacore/SetAutopilotMode")