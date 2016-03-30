; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetUpRegulatedSwimMode-request.msg.html

(cl:defclass <SetUpRegulatedSwimMode-request> (roslisp-msg-protocol:ros-message)
  ((target_yaw
    :reader target_yaw
    :initarg :target_yaw
    :type cl:float
    :initform 0.0)
   (target_depth
    :reader target_depth
    :initarg :target_depth
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetUpRegulatedSwimMode-request (<SetUpRegulatedSwimMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUpRegulatedSwimMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUpRegulatedSwimMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetUpRegulatedSwimMode-request> is deprecated: use aquacore-srv:SetUpRegulatedSwimMode-request instead.")))

(cl:ensure-generic-function 'target_yaw-val :lambda-list '(m))
(cl:defmethod target_yaw-val ((m <SetUpRegulatedSwimMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:target_yaw-val is deprecated.  Use aquacore-srv:target_yaw instead.")
  (target_yaw m))

(cl:ensure-generic-function 'target_depth-val :lambda-list '(m))
(cl:defmethod target_depth-val ((m <SetUpRegulatedSwimMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:target_depth-val is deprecated.  Use aquacore-srv:target_depth instead.")
  (target_depth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUpRegulatedSwimMode-request>) ostream)
  "Serializes a message object of type '<SetUpRegulatedSwimMode-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUpRegulatedSwimMode-request>) istream)
  "Deserializes a message object of type '<SetUpRegulatedSwimMode-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_depth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUpRegulatedSwimMode-request>)))
  "Returns string type for a service object of type '<SetUpRegulatedSwimMode-request>"
  "aquacore/SetUpRegulatedSwimModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUpRegulatedSwimMode-request)))
  "Returns string type for a service object of type 'SetUpRegulatedSwimMode-request"
  "aquacore/SetUpRegulatedSwimModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUpRegulatedSwimMode-request>)))
  "Returns md5sum for a message object of type '<SetUpRegulatedSwimMode-request>"
  "0eb67c11df69dbb1cbae50ded84c7aa2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUpRegulatedSwimMode-request)))
  "Returns md5sum for a message object of type 'SetUpRegulatedSwimMode-request"
  "0eb67c11df69dbb1cbae50ded84c7aa2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUpRegulatedSwimMode-request>)))
  "Returns full string definition for message of type '<SetUpRegulatedSwimMode-request>"
  (cl:format cl:nil "float32 target_yaw~%float32 target_depth~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUpRegulatedSwimMode-request)))
  "Returns full string definition for message of type 'SetUpRegulatedSwimMode-request"
  (cl:format cl:nil "float32 target_yaw~%float32 target_depth~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUpRegulatedSwimMode-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUpRegulatedSwimMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUpRegulatedSwimMode-request
    (cl:cons ':target_yaw (target_yaw msg))
    (cl:cons ':target_depth (target_depth msg))
))
;//! \htmlinclude SetUpRegulatedSwimMode-response.msg.html

(cl:defclass <SetUpRegulatedSwimMode-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetUpRegulatedSwimMode-response (<SetUpRegulatedSwimMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUpRegulatedSwimMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUpRegulatedSwimMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetUpRegulatedSwimMode-response> is deprecated: use aquacore-srv:SetUpRegulatedSwimMode-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUpRegulatedSwimMode-response>) ostream)
  "Serializes a message object of type '<SetUpRegulatedSwimMode-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUpRegulatedSwimMode-response>) istream)
  "Deserializes a message object of type '<SetUpRegulatedSwimMode-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUpRegulatedSwimMode-response>)))
  "Returns string type for a service object of type '<SetUpRegulatedSwimMode-response>"
  "aquacore/SetUpRegulatedSwimModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUpRegulatedSwimMode-response)))
  "Returns string type for a service object of type 'SetUpRegulatedSwimMode-response"
  "aquacore/SetUpRegulatedSwimModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUpRegulatedSwimMode-response>)))
  "Returns md5sum for a message object of type '<SetUpRegulatedSwimMode-response>"
  "0eb67c11df69dbb1cbae50ded84c7aa2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUpRegulatedSwimMode-response)))
  "Returns md5sum for a message object of type 'SetUpRegulatedSwimMode-response"
  "0eb67c11df69dbb1cbae50ded84c7aa2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUpRegulatedSwimMode-response>)))
  "Returns full string definition for message of type '<SetUpRegulatedSwimMode-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUpRegulatedSwimMode-response)))
  "Returns full string definition for message of type 'SetUpRegulatedSwimMode-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUpRegulatedSwimMode-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUpRegulatedSwimMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUpRegulatedSwimMode-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUpRegulatedSwimMode)))
  'SetUpRegulatedSwimMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUpRegulatedSwimMode)))
  'SetUpRegulatedSwimMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUpRegulatedSwimMode)))
  "Returns string type for a service object of type '<SetUpRegulatedSwimMode>"
  "aquacore/SetUpRegulatedSwimMode")