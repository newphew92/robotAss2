; Auto-generated. Do not edit!


(cl:in-package aqua_gait-srv)


;//! \htmlinclude UpdateTargetRPYD-request.msg.html

(cl:defclass <UpdateTargetRPYD-request> (roslisp-msg-protocol:ros-message)
  ((target_roll_deg
    :reader target_roll_deg
    :initarg :target_roll_deg
    :type cl:float
    :initform 0.0)
   (target_pitch_deg
    :reader target_pitch_deg
    :initarg :target_pitch_deg
    :type cl:float
    :initform 0.0)
   (target_yaw_deg
    :reader target_yaw_deg
    :initarg :target_yaw_deg
    :type cl:float
    :initform 0.0)
   (target_depth_m
    :reader target_depth_m
    :initarg :target_depth_m
    :type cl:float
    :initform 0.0))
)

(cl:defclass UpdateTargetRPYD-request (<UpdateTargetRPYD-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateTargetRPYD-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateTargetRPYD-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aqua_gait-srv:<UpdateTargetRPYD-request> is deprecated: use aqua_gait-srv:UpdateTargetRPYD-request instead.")))

(cl:ensure-generic-function 'target_roll_deg-val :lambda-list '(m))
(cl:defmethod target_roll_deg-val ((m <UpdateTargetRPYD-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aqua_gait-srv:target_roll_deg-val is deprecated.  Use aqua_gait-srv:target_roll_deg instead.")
  (target_roll_deg m))

(cl:ensure-generic-function 'target_pitch_deg-val :lambda-list '(m))
(cl:defmethod target_pitch_deg-val ((m <UpdateTargetRPYD-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aqua_gait-srv:target_pitch_deg-val is deprecated.  Use aqua_gait-srv:target_pitch_deg instead.")
  (target_pitch_deg m))

(cl:ensure-generic-function 'target_yaw_deg-val :lambda-list '(m))
(cl:defmethod target_yaw_deg-val ((m <UpdateTargetRPYD-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aqua_gait-srv:target_yaw_deg-val is deprecated.  Use aqua_gait-srv:target_yaw_deg instead.")
  (target_yaw_deg m))

(cl:ensure-generic-function 'target_depth_m-val :lambda-list '(m))
(cl:defmethod target_depth_m-val ((m <UpdateTargetRPYD-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aqua_gait-srv:target_depth_m-val is deprecated.  Use aqua_gait-srv:target_depth_m instead.")
  (target_depth_m m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateTargetRPYD-request>) ostream)
  "Serializes a message object of type '<UpdateTargetRPYD-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_roll_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_pitch_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_yaw_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_depth_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateTargetRPYD-request>) istream)
  "Deserializes a message object of type '<UpdateTargetRPYD-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_roll_deg) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_pitch_deg) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_yaw_deg) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_depth_m) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateTargetRPYD-request>)))
  "Returns string type for a service object of type '<UpdateTargetRPYD-request>"
  "aqua_gait/UpdateTargetRPYDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateTargetRPYD-request)))
  "Returns string type for a service object of type 'UpdateTargetRPYD-request"
  "aqua_gait/UpdateTargetRPYDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateTargetRPYD-request>)))
  "Returns md5sum for a message object of type '<UpdateTargetRPYD-request>"
  "67eb34f7772a72c0462945d31ff2da84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateTargetRPYD-request)))
  "Returns md5sum for a message object of type 'UpdateTargetRPYD-request"
  "67eb34f7772a72c0462945d31ff2da84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateTargetRPYD-request>)))
  "Returns full string definition for message of type '<UpdateTargetRPYD-request>"
  (cl:format cl:nil "float64 target_roll_deg~%float64 target_pitch_deg~%float64 target_yaw_deg~%float64 target_depth_m~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateTargetRPYD-request)))
  "Returns full string definition for message of type 'UpdateTargetRPYD-request"
  (cl:format cl:nil "float64 target_roll_deg~%float64 target_pitch_deg~%float64 target_yaw_deg~%float64 target_depth_m~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateTargetRPYD-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateTargetRPYD-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateTargetRPYD-request
    (cl:cons ':target_roll_deg (target_roll_deg msg))
    (cl:cons ':target_pitch_deg (target_pitch_deg msg))
    (cl:cons ':target_yaw_deg (target_yaw_deg msg))
    (cl:cons ':target_depth_m (target_depth_m msg))
))
;//! \htmlinclude UpdateTargetRPYD-response.msg.html

(cl:defclass <UpdateTargetRPYD-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UpdateTargetRPYD-response (<UpdateTargetRPYD-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateTargetRPYD-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateTargetRPYD-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aqua_gait-srv:<UpdateTargetRPYD-response> is deprecated: use aqua_gait-srv:UpdateTargetRPYD-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateTargetRPYD-response>) ostream)
  "Serializes a message object of type '<UpdateTargetRPYD-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateTargetRPYD-response>) istream)
  "Deserializes a message object of type '<UpdateTargetRPYD-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateTargetRPYD-response>)))
  "Returns string type for a service object of type '<UpdateTargetRPYD-response>"
  "aqua_gait/UpdateTargetRPYDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateTargetRPYD-response)))
  "Returns string type for a service object of type 'UpdateTargetRPYD-response"
  "aqua_gait/UpdateTargetRPYDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateTargetRPYD-response>)))
  "Returns md5sum for a message object of type '<UpdateTargetRPYD-response>"
  "67eb34f7772a72c0462945d31ff2da84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateTargetRPYD-response)))
  "Returns md5sum for a message object of type 'UpdateTargetRPYD-response"
  "67eb34f7772a72c0462945d31ff2da84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateTargetRPYD-response>)))
  "Returns full string definition for message of type '<UpdateTargetRPYD-response>"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateTargetRPYD-response)))
  "Returns full string definition for message of type 'UpdateTargetRPYD-response"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateTargetRPYD-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateTargetRPYD-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateTargetRPYD-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateTargetRPYD)))
  'UpdateTargetRPYD-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateTargetRPYD)))
  'UpdateTargetRPYD-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateTargetRPYD)))
  "Returns string type for a service object of type '<UpdateTargetRPYD>"
  "aqua_gait/UpdateTargetRPYD")