; Auto-generated. Do not edit!


(cl:in-package aquacore-msg)


;//! \htmlinclude KeepAlive.msg.html

(cl:defclass <KeepAlive> (roslisp-msg-protocol:ros-message)
  ((keepalive
    :reader keepalive
    :initarg :keepalive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass KeepAlive (<KeepAlive>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeepAlive>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeepAlive)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-msg:<KeepAlive> is deprecated: use aquacore-msg:KeepAlive instead.")))

(cl:ensure-generic-function 'keepalive-val :lambda-list '(m))
(cl:defmethod keepalive-val ((m <KeepAlive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:keepalive-val is deprecated.  Use aquacore-msg:keepalive instead.")
  (keepalive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeepAlive>) ostream)
  "Serializes a message object of type '<KeepAlive>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'keepalive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeepAlive>) istream)
  "Deserializes a message object of type '<KeepAlive>"
    (cl:setf (cl:slot-value msg 'keepalive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeepAlive>)))
  "Returns string type for a message object of type '<KeepAlive>"
  "aquacore/KeepAlive")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeepAlive)))
  "Returns string type for a message object of type 'KeepAlive"
  "aquacore/KeepAlive")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeepAlive>)))
  "Returns md5sum for a message object of type '<KeepAlive>"
  "24fb7054ad8b54e70f691c17acc4088d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeepAlive)))
  "Returns md5sum for a message object of type 'KeepAlive"
  "24fb7054ad8b54e70f691c17acc4088d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeepAlive>)))
  "Returns full string definition for message of type '<KeepAlive>"
  (cl:format cl:nil "bool keepalive~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeepAlive)))
  "Returns full string definition for message of type 'KeepAlive"
  (cl:format cl:nil "bool keepalive~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeepAlive>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeepAlive>))
  "Converts a ROS message object to a list"
  (cl:list 'KeepAlive
    (cl:cons ':keepalive (keepalive msg))
))
