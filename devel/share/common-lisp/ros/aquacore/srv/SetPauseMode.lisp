; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetPauseMode-request.msg.html

(cl:defclass <SetPauseMode-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPauseMode-request (<SetPauseMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPauseMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPauseMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetPauseMode-request> is deprecated: use aquacore-srv:SetPauseMode-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetPauseMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:value-val is deprecated.  Use aquacore-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPauseMode-request>) ostream)
  "Serializes a message object of type '<SetPauseMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPauseMode-request>) istream)
  "Deserializes a message object of type '<SetPauseMode-request>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPauseMode-request>)))
  "Returns string type for a service object of type '<SetPauseMode-request>"
  "aquacore/SetPauseModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPauseMode-request)))
  "Returns string type for a service object of type 'SetPauseMode-request"
  "aquacore/SetPauseModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPauseMode-request>)))
  "Returns md5sum for a message object of type '<SetPauseMode-request>"
  "313b4007c7badea2cfc258f5f204bf3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPauseMode-request)))
  "Returns md5sum for a message object of type 'SetPauseMode-request"
  "313b4007c7badea2cfc258f5f204bf3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPauseMode-request>)))
  "Returns full string definition for message of type '<SetPauseMode-request>"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPauseMode-request)))
  "Returns full string definition for message of type 'SetPauseMode-request"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPauseMode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPauseMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPauseMode-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetPauseMode-response.msg.html

(cl:defclass <SetPauseMode-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPauseMode-response (<SetPauseMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPauseMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPauseMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetPauseMode-response> is deprecated: use aquacore-srv:SetPauseMode-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetPauseMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:response-val is deprecated.  Use aquacore-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPauseMode-response>) ostream)
  "Serializes a message object of type '<SetPauseMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPauseMode-response>) istream)
  "Deserializes a message object of type '<SetPauseMode-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPauseMode-response>)))
  "Returns string type for a service object of type '<SetPauseMode-response>"
  "aquacore/SetPauseModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPauseMode-response)))
  "Returns string type for a service object of type 'SetPauseMode-response"
  "aquacore/SetPauseModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPauseMode-response>)))
  "Returns md5sum for a message object of type '<SetPauseMode-response>"
  "313b4007c7badea2cfc258f5f204bf3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPauseMode-response)))
  "Returns md5sum for a message object of type 'SetPauseMode-response"
  "313b4007c7badea2cfc258f5f204bf3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPauseMode-response>)))
  "Returns full string definition for message of type '<SetPauseMode-response>"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPauseMode-response)))
  "Returns full string definition for message of type 'SetPauseMode-response"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPauseMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPauseMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPauseMode-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPauseMode)))
  'SetPauseMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPauseMode)))
  'SetPauseMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPauseMode)))
  "Returns string type for a service object of type '<SetPauseMode>"
  "aquacore/SetPauseMode")