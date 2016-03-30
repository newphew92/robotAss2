; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetBool-request.msg.html

(cl:defclass <SetBool-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetBool-request (<SetBool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetBool-request> is deprecated: use aquacore-srv:SetBool-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetBool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:value-val is deprecated.  Use aquacore-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBool-request>) ostream)
  "Serializes a message object of type '<SetBool-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBool-request>) istream)
  "Deserializes a message object of type '<SetBool-request>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBool-request>)))
  "Returns string type for a service object of type '<SetBool-request>"
  "aquacore/SetBoolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBool-request)))
  "Returns string type for a service object of type 'SetBool-request"
  "aquacore/SetBoolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBool-request>)))
  "Returns md5sum for a message object of type '<SetBool-request>"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBool-request)))
  "Returns md5sum for a message object of type 'SetBool-request"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBool-request>)))
  "Returns full string definition for message of type '<SetBool-request>"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBool-request)))
  "Returns full string definition for message of type 'SetBool-request"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBool-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBool-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetBool-response.msg.html

(cl:defclass <SetBool-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetBool-response (<SetBool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetBool-response> is deprecated: use aquacore-srv:SetBool-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBool-response>) ostream)
  "Serializes a message object of type '<SetBool-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBool-response>) istream)
  "Deserializes a message object of type '<SetBool-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBool-response>)))
  "Returns string type for a service object of type '<SetBool-response>"
  "aquacore/SetBoolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBool-response)))
  "Returns string type for a service object of type 'SetBool-response"
  "aquacore/SetBoolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBool-response>)))
  "Returns md5sum for a message object of type '<SetBool-response>"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBool-response)))
  "Returns md5sum for a message object of type 'SetBool-response"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBool-response>)))
  "Returns full string definition for message of type '<SetBool-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBool-response)))
  "Returns full string definition for message of type 'SetBool-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBool-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBool-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetBool)))
  'SetBool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetBool)))
  'SetBool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBool)))
  "Returns string type for a service object of type '<SetBool>"
  "aquacore/SetBool")