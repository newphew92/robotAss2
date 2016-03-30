; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetDirection-request.msg.html

(cl:defclass <SetDirection-request> (roslisp-msg-protocol:ros-message)
  ((forward
    :reader forward
    :initarg :forward
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetDirection-request (<SetDirection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDirection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDirection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetDirection-request> is deprecated: use aquacore-srv:SetDirection-request instead.")))

(cl:ensure-generic-function 'forward-val :lambda-list '(m))
(cl:defmethod forward-val ((m <SetDirection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:forward-val is deprecated.  Use aquacore-srv:forward instead.")
  (forward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDirection-request>) ostream)
  "Serializes a message object of type '<SetDirection-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'forward) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDirection-request>) istream)
  "Deserializes a message object of type '<SetDirection-request>"
    (cl:setf (cl:slot-value msg 'forward) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDirection-request>)))
  "Returns string type for a service object of type '<SetDirection-request>"
  "aquacore/SetDirectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDirection-request)))
  "Returns string type for a service object of type 'SetDirection-request"
  "aquacore/SetDirectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDirection-request>)))
  "Returns md5sum for a message object of type '<SetDirection-request>"
  "0fc3bc45e28c68f06921185960eb727c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDirection-request)))
  "Returns md5sum for a message object of type 'SetDirection-request"
  "0fc3bc45e28c68f06921185960eb727c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDirection-request>)))
  "Returns full string definition for message of type '<SetDirection-request>"
  (cl:format cl:nil "bool forward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDirection-request)))
  "Returns full string definition for message of type 'SetDirection-request"
  (cl:format cl:nil "bool forward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDirection-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDirection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDirection-request
    (cl:cons ':forward (forward msg))
))
;//! \htmlinclude SetDirection-response.msg.html

(cl:defclass <SetDirection-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetDirection-response (<SetDirection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDirection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDirection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetDirection-response> is deprecated: use aquacore-srv:SetDirection-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDirection-response>) ostream)
  "Serializes a message object of type '<SetDirection-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDirection-response>) istream)
  "Deserializes a message object of type '<SetDirection-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDirection-response>)))
  "Returns string type for a service object of type '<SetDirection-response>"
  "aquacore/SetDirectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDirection-response)))
  "Returns string type for a service object of type 'SetDirection-response"
  "aquacore/SetDirectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDirection-response>)))
  "Returns md5sum for a message object of type '<SetDirection-response>"
  "0fc3bc45e28c68f06921185960eb727c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDirection-response)))
  "Returns md5sum for a message object of type 'SetDirection-response"
  "0fc3bc45e28c68f06921185960eb727c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDirection-response>)))
  "Returns full string definition for message of type '<SetDirection-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDirection-response)))
  "Returns full string definition for message of type 'SetDirection-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDirection-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDirection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDirection-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDirection)))
  'SetDirection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDirection)))
  'SetDirection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDirection)))
  "Returns string type for a service object of type '<SetDirection>"
  "aquacore/SetDirection")