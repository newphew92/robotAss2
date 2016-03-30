; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetTargetAngles-request.msg.html

(cl:defclass <SetTargetAngles-request> (roslisp-msg-protocol:ros-message)
  ((target_roll
    :reader target_roll
    :initarg :target_roll
    :type cl:float
    :initform 0.0)
   (target_pitch
    :reader target_pitch
    :initarg :target_pitch
    :type cl:float
    :initform 0.0)
   (target_yaw
    :reader target_yaw
    :initarg :target_yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetTargetAngles-request (<SetTargetAngles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTargetAngles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTargetAngles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetTargetAngles-request> is deprecated: use aquacore-srv:SetTargetAngles-request instead.")))

(cl:ensure-generic-function 'target_roll-val :lambda-list '(m))
(cl:defmethod target_roll-val ((m <SetTargetAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:target_roll-val is deprecated.  Use aquacore-srv:target_roll instead.")
  (target_roll m))

(cl:ensure-generic-function 'target_pitch-val :lambda-list '(m))
(cl:defmethod target_pitch-val ((m <SetTargetAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:target_pitch-val is deprecated.  Use aquacore-srv:target_pitch instead.")
  (target_pitch m))

(cl:ensure-generic-function 'target_yaw-val :lambda-list '(m))
(cl:defmethod target_yaw-val ((m <SetTargetAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:target_yaw-val is deprecated.  Use aquacore-srv:target_yaw instead.")
  (target_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTargetAngles-request>) ostream)
  "Serializes a message object of type '<SetTargetAngles-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTargetAngles-request>) istream)
  "Deserializes a message object of type '<SetTargetAngles-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTargetAngles-request>)))
  "Returns string type for a service object of type '<SetTargetAngles-request>"
  "aquacore/SetTargetAnglesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetAngles-request)))
  "Returns string type for a service object of type 'SetTargetAngles-request"
  "aquacore/SetTargetAnglesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTargetAngles-request>)))
  "Returns md5sum for a message object of type '<SetTargetAngles-request>"
  "25f74f3de9b4229892e03ee79c3e9669")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTargetAngles-request)))
  "Returns md5sum for a message object of type 'SetTargetAngles-request"
  "25f74f3de9b4229892e03ee79c3e9669")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTargetAngles-request>)))
  "Returns full string definition for message of type '<SetTargetAngles-request>"
  (cl:format cl:nil "float32 target_roll~%float32 target_pitch~%float32 target_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTargetAngles-request)))
  "Returns full string definition for message of type 'SetTargetAngles-request"
  (cl:format cl:nil "float32 target_roll~%float32 target_pitch~%float32 target_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTargetAngles-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTargetAngles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTargetAngles-request
    (cl:cons ':target_roll (target_roll msg))
    (cl:cons ':target_pitch (target_pitch msg))
    (cl:cons ':target_yaw (target_yaw msg))
))
;//! \htmlinclude SetTargetAngles-response.msg.html

(cl:defclass <SetTargetAngles-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetTargetAngles-response (<SetTargetAngles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTargetAngles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTargetAngles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetTargetAngles-response> is deprecated: use aquacore-srv:SetTargetAngles-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetTargetAngles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:response-val is deprecated.  Use aquacore-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTargetAngles-response>) ostream)
  "Serializes a message object of type '<SetTargetAngles-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTargetAngles-response>) istream)
  "Deserializes a message object of type '<SetTargetAngles-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTargetAngles-response>)))
  "Returns string type for a service object of type '<SetTargetAngles-response>"
  "aquacore/SetTargetAnglesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetAngles-response)))
  "Returns string type for a service object of type 'SetTargetAngles-response"
  "aquacore/SetTargetAnglesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTargetAngles-response>)))
  "Returns md5sum for a message object of type '<SetTargetAngles-response>"
  "25f74f3de9b4229892e03ee79c3e9669")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTargetAngles-response)))
  "Returns md5sum for a message object of type 'SetTargetAngles-response"
  "25f74f3de9b4229892e03ee79c3e9669")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTargetAngles-response>)))
  "Returns full string definition for message of type '<SetTargetAngles-response>"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTargetAngles-response)))
  "Returns full string definition for message of type 'SetTargetAngles-response"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTargetAngles-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTargetAngles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTargetAngles-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTargetAngles)))
  'SetTargetAngles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTargetAngles)))
  'SetTargetAngles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetAngles)))
  "Returns string type for a service object of type '<SetTargetAngles>"
  "aquacore/SetTargetAngles")