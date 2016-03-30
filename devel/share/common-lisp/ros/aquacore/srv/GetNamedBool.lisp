; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude GetNamedBool-request.msg.html

(cl:defclass <GetNamedBool-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetNamedBool-request (<GetNamedBool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNamedBool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNamedBool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetNamedBool-request> is deprecated: use aquacore-srv:GetNamedBool-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetNamedBool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:name-val is deprecated.  Use aquacore-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNamedBool-request>) ostream)
  "Serializes a message object of type '<GetNamedBool-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNamedBool-request>) istream)
  "Deserializes a message object of type '<GetNamedBool-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNamedBool-request>)))
  "Returns string type for a service object of type '<GetNamedBool-request>"
  "aquacore/GetNamedBoolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNamedBool-request)))
  "Returns string type for a service object of type 'GetNamedBool-request"
  "aquacore/GetNamedBoolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNamedBool-request>)))
  "Returns md5sum for a message object of type '<GetNamedBool-request>"
  "03bb66919396d0c1affe599e1fba4f8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNamedBool-request)))
  "Returns md5sum for a message object of type 'GetNamedBool-request"
  "03bb66919396d0c1affe599e1fba4f8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNamedBool-request>)))
  "Returns full string definition for message of type '<GetNamedBool-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNamedBool-request)))
  "Returns full string definition for message of type 'GetNamedBool-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNamedBool-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNamedBool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNamedBool-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetNamedBool-response.msg.html

(cl:defclass <GetNamedBool-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetNamedBool-response (<GetNamedBool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNamedBool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNamedBool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetNamedBool-response> is deprecated: use aquacore-srv:GetNamedBool-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetNamedBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:value-val is deprecated.  Use aquacore-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNamedBool-response>) ostream)
  "Serializes a message object of type '<GetNamedBool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNamedBool-response>) istream)
  "Deserializes a message object of type '<GetNamedBool-response>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNamedBool-response>)))
  "Returns string type for a service object of type '<GetNamedBool-response>"
  "aquacore/GetNamedBoolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNamedBool-response)))
  "Returns string type for a service object of type 'GetNamedBool-response"
  "aquacore/GetNamedBoolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNamedBool-response>)))
  "Returns md5sum for a message object of type '<GetNamedBool-response>"
  "03bb66919396d0c1affe599e1fba4f8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNamedBool-response)))
  "Returns md5sum for a message object of type 'GetNamedBool-response"
  "03bb66919396d0c1affe599e1fba4f8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNamedBool-response>)))
  "Returns full string definition for message of type '<GetNamedBool-response>"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNamedBool-response)))
  "Returns full string definition for message of type 'GetNamedBool-response"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNamedBool-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNamedBool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNamedBool-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNamedBool)))
  'GetNamedBool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNamedBool)))
  'GetNamedBool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNamedBool)))
  "Returns string type for a service object of type '<GetNamedBool>"
  "aquacore/GetNamedBool")