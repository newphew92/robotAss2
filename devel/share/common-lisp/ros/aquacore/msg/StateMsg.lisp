; Auto-generated. Do not edit!


(cl:in-package aquacore-msg)


;//! \htmlinclude StateMsg.msg.html

(cl:defclass <StateMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (LED
    :reader LED
    :initarg :LED
    :type cl:integer
    :initform 0)
   (Gait
    :reader Gait
    :initarg :Gait
    :type cl:integer
    :initform 0)
   (RollAngle
    :reader RollAngle
    :initarg :RollAngle
    :type cl:float
    :initform 0.0)
   (PitchAngle
    :reader PitchAngle
    :initarg :PitchAngle
    :type cl:float
    :initform 0.0)
   (YawAngle
    :reader YawAngle
    :initarg :YawAngle
    :type cl:float
    :initform 0.0)
   (RollTargetAngle
    :reader RollTargetAngle
    :initarg :RollTargetAngle
    :type cl:float
    :initform 0.0)
   (PitchTargetAngle
    :reader PitchTargetAngle
    :initarg :PitchTargetAngle
    :type cl:float
    :initform 0.0)
   (YawTargetAngle
    :reader YawTargetAngle
    :initarg :YawTargetAngle
    :type cl:float
    :initform 0.0)
   (DepthTarget
    :reader DepthTarget
    :initarg :DepthTarget
    :type cl:float
    :initform 0.0)
   (AvgRollCommand
    :reader AvgRollCommand
    :initarg :AvgRollCommand
    :type cl:float
    :initform 0.0)
   (AvgPitchCommand
    :reader AvgPitchCommand
    :initarg :AvgPitchCommand
    :type cl:float
    :initform 0.0)
   (AvgYawCommand
    :reader AvgYawCommand
    :initarg :AvgYawCommand
    :type cl:float
    :initform 0.0)
   (AvgHeaveCommand
    :reader AvgHeaveCommand
    :initarg :AvgHeaveCommand
    :type cl:float
    :initform 0.0)
   (AvgSurgeCommand
    :reader AvgSurgeCommand
    :initarg :AvgSurgeCommand
    :type cl:float
    :initform 0.0)
   (AutopilotMode
    :reader AutopilotMode
    :initarg :AutopilotMode
    :type cl:integer
    :initform 0)
   (Depth
    :reader Depth
    :initarg :Depth
    :type cl:float
    :initform 0.0)
   (Speed
    :reader Speed
    :initarg :Speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass StateMsg (<StateMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-msg:<StateMsg> is deprecated: use aquacore-msg:StateMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:header-val is deprecated.  Use aquacore-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'LED-val :lambda-list '(m))
(cl:defmethod LED-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:LED-val is deprecated.  Use aquacore-msg:LED instead.")
  (LED m))

(cl:ensure-generic-function 'Gait-val :lambda-list '(m))
(cl:defmethod Gait-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:Gait-val is deprecated.  Use aquacore-msg:Gait instead.")
  (Gait m))

(cl:ensure-generic-function 'RollAngle-val :lambda-list '(m))
(cl:defmethod RollAngle-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:RollAngle-val is deprecated.  Use aquacore-msg:RollAngle instead.")
  (RollAngle m))

(cl:ensure-generic-function 'PitchAngle-val :lambda-list '(m))
(cl:defmethod PitchAngle-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:PitchAngle-val is deprecated.  Use aquacore-msg:PitchAngle instead.")
  (PitchAngle m))

(cl:ensure-generic-function 'YawAngle-val :lambda-list '(m))
(cl:defmethod YawAngle-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:YawAngle-val is deprecated.  Use aquacore-msg:YawAngle instead.")
  (YawAngle m))

(cl:ensure-generic-function 'RollTargetAngle-val :lambda-list '(m))
(cl:defmethod RollTargetAngle-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:RollTargetAngle-val is deprecated.  Use aquacore-msg:RollTargetAngle instead.")
  (RollTargetAngle m))

(cl:ensure-generic-function 'PitchTargetAngle-val :lambda-list '(m))
(cl:defmethod PitchTargetAngle-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:PitchTargetAngle-val is deprecated.  Use aquacore-msg:PitchTargetAngle instead.")
  (PitchTargetAngle m))

(cl:ensure-generic-function 'YawTargetAngle-val :lambda-list '(m))
(cl:defmethod YawTargetAngle-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:YawTargetAngle-val is deprecated.  Use aquacore-msg:YawTargetAngle instead.")
  (YawTargetAngle m))

(cl:ensure-generic-function 'DepthTarget-val :lambda-list '(m))
(cl:defmethod DepthTarget-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:DepthTarget-val is deprecated.  Use aquacore-msg:DepthTarget instead.")
  (DepthTarget m))

(cl:ensure-generic-function 'AvgRollCommand-val :lambda-list '(m))
(cl:defmethod AvgRollCommand-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:AvgRollCommand-val is deprecated.  Use aquacore-msg:AvgRollCommand instead.")
  (AvgRollCommand m))

(cl:ensure-generic-function 'AvgPitchCommand-val :lambda-list '(m))
(cl:defmethod AvgPitchCommand-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:AvgPitchCommand-val is deprecated.  Use aquacore-msg:AvgPitchCommand instead.")
  (AvgPitchCommand m))

(cl:ensure-generic-function 'AvgYawCommand-val :lambda-list '(m))
(cl:defmethod AvgYawCommand-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:AvgYawCommand-val is deprecated.  Use aquacore-msg:AvgYawCommand instead.")
  (AvgYawCommand m))

(cl:ensure-generic-function 'AvgHeaveCommand-val :lambda-list '(m))
(cl:defmethod AvgHeaveCommand-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:AvgHeaveCommand-val is deprecated.  Use aquacore-msg:AvgHeaveCommand instead.")
  (AvgHeaveCommand m))

(cl:ensure-generic-function 'AvgSurgeCommand-val :lambda-list '(m))
(cl:defmethod AvgSurgeCommand-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:AvgSurgeCommand-val is deprecated.  Use aquacore-msg:AvgSurgeCommand instead.")
  (AvgSurgeCommand m))

(cl:ensure-generic-function 'AutopilotMode-val :lambda-list '(m))
(cl:defmethod AutopilotMode-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:AutopilotMode-val is deprecated.  Use aquacore-msg:AutopilotMode instead.")
  (AutopilotMode m))

(cl:ensure-generic-function 'Depth-val :lambda-list '(m))
(cl:defmethod Depth-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:Depth-val is deprecated.  Use aquacore-msg:Depth instead.")
  (Depth m))

(cl:ensure-generic-function 'Speed-val :lambda-list '(m))
(cl:defmethod Speed-val ((m <StateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:Speed-val is deprecated.  Use aquacore-msg:Speed instead.")
  (Speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateMsg>) ostream)
  "Serializes a message object of type '<StateMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'LED)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Gait)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RollAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'PitchAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'YawAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RollTargetAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'PitchTargetAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'YawTargetAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'DepthTarget))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AvgRollCommand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AvgPitchCommand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AvgYawCommand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AvgHeaveCommand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AvgSurgeCommand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'AutopilotMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateMsg>) istream)
  "Deserializes a message object of type '<StateMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LED) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Gait) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RollAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'PitchAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'YawAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RollTargetAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'PitchTargetAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'YawTargetAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'DepthTarget) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AvgRollCommand) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AvgPitchCommand) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AvgYawCommand) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AvgHeaveCommand) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AvgSurgeCommand) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AutopilotMode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Depth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateMsg>)))
  "Returns string type for a message object of type '<StateMsg>"
  "aquacore/StateMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateMsg)))
  "Returns string type for a message object of type 'StateMsg"
  "aquacore/StateMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateMsg>)))
  "Returns md5sum for a message object of type '<StateMsg>"
  "6b043d5655d703b4e0a8858969aca929")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateMsg)))
  "Returns md5sum for a message object of type 'StateMsg"
  "6b043d5655d703b4e0a8858969aca929")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateMsg>)))
  "Returns full string definition for message of type '<StateMsg>"
  (cl:format cl:nil "Header header~%int32 LED~%int32 Gait~%~%float32 RollAngle~%float32 PitchAngle~%float32 YawAngle~%~%float32 RollTargetAngle~%float32 PitchTargetAngle~%float32 YawTargetAngle~%float32 DepthTarget~%~%float32 AvgRollCommand~%float32 AvgPitchCommand~%float32 AvgYawCommand~%float32 AvgHeaveCommand~%float32 AvgSurgeCommand~%~%int32 AutopilotMode~%float32 Depth~%float32 Speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateMsg)))
  "Returns full string definition for message of type 'StateMsg"
  (cl:format cl:nil "Header header~%int32 LED~%int32 Gait~%~%float32 RollAngle~%float32 PitchAngle~%float32 YawAngle~%~%float32 RollTargetAngle~%float32 PitchTargetAngle~%float32 YawTargetAngle~%float32 DepthTarget~%~%float32 AvgRollCommand~%float32 AvgPitchCommand~%float32 AvgYawCommand~%float32 AvgHeaveCommand~%float32 AvgSurgeCommand~%~%int32 AutopilotMode~%float32 Depth~%float32 Speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'StateMsg
    (cl:cons ':header (header msg))
    (cl:cons ':LED (LED msg))
    (cl:cons ':Gait (Gait msg))
    (cl:cons ':RollAngle (RollAngle msg))
    (cl:cons ':PitchAngle (PitchAngle msg))
    (cl:cons ':YawAngle (YawAngle msg))
    (cl:cons ':RollTargetAngle (RollTargetAngle msg))
    (cl:cons ':PitchTargetAngle (PitchTargetAngle msg))
    (cl:cons ':YawTargetAngle (YawTargetAngle msg))
    (cl:cons ':DepthTarget (DepthTarget msg))
    (cl:cons ':AvgRollCommand (AvgRollCommand msg))
    (cl:cons ':AvgPitchCommand (AvgPitchCommand msg))
    (cl:cons ':AvgYawCommand (AvgYawCommand msg))
    (cl:cons ':AvgHeaveCommand (AvgHeaveCommand msg))
    (cl:cons ':AvgSurgeCommand (AvgSurgeCommand msg))
    (cl:cons ':AutopilotMode (AutopilotMode msg))
    (cl:cons ':Depth (Depth msg))
    (cl:cons ':Speed (Speed msg))
))
