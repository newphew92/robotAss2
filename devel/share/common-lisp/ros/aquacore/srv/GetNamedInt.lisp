; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude GetNamedInt-request.msg.html

(cl:defclass <GetNamedInt-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetNamedInt-request (<GetNamedInt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNamedInt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNamedInt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetNamedInt-request> is deprecated: use aquacore-srv:GetNamedInt-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetNamedInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:name-val is deprecated.  Use aquacore-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNamedInt-request>) ostream)
  "Serializes a message object of type '<GetNamedInt-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNamedInt-request>) istream)
  "Deserializes a message object of type '<GetNamedInt-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNamedInt-request>)))
  "Returns string type for a service object of type '<GetNamedInt-request>"
  "aquacore/GetNamedIntRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNamedInt-request)))
  "Returns string type for a service object of type 'GetNamedInt-request"
  "aquacore/GetNamedIntRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNamedInt-request>)))
  "Returns md5sum for a message object of type '<GetNamedInt-request>"
  "2322c7c7ab60b6436d5b3b659c10095f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNamedInt-request)))
  "Returns md5sum for a message object of type 'GetNamedInt-request"
  "2322c7c7ab60b6436d5b3b659c10095f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNamedInt-request>)))
  "Returns full string definition for message of type '<GetNamedInt-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNamedInt-request)))
  "Returns full string definition for message of type 'GetNamedInt-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNamedInt-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNamedInt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNamedInt-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetNamedInt-response.msg.html

(cl:defclass <GetNamedInt-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass GetNamedInt-response (<GetNamedInt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNamedInt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNamedInt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetNamedInt-response> is deprecated: use aquacore-srv:GetNamedInt-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetNamedInt-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:value-val is deprecated.  Use aquacore-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNamedInt-response>) ostream)
  "Serializes a message object of type '<GetNamedInt-response>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNamedInt-response>) istream)
  "Deserializes a message object of type '<GetNamedInt-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNamedInt-response>)))
  "Returns string type for a service object of type '<GetNamedInt-response>"
  "aquacore/GetNamedIntResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNamedInt-response)))
  "Returns string type for a service object of type 'GetNamedInt-response"
  "aquacore/GetNamedIntResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNamedInt-response>)))
  "Returns md5sum for a message object of type '<GetNamedInt-response>"
  "2322c7c7ab60b6436d5b3b659c10095f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNamedInt-response)))
  "Returns md5sum for a message object of type 'GetNamedInt-response"
  "2322c7c7ab60b6436d5b3b659c10095f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNamedInt-response>)))
  "Returns full string definition for message of type '<GetNamedInt-response>"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNamedInt-response)))
  "Returns full string definition for message of type 'GetNamedInt-response"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNamedInt-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNamedInt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNamedInt-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNamedInt)))
  'GetNamedInt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNamedInt)))
  'GetNamedInt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNamedInt)))
  "Returns string type for a service object of type '<GetNamedInt>"
  "aquacore/GetNamedInt")