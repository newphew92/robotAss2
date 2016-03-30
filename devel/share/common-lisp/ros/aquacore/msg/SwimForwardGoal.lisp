; Auto-generated. Do not edit!


(cl:in-package aquacore-msg)


;//! \htmlinclude SwimForwardGoal.msg.html

(cl:defclass <SwimForwardGoal> (roslisp-msg-protocol:ros-message)
  ((duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (target_depth
    :reader target_depth
    :initarg :target_depth
    :type cl:float
    :initform 0.0)
   (target_yaw
    :reader target_yaw
    :initarg :target_yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass SwimForwardGoal (<SwimForwardGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwimForwardGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwimForwardGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-msg:<SwimForwardGoal> is deprecated: use aquacore-msg:SwimForwardGoal instead.")))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <SwimForwardGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:duration-val is deprecated.  Use aquacore-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <SwimForwardGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:speed-val is deprecated.  Use aquacore-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'target_depth-val :lambda-list '(m))
(cl:defmethod target_depth-val ((m <SwimForwardGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:target_depth-val is deprecated.  Use aquacore-msg:target_depth instead.")
  (target_depth m))

(cl:ensure-generic-function 'target_yaw-val :lambda-list '(m))
(cl:defmethod target_yaw-val ((m <SwimForwardGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:target_yaw-val is deprecated.  Use aquacore-msg:target_yaw instead.")
  (target_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwimForwardGoal>) ostream)
  "Serializes a message object of type '<SwimForwardGoal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_depth))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwimForwardGoal>) istream)
  "Deserializes a message object of type '<SwimForwardGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'target_yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwimForwardGoal>)))
  "Returns string type for a message object of type '<SwimForwardGoal>"
  "aquacore/SwimForwardGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwimForwardGoal)))
  "Returns string type for a message object of type 'SwimForwardGoal"
  "aquacore/SwimForwardGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwimForwardGoal>)))
  "Returns md5sum for a message object of type '<SwimForwardGoal>"
  "8ab2a87faf8d41b41f51cfda0b7d6d34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwimForwardGoal)))
  "Returns md5sum for a message object of type 'SwimForwardGoal"
  "8ab2a87faf8d41b41f51cfda0b7d6d34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwimForwardGoal>)))
  "Returns full string definition for message of type '<SwimForwardGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# BIG WARNING!!! It is potentially misleading that at the beginning the robot will turn~%#                to the target yaw, and then swim straight from that point onwards.  ~%~%# Desired Goal~%float64 duration     # in s~%float64 speed        # in pseudo-unit-rate~%float32 target_depth # in m; set to -1 to use robot's current depth~%float32 target_yaw   # in deg; set to 361 to use robot's current yaw~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwimForwardGoal)))
  "Returns full string definition for message of type 'SwimForwardGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# BIG WARNING!!! It is potentially misleading that at the beginning the robot will turn~%#                to the target yaw, and then swim straight from that point onwards.  ~%~%# Desired Goal~%float64 duration     # in s~%float64 speed        # in pseudo-unit-rate~%float32 target_depth # in m; set to -1 to use robot's current depth~%float32 target_yaw   # in deg; set to 361 to use robot's current yaw~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwimForwardGoal>))
  (cl:+ 0
     8
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwimForwardGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'SwimForwardGoal
    (cl:cons ':duration (duration msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':target_depth (target_depth msg))
    (cl:cons ':target_yaw (target_yaw msg))
))
