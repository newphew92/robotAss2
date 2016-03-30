; Auto-generated. Do not edit!


(cl:in-package aquajoy-msg)


;//! \htmlinclude AquaTeleopJoyParams.msg.html

(cl:defclass <AquaTeleopJoyParams> (roslisp-msg-protocol:ros-message)
  ((joy_axis_deadzone
    :reader joy_axis_deadzone
    :initarg :joy_axis_deadzone
    :type cl:float
    :initform 0.0)
   (max_speed_cmd
    :reader max_speed_cmd
    :initarg :max_speed_cmd
    :type cl:float
    :initform 0.0)
   (max_heave_cmd
    :reader max_heave_cmd
    :initarg :max_heave_cmd
    :type cl:float
    :initform 0.0)
   (max_roll_cmd
    :reader max_roll_cmd
    :initarg :max_roll_cmd
    :type cl:float
    :initform 0.0)
   (max_pitch_cmd
    :reader max_pitch_cmd
    :initarg :max_pitch_cmd
    :type cl:float
    :initform 0.0)
   (max_yaw_cmd
    :reader max_yaw_cmd
    :initarg :max_yaw_cmd
    :type cl:float
    :initform 0.0)
   (max_roll_pos
    :reader max_roll_pos
    :initarg :max_roll_pos
    :type cl:float
    :initform 0.0)
   (max_pitch_pos
    :reader max_pitch_pos
    :initarg :max_pitch_pos
    :type cl:float
    :initform 0.0)
   (max_yaw_pos
    :reader max_yaw_pos
    :initarg :max_yaw_pos
    :type cl:float
    :initform 0.0)
   (min_depth
    :reader min_depth
    :initarg :min_depth
    :type cl:float
    :initform 0.0)
   (max_depth
    :reader max_depth
    :initarg :max_depth
    :type cl:float
    :initform 0.0)
   (default_fixed_depth
    :reader default_fixed_depth
    :initarg :default_fixed_depth
    :type cl:float
    :initform 0.0)
   (max_roll_vel
    :reader max_roll_vel
    :initarg :max_roll_vel
    :type cl:float
    :initform 0.0)
   (max_pitch_vel
    :reader max_pitch_vel
    :initarg :max_pitch_vel
    :type cl:float
    :initform 0.0)
   (max_yaw_vel
    :reader max_yaw_vel
    :initarg :max_yaw_vel
    :type cl:float
    :initform 0.0)
   (max_depth_vel
    :reader max_depth_vel
    :initarg :max_depth_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass AquaTeleopJoyParams (<AquaTeleopJoyParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AquaTeleopJoyParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AquaTeleopJoyParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquajoy-msg:<AquaTeleopJoyParams> is deprecated: use aquajoy-msg:AquaTeleopJoyParams instead.")))

(cl:ensure-generic-function 'joy_axis_deadzone-val :lambda-list '(m))
(cl:defmethod joy_axis_deadzone-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:joy_axis_deadzone-val is deprecated.  Use aquajoy-msg:joy_axis_deadzone instead.")
  (joy_axis_deadzone m))

(cl:ensure-generic-function 'max_speed_cmd-val :lambda-list '(m))
(cl:defmethod max_speed_cmd-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_speed_cmd-val is deprecated.  Use aquajoy-msg:max_speed_cmd instead.")
  (max_speed_cmd m))

(cl:ensure-generic-function 'max_heave_cmd-val :lambda-list '(m))
(cl:defmethod max_heave_cmd-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_heave_cmd-val is deprecated.  Use aquajoy-msg:max_heave_cmd instead.")
  (max_heave_cmd m))

(cl:ensure-generic-function 'max_roll_cmd-val :lambda-list '(m))
(cl:defmethod max_roll_cmd-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_roll_cmd-val is deprecated.  Use aquajoy-msg:max_roll_cmd instead.")
  (max_roll_cmd m))

(cl:ensure-generic-function 'max_pitch_cmd-val :lambda-list '(m))
(cl:defmethod max_pitch_cmd-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_pitch_cmd-val is deprecated.  Use aquajoy-msg:max_pitch_cmd instead.")
  (max_pitch_cmd m))

(cl:ensure-generic-function 'max_yaw_cmd-val :lambda-list '(m))
(cl:defmethod max_yaw_cmd-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_yaw_cmd-val is deprecated.  Use aquajoy-msg:max_yaw_cmd instead.")
  (max_yaw_cmd m))

(cl:ensure-generic-function 'max_roll_pos-val :lambda-list '(m))
(cl:defmethod max_roll_pos-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_roll_pos-val is deprecated.  Use aquajoy-msg:max_roll_pos instead.")
  (max_roll_pos m))

(cl:ensure-generic-function 'max_pitch_pos-val :lambda-list '(m))
(cl:defmethod max_pitch_pos-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_pitch_pos-val is deprecated.  Use aquajoy-msg:max_pitch_pos instead.")
  (max_pitch_pos m))

(cl:ensure-generic-function 'max_yaw_pos-val :lambda-list '(m))
(cl:defmethod max_yaw_pos-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_yaw_pos-val is deprecated.  Use aquajoy-msg:max_yaw_pos instead.")
  (max_yaw_pos m))

(cl:ensure-generic-function 'min_depth-val :lambda-list '(m))
(cl:defmethod min_depth-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:min_depth-val is deprecated.  Use aquajoy-msg:min_depth instead.")
  (min_depth m))

(cl:ensure-generic-function 'max_depth-val :lambda-list '(m))
(cl:defmethod max_depth-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_depth-val is deprecated.  Use aquajoy-msg:max_depth instead.")
  (max_depth m))

(cl:ensure-generic-function 'default_fixed_depth-val :lambda-list '(m))
(cl:defmethod default_fixed_depth-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:default_fixed_depth-val is deprecated.  Use aquajoy-msg:default_fixed_depth instead.")
  (default_fixed_depth m))

(cl:ensure-generic-function 'max_roll_vel-val :lambda-list '(m))
(cl:defmethod max_roll_vel-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_roll_vel-val is deprecated.  Use aquajoy-msg:max_roll_vel instead.")
  (max_roll_vel m))

(cl:ensure-generic-function 'max_pitch_vel-val :lambda-list '(m))
(cl:defmethod max_pitch_vel-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_pitch_vel-val is deprecated.  Use aquajoy-msg:max_pitch_vel instead.")
  (max_pitch_vel m))

(cl:ensure-generic-function 'max_yaw_vel-val :lambda-list '(m))
(cl:defmethod max_yaw_vel-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_yaw_vel-val is deprecated.  Use aquajoy-msg:max_yaw_vel instead.")
  (max_yaw_vel m))

(cl:ensure-generic-function 'max_depth_vel-val :lambda-list '(m))
(cl:defmethod max_depth_vel-val ((m <AquaTeleopJoyParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-msg:max_depth_vel-val is deprecated.  Use aquajoy-msg:max_depth_vel instead.")
  (max_depth_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AquaTeleopJoyParams>) ostream)
  "Serializes a message object of type '<AquaTeleopJoyParams>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joy_axis_deadzone))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_speed_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_heave_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_roll_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_pitch_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_yaw_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_roll_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_pitch_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_yaw_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'default_fixed_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_roll_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_pitch_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_yaw_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_depth_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AquaTeleopJoyParams>) istream)
  "Deserializes a message object of type '<AquaTeleopJoyParams>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joy_axis_deadzone) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_speed_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_heave_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_roll_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pitch_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_yaw_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_roll_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pitch_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_yaw_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_depth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_depth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'default_fixed_depth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_roll_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pitch_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_yaw_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_depth_vel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AquaTeleopJoyParams>)))
  "Returns string type for a message object of type '<AquaTeleopJoyParams>"
  "aquajoy/AquaTeleopJoyParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AquaTeleopJoyParams)))
  "Returns string type for a message object of type 'AquaTeleopJoyParams"
  "aquajoy/AquaTeleopJoyParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AquaTeleopJoyParams>)))
  "Returns md5sum for a message object of type '<AquaTeleopJoyParams>"
  "706bf780e630eefcca324213e5cf91d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AquaTeleopJoyParams)))
  "Returns md5sum for a message object of type 'AquaTeleopJoyParams"
  "706bf780e630eefcca324213e5cf91d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AquaTeleopJoyParams>)))
  "Returns full string definition for message of type '<AquaTeleopJoyParams>"
  (cl:format cl:nil "# Range: [0, 1]~%float64 joy_axis_deadzone~%  ~%# Range: [0, 1]~%float64 max_speed_cmd~%float64 max_heave_cmd~%float64 max_roll_cmd~%float64 max_pitch_cmd~%float64 max_yaw_cmd~%  ~%# Recommended range: [0, 180] (degrees)~%float64 max_roll_pos~%float64 max_pitch_pos~%float64 max_yaw_pos~%~%# Recommended range: [-2, 1] (m)~%float64 min_depth~%~%# Recommended range: [0, 100] (m)~%float64 max_depth~%~%# Use fixed initial depth (m) upon entering depth-related modes [if < 0, then initial depth is current robot depth]~%float64 default_fixed_depth~%  ~%# Recommended range: [0, 180] (deg/s)~%float64 max_roll_vel~%float64 max_pitch_vel~%float64 max_yaw_vel~%  ~%# Recommended range: [0, 1] (m/s)~%float64 max_depth_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AquaTeleopJoyParams)))
  "Returns full string definition for message of type 'AquaTeleopJoyParams"
  (cl:format cl:nil "# Range: [0, 1]~%float64 joy_axis_deadzone~%  ~%# Range: [0, 1]~%float64 max_speed_cmd~%float64 max_heave_cmd~%float64 max_roll_cmd~%float64 max_pitch_cmd~%float64 max_yaw_cmd~%  ~%# Recommended range: [0, 180] (degrees)~%float64 max_roll_pos~%float64 max_pitch_pos~%float64 max_yaw_pos~%~%# Recommended range: [-2, 1] (m)~%float64 min_depth~%~%# Recommended range: [0, 100] (m)~%float64 max_depth~%~%# Use fixed initial depth (m) upon entering depth-related modes [if < 0, then initial depth is current robot depth]~%float64 default_fixed_depth~%  ~%# Recommended range: [0, 180] (deg/s)~%float64 max_roll_vel~%float64 max_pitch_vel~%float64 max_yaw_vel~%  ~%# Recommended range: [0, 1] (m/s)~%float64 max_depth_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AquaTeleopJoyParams>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AquaTeleopJoyParams>))
  "Converts a ROS message object to a list"
  (cl:list 'AquaTeleopJoyParams
    (cl:cons ':joy_axis_deadzone (joy_axis_deadzone msg))
    (cl:cons ':max_speed_cmd (max_speed_cmd msg))
    (cl:cons ':max_heave_cmd (max_heave_cmd msg))
    (cl:cons ':max_roll_cmd (max_roll_cmd msg))
    (cl:cons ':max_pitch_cmd (max_pitch_cmd msg))
    (cl:cons ':max_yaw_cmd (max_yaw_cmd msg))
    (cl:cons ':max_roll_pos (max_roll_pos msg))
    (cl:cons ':max_pitch_pos (max_pitch_pos msg))
    (cl:cons ':max_yaw_pos (max_yaw_pos msg))
    (cl:cons ':min_depth (min_depth msg))
    (cl:cons ':max_depth (max_depth msg))
    (cl:cons ':default_fixed_depth (default_fixed_depth msg))
    (cl:cons ':max_roll_vel (max_roll_vel msg))
    (cl:cons ':max_pitch_vel (max_pitch_vel msg))
    (cl:cons ':max_yaw_vel (max_yaw_vel msg))
    (cl:cons ':max_depth_vel (max_depth_vel msg))
))
