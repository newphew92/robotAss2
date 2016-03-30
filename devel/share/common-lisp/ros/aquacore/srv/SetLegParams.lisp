; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetLegParams-request.msg.html

(cl:defclass <SetLegParams-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetLegParams-request (<SetLegParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLegParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLegParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetLegParams-request> is deprecated: use aquacore-srv:SetLegParams-request instead.")))

(cl:ensure-generic-function 'amplitude-val :lambda-list '(m))
(cl:defmethod amplitude-val ((m <SetLegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:amplitude-val is deprecated.  Use aquacore-srv:amplitude instead.")
  (amplitude m))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <SetLegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:period-val is deprecated.  Use aquacore-srv:period instead.")
  (period m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLegParams-request>) ostream)
  "Serializes a message object of type '<SetLegParams-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLegParams-request>) istream)
  "Deserializes a message object of type '<SetLegParams-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLegParams-request>)))
  "Returns string type for a service object of type '<SetLegParams-request>"
  "aquacore/SetLegParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLegParams-request)))
  "Returns string type for a service object of type 'SetLegParams-request"
  "aquacore/SetLegParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLegParams-request>)))
  "Returns md5sum for a message object of type '<SetLegParams-request>"
  "1792bf569e4223f89286c37967c01dcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLegParams-request)))
  "Returns md5sum for a message object of type 'SetLegParams-request"
  "1792bf569e4223f89286c37967c01dcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLegParams-request>)))
  "Returns full string definition for message of type '<SetLegParams-request>"
  (cl:format cl:nil "float32 amplitude~%float32 period~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLegParams-request)))
  "Returns full string definition for message of type 'SetLegParams-request"
  (cl:format cl:nil "float32 amplitude~%float32 period~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLegParams-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLegParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLegParams-request
    (cl:cons ':amplitude (amplitude msg))
    (cl:cons ':period (period msg))
))
;//! \htmlinclude SetLegParams-response.msg.html

(cl:defclass <SetLegParams-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetLegParams-response (<SetLegParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLegParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLegParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetLegParams-response> is deprecated: use aquacore-srv:SetLegParams-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLegParams-response>) ostream)
  "Serializes a message object of type '<SetLegParams-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLegParams-response>) istream)
  "Deserializes a message object of type '<SetLegParams-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLegParams-response>)))
  "Returns string type for a service object of type '<SetLegParams-response>"
  "aquacore/SetLegParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLegParams-response)))
  "Returns string type for a service object of type 'SetLegParams-response"
  "aquacore/SetLegParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLegParams-response>)))
  "Returns md5sum for a message object of type '<SetLegParams-response>"
  "1792bf569e4223f89286c37967c01dcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLegParams-response)))
  "Returns md5sum for a message object of type 'SetLegParams-response"
  "1792bf569e4223f89286c37967c01dcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLegParams-response>)))
  "Returns full string definition for message of type '<SetLegParams-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLegParams-response)))
  "Returns full string definition for message of type 'SetLegParams-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLegParams-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLegParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLegParams-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLegParams)))
  'SetLegParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLegParams)))
  'SetLegParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLegParams)))
  "Returns string type for a service object of type '<SetLegParams>"
  "aquacore/SetLegParams")