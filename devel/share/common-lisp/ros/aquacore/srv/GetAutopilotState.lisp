; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude GetAutopilotState-request.msg.html

(cl:defclass <GetAutopilotState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAutopilotState-request (<GetAutopilotState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAutopilotState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAutopilotState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetAutopilotState-request> is deprecated: use aquacore-srv:GetAutopilotState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAutopilotState-request>) ostream)
  "Serializes a message object of type '<GetAutopilotState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAutopilotState-request>) istream)
  "Deserializes a message object of type '<GetAutopilotState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAutopilotState-request>)))
  "Returns string type for a service object of type '<GetAutopilotState-request>"
  "aquacore/GetAutopilotStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAutopilotState-request)))
  "Returns string type for a service object of type 'GetAutopilotState-request"
  "aquacore/GetAutopilotStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAutopilotState-request>)))
  "Returns md5sum for a message object of type '<GetAutopilotState-request>"
  "8c8eeaafe647710bb35d5cfef6b22f76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAutopilotState-request)))
  "Returns md5sum for a message object of type 'GetAutopilotState-request"
  "8c8eeaafe647710bb35d5cfef6b22f76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAutopilotState-request>)))
  "Returns full string definition for message of type '<GetAutopilotState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAutopilotState-request)))
  "Returns full string definition for message of type 'GetAutopilotState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAutopilotState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAutopilotState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAutopilotState-request
))
;//! \htmlinclude GetAutopilotState-response.msg.html

(cl:defclass <GetAutopilotState-response> (roslisp-msg-protocol:ros-message)
  ((ap_state
    :reader ap_state
    :initarg :ap_state
    :type cl:integer
    :initform 0)
   (ap_mode
    :reader ap_mode
    :initarg :ap_mode
    :type cl:integer
    :initform 0)
   (params
    :reader params
    :initarg :params
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (target_depth
    :reader target_depth
    :initarg :target_depth
    :type cl:float
    :initform 0.0)
   (target_roll
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

(cl:defclass GetAutopilotState-response (<GetAutopilotState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAutopilotState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAutopilotState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetAutopilotState-response> is deprecated: use aquacore-srv:GetAutopilotState-response instead.")))

(cl:ensure-generic-function 'ap_state-val :lambda-list '(m))
(cl:defmethod ap_state-val ((m <GetAutopilotState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:ap_state-val is deprecated.  Use aquacore-srv:ap_state instead.")
  (ap_state m))

(cl:ensure-generic-function 'ap_mode-val :lambda-list '(m))
(cl:defmethod ap_mode-val ((m <GetAutopilotState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:ap_mode-val is deprecated.  Use aquacore-srv:ap_mode instead.")
  (ap_mode m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <GetAutopilotState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:params-val is deprecated.  Use aquacore-srv:params instead.")
  (params m))

(cl:ensure-generic-function 'target_depth-val :lambda-list '(m))
(cl:defmethod target_depth-val ((m <GetAutopilotState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:target_depth-val is deprecated.  Use aquacore-srv:target_depth instead.")
  (target_depth m))

(cl:ensure-generic-function 'target_roll-val :lambda-list '(m))
(cl:defmethod target_roll-val ((m <GetAutopilotState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:target_roll-val is deprecated.  Use aquacore-srv:target_roll instead.")
  (target_roll m))

(cl:ensure-generic-function 'target_pitch-val :lambda-list '(m))
(cl:defmethod target_pitch-val ((m <GetAutopilotState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:target_pitch-val is deprecated.  Use aquacore-srv:target_pitch instead.")
  (target_pitch m))

(cl:ensure-generic-function 'target_yaw-val :lambda-list '(m))
(cl:defmethod target_yaw-val ((m <GetAutopilotState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:target_yaw-val is deprecated.  Use aquacore-srv:target_yaw instead.")
  (target_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAutopilotState-response>) ostream)
  "Serializes a message object of type '<GetAutopilotState-response>"
  (cl:let* ((signed (cl:slot-value msg 'ap_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ap_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'params))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAutopilotState-response>) istream)
  "Deserializes a message object of type '<GetAutopilotState-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ap_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ap_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_depth) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAutopilotState-response>)))
  "Returns string type for a service object of type '<GetAutopilotState-response>"
  "aquacore/GetAutopilotStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAutopilotState-response)))
  "Returns string type for a service object of type 'GetAutopilotState-response"
  "aquacore/GetAutopilotStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAutopilotState-response>)))
  "Returns md5sum for a message object of type '<GetAutopilotState-response>"
  "8c8eeaafe647710bb35d5cfef6b22f76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAutopilotState-response)))
  "Returns md5sum for a message object of type 'GetAutopilotState-response"
  "8c8eeaafe647710bb35d5cfef6b22f76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAutopilotState-response>)))
  "Returns full string definition for message of type '<GetAutopilotState-response>"
  (cl:format cl:nil "int32	   ap_state~%int32	   ap_mode~%float32[] params~%float32    target_depth~%float32    target_roll~%float32    target_pitch~%float32    target_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAutopilotState-response)))
  "Returns full string definition for message of type 'GetAutopilotState-response"
  (cl:format cl:nil "int32	   ap_state~%int32	   ap_mode~%float32[] params~%float32    target_depth~%float32    target_roll~%float32    target_pitch~%float32    target_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAutopilotState-response>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAutopilotState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAutopilotState-response
    (cl:cons ':ap_state (ap_state msg))
    (cl:cons ':ap_mode (ap_mode msg))
    (cl:cons ':params (params msg))
    (cl:cons ':target_depth (target_depth msg))
    (cl:cons ':target_roll (target_roll msg))
    (cl:cons ':target_pitch (target_pitch msg))
    (cl:cons ':target_yaw (target_yaw msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAutopilotState)))
  'GetAutopilotState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAutopilotState)))
  'GetAutopilotState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAutopilotState)))
  "Returns string type for a service object of type '<GetAutopilotState>"
  "aquacore/GetAutopilotState")