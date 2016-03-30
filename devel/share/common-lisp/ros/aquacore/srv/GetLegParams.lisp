; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude GetLegParams-request.msg.html

(cl:defclass <GetLegParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLegParams-request (<GetLegParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLegParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLegParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetLegParams-request> is deprecated: use aquacore-srv:GetLegParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLegParams-request>) ostream)
  "Serializes a message object of type '<GetLegParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLegParams-request>) istream)
  "Deserializes a message object of type '<GetLegParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLegParams-request>)))
  "Returns string type for a service object of type '<GetLegParams-request>"
  "aquacore/GetLegParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLegParams-request)))
  "Returns string type for a service object of type 'GetLegParams-request"
  "aquacore/GetLegParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLegParams-request>)))
  "Returns md5sum for a message object of type '<GetLegParams-request>"
  "1792bf569e4223f89286c37967c01dcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLegParams-request)))
  "Returns md5sum for a message object of type 'GetLegParams-request"
  "1792bf569e4223f89286c37967c01dcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLegParams-request>)))
  "Returns full string definition for message of type '<GetLegParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLegParams-request)))
  "Returns full string definition for message of type 'GetLegParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLegParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLegParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLegParams-request
))
;//! \htmlinclude GetLegParams-response.msg.html

(cl:defclass <GetLegParams-response> (roslisp-msg-protocol:ros-message)
  ((amplitude
    :reader amplitude
    :initarg :amplitude
    :type cl:float
    :initform 0.0)
   (period
    :reader period
    :initarg :period
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetLegParams-response (<GetLegParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLegParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLegParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetLegParams-response> is deprecated: use aquacore-srv:GetLegParams-response instead.")))

(cl:ensure-generic-function 'amplitude-val :lambda-list '(m))
(cl:defmethod amplitude-val ((m <GetLegParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:amplitude-val is deprecated.  Use aquacore-srv:amplitude instead.")
  (amplitude m))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <GetLegParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:period-val is deprecated.  Use aquacore-srv:period instead.")
  (period m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLegParams-response>) ostream)
  "Serializes a message object of type '<GetLegParams-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'period))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLegParams-response>) istream)
  "Deserializes a message object of type '<GetLegParams-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'period) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLegParams-response>)))
  "Returns string type for a service object of type '<GetLegParams-response>"
  "aquacore/GetLegParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLegParams-response)))
  "Returns string type for a service object of type 'GetLegParams-response"
  "aquacore/GetLegParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLegParams-response>)))
  "Returns md5sum for a message object of type '<GetLegParams-response>"
  "1792bf569e4223f89286c37967c01dcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLegParams-response)))
  "Returns md5sum for a message object of type 'GetLegParams-response"
  "1792bf569e4223f89286c37967c01dcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLegParams-response>)))
  "Returns full string definition for message of type '<GetLegParams-response>"
  (cl:format cl:nil "float32 amplitude~%float32 period~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLegParams-response)))
  "Returns full string definition for message of type 'GetLegParams-response"
  (cl:format cl:nil "float32 amplitude~%float32 period~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLegParams-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLegParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLegParams-response
    (cl:cons ':amplitude (amplitude msg))
    (cl:cons ':period (period msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLegParams)))
  'GetLegParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLegParams)))
  'GetLegParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLegParams)))
  "Returns string type for a service object of type '<GetLegParams>"
  "aquacore/GetLegParams")