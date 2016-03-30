; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetNamedFloat-request.msg.html

(cl:defclass <SetNamedFloat-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetNamedFloat-request (<SetNamedFloat-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNamedFloat-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNamedFloat-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetNamedFloat-request> is deprecated: use aquacore-srv:SetNamedFloat-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetNamedFloat-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:name-val is deprecated.  Use aquacore-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetNamedFloat-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:value-val is deprecated.  Use aquacore-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNamedFloat-request>) ostream)
  "Serializes a message object of type '<SetNamedFloat-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNamedFloat-request>) istream)
  "Deserializes a message object of type '<SetNamedFloat-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNamedFloat-request>)))
  "Returns string type for a service object of type '<SetNamedFloat-request>"
  "aquacore/SetNamedFloatRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNamedFloat-request)))
  "Returns string type for a service object of type 'SetNamedFloat-request"
  "aquacore/SetNamedFloatRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNamedFloat-request>)))
  "Returns md5sum for a message object of type '<SetNamedFloat-request>"
  "db3486341a840969e8845548decf6f11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNamedFloat-request)))
  "Returns md5sum for a message object of type 'SetNamedFloat-request"
  "db3486341a840969e8845548decf6f11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNamedFloat-request>)))
  "Returns full string definition for message of type '<SetNamedFloat-request>"
  (cl:format cl:nil "string name~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNamedFloat-request)))
  "Returns full string definition for message of type 'SetNamedFloat-request"
  (cl:format cl:nil "string name~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNamedFloat-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNamedFloat-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNamedFloat-request
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetNamedFloat-response.msg.html

(cl:defclass <SetNamedFloat-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetNamedFloat-response (<SetNamedFloat-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNamedFloat-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNamedFloat-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetNamedFloat-response> is deprecated: use aquacore-srv:SetNamedFloat-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNamedFloat-response>) ostream)
  "Serializes a message object of type '<SetNamedFloat-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNamedFloat-response>) istream)
  "Deserializes a message object of type '<SetNamedFloat-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNamedFloat-response>)))
  "Returns string type for a service object of type '<SetNamedFloat-response>"
  "aquacore/SetNamedFloatResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNamedFloat-response)))
  "Returns string type for a service object of type 'SetNamedFloat-response"
  "aquacore/SetNamedFloatResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNamedFloat-response>)))
  "Returns md5sum for a message object of type '<SetNamedFloat-response>"
  "db3486341a840969e8845548decf6f11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNamedFloat-response)))
  "Returns md5sum for a message object of type 'SetNamedFloat-response"
  "db3486341a840969e8845548decf6f11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNamedFloat-response>)))
  "Returns full string definition for message of type '<SetNamedFloat-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNamedFloat-response)))
  "Returns full string definition for message of type 'SetNamedFloat-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNamedFloat-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNamedFloat-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNamedFloat-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetNamedFloat)))
  'SetNamedFloat-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetNamedFloat)))
  'SetNamedFloat-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNamedFloat)))
  "Returns string type for a service object of type '<SetNamedFloat>"
  "aquacore/SetNamedFloat")