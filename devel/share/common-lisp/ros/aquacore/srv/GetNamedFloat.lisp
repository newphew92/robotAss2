; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude GetNamedFloat-request.msg.html

(cl:defclass <GetNamedFloat-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetNamedFloat-request (<GetNamedFloat-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNamedFloat-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNamedFloat-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetNamedFloat-request> is deprecated: use aquacore-srv:GetNamedFloat-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetNamedFloat-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:name-val is deprecated.  Use aquacore-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNamedFloat-request>) ostream)
  "Serializes a message object of type '<GetNamedFloat-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNamedFloat-request>) istream)
  "Deserializes a message object of type '<GetNamedFloat-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNamedFloat-request>)))
  "Returns string type for a service object of type '<GetNamedFloat-request>"
  "aquacore/GetNamedFloatRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNamedFloat-request)))
  "Returns string type for a service object of type 'GetNamedFloat-request"
  "aquacore/GetNamedFloatRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNamedFloat-request>)))
  "Returns md5sum for a message object of type '<GetNamedFloat-request>"
  "cab3e232f5ab7d227b43ff1e2453857d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNamedFloat-request)))
  "Returns md5sum for a message object of type 'GetNamedFloat-request"
  "cab3e232f5ab7d227b43ff1e2453857d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNamedFloat-request>)))
  "Returns full string definition for message of type '<GetNamedFloat-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNamedFloat-request)))
  "Returns full string definition for message of type 'GetNamedFloat-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNamedFloat-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNamedFloat-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNamedFloat-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetNamedFloat-response.msg.html

(cl:defclass <GetNamedFloat-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetNamedFloat-response (<GetNamedFloat-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNamedFloat-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNamedFloat-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetNamedFloat-response> is deprecated: use aquacore-srv:GetNamedFloat-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetNamedFloat-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:value-val is deprecated.  Use aquacore-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNamedFloat-response>) ostream)
  "Serializes a message object of type '<GetNamedFloat-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNamedFloat-response>) istream)
  "Deserializes a message object of type '<GetNamedFloat-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNamedFloat-response>)))
  "Returns string type for a service object of type '<GetNamedFloat-response>"
  "aquacore/GetNamedFloatResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNamedFloat-response)))
  "Returns string type for a service object of type 'GetNamedFloat-response"
  "aquacore/GetNamedFloatResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNamedFloat-response>)))
  "Returns md5sum for a message object of type '<GetNamedFloat-response>"
  "cab3e232f5ab7d227b43ff1e2453857d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNamedFloat-response)))
  "Returns md5sum for a message object of type 'GetNamedFloat-response"
  "cab3e232f5ab7d227b43ff1e2453857d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNamedFloat-response>)))
  "Returns full string definition for message of type '<GetNamedFloat-response>"
  (cl:format cl:nil "float32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNamedFloat-response)))
  "Returns full string definition for message of type 'GetNamedFloat-response"
  (cl:format cl:nil "float32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNamedFloat-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNamedFloat-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNamedFloat-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNamedFloat)))
  'GetNamedFloat-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNamedFloat)))
  'GetNamedFloat-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNamedFloat)))
  "Returns string type for a service object of type '<GetNamedFloat>"
  "aquacore/GetNamedFloat")