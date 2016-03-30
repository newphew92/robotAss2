; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude EmptyBool-request.msg.html

(cl:defclass <EmptyBool-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmptyBool-request (<EmptyBool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyBool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyBool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<EmptyBool-request> is deprecated: use aquacore-srv:EmptyBool-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyBool-request>) ostream)
  "Serializes a message object of type '<EmptyBool-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyBool-request>) istream)
  "Deserializes a message object of type '<EmptyBool-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyBool-request>)))
  "Returns string type for a service object of type '<EmptyBool-request>"
  "aquacore/EmptyBoolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyBool-request)))
  "Returns string type for a service object of type 'EmptyBool-request"
  "aquacore/EmptyBoolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyBool-request>)))
  "Returns md5sum for a message object of type '<EmptyBool-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyBool-request)))
  "Returns md5sum for a message object of type 'EmptyBool-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyBool-request>)))
  "Returns full string definition for message of type '<EmptyBool-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyBool-request)))
  "Returns full string definition for message of type 'EmptyBool-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyBool-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyBool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyBool-request
))
;//! \htmlinclude EmptyBool-response.msg.html

(cl:defclass <EmptyBool-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EmptyBool-response (<EmptyBool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyBool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyBool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<EmptyBool-response> is deprecated: use aquacore-srv:EmptyBool-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <EmptyBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:result-val is deprecated.  Use aquacore-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyBool-response>) ostream)
  "Serializes a message object of type '<EmptyBool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyBool-response>) istream)
  "Deserializes a message object of type '<EmptyBool-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyBool-response>)))
  "Returns string type for a service object of type '<EmptyBool-response>"
  "aquacore/EmptyBoolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyBool-response)))
  "Returns string type for a service object of type 'EmptyBool-response"
  "aquacore/EmptyBoolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyBool-response>)))
  "Returns md5sum for a message object of type '<EmptyBool-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyBool-response)))
  "Returns md5sum for a message object of type 'EmptyBool-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyBool-response>)))
  "Returns full string definition for message of type '<EmptyBool-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyBool-response)))
  "Returns full string definition for message of type 'EmptyBool-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyBool-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyBool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyBool-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmptyBool)))
  'EmptyBool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmptyBool)))
  'EmptyBool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyBool)))
  "Returns string type for a service object of type '<EmptyBool>"
  "aquacore/EmptyBool")