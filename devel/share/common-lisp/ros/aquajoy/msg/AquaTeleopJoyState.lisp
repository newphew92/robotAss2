; Auto-generated. Do not edit!


(cl:in-package aquajoy-msg)


;//! \htmlinclude AquaTeleopJoyState.msg.html

(cl:defclass <AquaTeleopJoyState> (roslisp-msg-protocol:ros-message)
  ((ctrl_mode
    :reader ctrl_mode
    :initarg :ctrl_mode
    :type cl:fixnum
    :initform 0)
   (modifier
    :reader modifier
    :initarg :modifier
    :type cl:boolean
    :initform cl:nil)
   (raw_cmd
    :reader raw_cmd
    :initarg :raw_cmd
    :type aquacore-msg:Command
    :initform (cl:make-instance 'aquacore-msg:Command))
   (roll_pos
    :reader roll_pos
    :initarg :roll_pos
    :type cl:float
    :initform 0.0)
   (pitch_pos
    :reader pitch_pos
    :initarg :pitch_pos
    :type cl:float
    :initform 0.0)
   (yaw_pos
    :reader yaw_pos
    :initarg :yaw_pos
    :type cl:float
    :initform 0.0)
   (roll_vel
    :reader roll_vel
    :initarg :roll_vel
    :type cl:float
    :initform 0.0)
   (pitch_vel
    :reader pitch_vel
    :initarg :pitch_vel
    :type cl:float
    :initform 0.0)
   (yaw_vel
    :reader yaw_vel
    :initarg :yaw_vel
    :type cl:float
    :initform 0.0)
   (depth_pos
    :reader depth_pos
    :initarg :depth_pos
    :type cl:float
    :initform 0.0)
   (depth_vel
    :reader depth_vel
    :initarg :depth_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass AquaTeleopJoyState (<AquaTeleopJoyState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AquaTeleopJoyState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AquaTeleopJoyState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquajoy-msg:<AquaTeleopJoyState> is deprecated: use aquajoy-msg:AquaTeleopJoyState instead.")))

(cl:ensure-generic-function 'ctrl_mode-val :lambda-list '(m))
(cl:defmethod ctrl_mode-val ((m <AquaTeleopJoyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:ctrl_mode-val is deprecated.  Use aquajoy-msg:ctrl_mode instead.")
  (ctrl_mode m))

(cl:ensure-generic-function 'modifier-val :lambda-list '(m))
(cl:defmethod modifier-val ((m <AquaTeleopJoyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:modifier-val is deprecated.  Use aquajoy-msg:modifier instead.")
  (modifier m))

(cl:ensure-generic-function 'raw_cmd-val :lambda-list '(m))
(cl:defmethod raw_cmd-val ((m <AquaTeleopJoyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:raw_cmd-val is deprecated.  Use aquajoy-msg:raw_cmd instead.")
  (raw_cmd m))

(cl:ensure-generic-function 'roll_pos-val :lambda-list '(m))
(cl:defmethod roll_pos-val ((m <AquaTeleopJoyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:roll_pos-val is deprecated.  Use aquajoy-msg:roll_pos instead.")
  (roll_pos m))

(cl:ensure-generic-function 'pitch_pos-val :lambda-list '(m))
(cl:defmethod pitch_pos-val ((m <AquaTeleopJoyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:pitch_pos-val is deprecated.  Use aquajoy-msg:pitch_pos instead.")
  (pitch_pos m))

(cl:ensure-generic-function 'yaw_pos-val :lambda-list '(m))
(cl:defmethod yaw_pos-val ((m <AquaTeleopJoyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:yaw_pos-val is deprecated.  Use aquajoy-msg:yaw_pos instead.")
  (yaw_pos m))

(cl:ensure-generic-function 'roll_vel-val :lambda-list '(m))
(cl:defmethod roll_vel-val ((m <AquaTeleopJoyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:roll_vel-val is deprecated.  Use aquajoy-msg:roll_vel instead.")
  (roll_vel m))

(cl:ensure-generic-function 'pitch_vel-val :lambda-list '(m))
(cl:defmethod pitch_vel-val ((m <AquaTeleopJoyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:pitch_vel-val is deprecated.  Use aquajoy-msg:pitch_vel instead.")
  (pitch_vel m))

(cl:ensure-generic-function 'yaw_vel-val :lambda-list '(m))
(cl:defmethod yaw_vel-val ((m <AquaTeleopJoyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:yaw_vel-val is deprecated.  Use aquajoy-msg:yaw_vel instead.")
  (yaw_vel m))

(cl:ensure-generic-function 'depth_pos-val :lambda-list '(m))
(cl:defmethod depth_pos-val ((m <AquaTeleopJoyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:depth_pos-val is deprecated.  Use aquajoy-msg:depth_pos instead.")
  (depth_pos m))

(cl:ensure-generic-function 'depth_vel-val :lambda-list '(m))
(cl:defmethod depth_vel-val ((m <AquaTeleopJoyState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:depth_vel-val is deprecated.  Use aquajoy-msg:depth_vel instead.")
  (depth_vel m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AquaTeleopJoyState>)))
    "Constants for message type '<AquaTeleopJoyState>"
  '((:CTRL_MODE_RAW . 0)
    (:CTRL_MODE_GLOBAL_RP_POS . 1)
    (:CTRL_MODE_GLOBAL_RP_POS_D . 2)
    (:CTRL_MODE_GLOBAL_RP_VEL_D . 3)
    (:CTRL_MODE_FLATSWIM_D . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AquaTeleopJoyState)))
    "Constants for message type 'AquaTeleopJoyState"
  '((:CTRL_MODE_RAW . 0)
    (:CTRL_MODE_GLOBAL_RP_POS . 1)
    (:CTRL_MODE_GLOBAL_RP_POS_D . 2)
    (:CTRL_MODE_GLOBAL_RP_VEL_D . 3)
    (:CTRL_MODE_FLATSWIM_D . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AquaTeleopJoyState>) ostream)
  "Serializes a message object of type '<AquaTeleopJoyState>"
  (cl:let* ((signed (cl:slot-value msg 'ctrl_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'modifier) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'raw_cmd) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'roll_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'roll_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'depth_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'depth_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AquaTeleopJoyState>) istream)
  "Deserializes a message object of type '<AquaTeleopJoyState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ctrl_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'modifier) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'raw_cmd) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth_vel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AquaTeleopJoyState>)))
  "Returns string type for a message object of type '<AquaTeleopJoyState>"
  "aquajoy/AquaTeleopJoyState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AquaTeleopJoyState)))
  "Returns string type for a message object of type 'AquaTeleopJoyState"
  "aquajoy/AquaTeleopJoyState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AquaTeleopJoyState>)))
  "Returns md5sum for a message object of type '<AquaTeleopJoyState>"
  "1ae4c9d6b55f827b7d46912c0ba341f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AquaTeleopJoyState)))
  "Returns md5sum for a message object of type 'AquaTeleopJoyState"
  "1ae4c9d6b55f827b7d46912c0ba341f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AquaTeleopJoyState>)))
  "Returns full string definition for message of type '<AquaTeleopJoyState>"
  (cl:format cl:nil "int8 ctrl_mode~%int8 CTRL_MODE_RAW = 0~%int8 CTRL_MODE_GLOBAL_RP_POS = 1~%int8 CTRL_MODE_GLOBAL_RP_POS_D = 2~%int8 CTRL_MODE_GLOBAL_RP_VEL_D = 3~%int8 CTRL_MODE_FLATSWIM_D = 4~%~%bool modifier~%~%aquacore/Command raw_cmd~%~%# NOTE: all angle units are in degrees~%~%float64 roll_pos~%float64 pitch_pos~%float64 yaw_pos~%~%float64 roll_vel~%float64 pitch_vel~%float64 yaw_vel~%~%float64 depth_pos~%~%float64 depth_vel~%~%================================================================================~%MSG: aquacore/Command~%# All of the following are pseudo-rates, meaning that they are correlated to the distance / time in a~%# non-linear way; see Giguere et al. IROS 2006 \"Characterizing...\" for similar pseudo-rate mapping plots~%# on Aqua 1.0. Do keep in mind that these plots do not apply for Aqua 2.0+, which do not have proper mappings yet.~%~%# All saturations are performed by RoboDevel~%~%float32 speed # unitless pseudo-rate, [0, 1]~%float32 yaw   # unitless pseudo-rate, [-1, 1] # +1: yaw right~%float32 pitch # unitless pseudo-rate, [-1, 1] # +1: pitch forwards down~%float32 roll  # unitless pseudo-rate, [-1, 1] # +1: roll right~%float32 heave # unitless pseudo-rate, [-1, 1] # +1: heave up~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AquaTeleopJoyState)))
  "Returns full string definition for message of type 'AquaTeleopJoyState"
  (cl:format cl:nil "int8 ctrl_mode~%int8 CTRL_MODE_RAW = 0~%int8 CTRL_MODE_GLOBAL_RP_POS = 1~%int8 CTRL_MODE_GLOBAL_RP_POS_D = 2~%int8 CTRL_MODE_GLOBAL_RP_VEL_D = 3~%int8 CTRL_MODE_FLATSWIM_D = 4~%~%bool modifier~%~%aquacore/Command raw_cmd~%~%# NOTE: all angle units are in degrees~%~%float64 roll_pos~%float64 pitch_pos~%float64 yaw_pos~%~%float64 roll_vel~%float64 pitch_vel~%float64 yaw_vel~%~%float64 depth_pos~%~%float64 depth_vel~%~%================================================================================~%MSG: aquacore/Command~%# All of the following are pseudo-rates, meaning that they are correlated to the distance / time in a~%# non-linear way; see Giguere et al. IROS 2006 \"Characterizing...\" for similar pseudo-rate mapping plots~%# on Aqua 1.0. Do keep in mind that these plots do not apply for Aqua 2.0+, which do not have proper mappings yet.~%~%# All saturations are performed by RoboDevel~%~%float32 speed # unitless pseudo-rate, [0, 1]~%float32 yaw   # unitless pseudo-rate, [-1, 1] # +1: yaw right~%float32 pitch # unitless pseudo-rate, [-1, 1] # +1: pitch forwards down~%float32 roll  # unitless pseudo-rate, [-1, 1] # +1: roll right~%float32 heave # unitless pseudo-rate, [-1, 1] # +1: heave up~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AquaTeleopJoyState>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'raw_cmd))
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AquaTeleopJoyState>))
  "Converts a ROS message object to a list"
  (cl:list 'AquaTeleopJoyState
    (cl:cons ':ctrl_mode (ctrl_mode msg))
    (cl:cons ':modifier (modifier msg))
    (cl:cons ':raw_cmd (raw_cmd msg))
    (cl:cons ':roll_pos (roll_pos msg))
    (cl:cons ':pitch_pos (pitch_pos msg))
    (cl:cons ':yaw_pos (yaw_pos msg))
    (cl:cons ':roll_vel (roll_vel msg))
    (cl:cons ':pitch_vel (pitch_vel msg))
    (cl:cons ':yaw_vel (yaw_vel msg))
    (cl:cons ':depth_pos (depth_pos msg))
    (cl:cons ':depth_vel (depth_vel msg))
))
