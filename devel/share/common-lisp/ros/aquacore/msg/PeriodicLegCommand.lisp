; Auto-generated. Do not edit!


(cl:in-package aquacore-msg)


;//! \htmlinclude PeriodicLegCommand.msg.html

(cl:defclass <PeriodicLegCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (amplitudes
    :reader amplitudes
    :initarg :amplitudes
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (frequencies
    :reader frequencies
    :initarg :frequencies
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (phase_offsets
    :reader phase_offsets
    :initarg :phase_offsets
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (leg_offsets
    :reader leg_offsets
    :initarg :leg_offsets
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (leg_velocities
    :reader leg_velocities
    :initarg :leg_velocities
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PeriodicLegCommand (<PeriodicLegCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PeriodicLegCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PeriodicLegCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-msg:<PeriodicLegCommand> is deprecated: use aquacore-msg:PeriodicLegCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PeriodicLegCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:header-val is deprecated.  Use aquacore-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'amplitudes-val :lambda-list '(m))
(cl:defmethod amplitudes-val ((m <PeriodicLegCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:amplitudes-val is deprecated.  Use aquacore-msg:amplitudes instead.")
  (amplitudes m))

(cl:ensure-generic-function 'frequencies-val :lambda-list '(m))
(cl:defmethod frequencies-val ((m <PeriodicLegCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:frequencies-val is deprecated.  Use aquacore-msg:frequencies instead.")
  (frequencies m))

(cl:ensure-generic-function 'phase_offsets-val :lambda-list '(m))
(cl:defmethod phase_offsets-val ((m <PeriodicLegCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:phase_offsets-val is deprecated.  Use aquacore-msg:phase_offsets instead.")
  (phase_offsets m))

(cl:ensure-generic-function 'leg_offsets-val :lambda-list '(m))
(cl:defmethod leg_offsets-val ((m <PeriodicLegCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:leg_offsets-val is deprecated.  Use aquacore-msg:leg_offsets instead.")
  (leg_offsets m))

(cl:ensure-generic-function 'leg_velocities-val :lambda-list '(m))
(cl:defmethod leg_velocities-val ((m <PeriodicLegCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:leg_velocities-val is deprecated.  Use aquacore-msg:leg_velocities instead.")
  (leg_velocities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PeriodicLegCommand>) ostream)
  "Serializes a message object of type '<PeriodicLegCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'amplitudes))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'frequencies))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'phase_offsets))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'leg_offsets))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'leg_velocities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PeriodicLegCommand>) istream)
  "Deserializes a message object of type '<PeriodicLegCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'amplitudes) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'amplitudes)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'frequencies) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'frequencies)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'phase_offsets) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'phase_offsets)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'leg_offsets) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'leg_offsets)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'leg_velocities) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'leg_velocities)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PeriodicLegCommand>)))
  "Returns string type for a message object of type '<PeriodicLegCommand>"
  "aquacore/PeriodicLegCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PeriodicLegCommand)))
  "Returns string type for a message object of type 'PeriodicLegCommand"
  "aquacore/PeriodicLegCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PeriodicLegCommand>)))
  "Returns md5sum for a message object of type '<PeriodicLegCommand>"
  "48094d6d773e147611fe2c7c7ff18406")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PeriodicLegCommand)))
  "Returns md5sum for a message object of type 'PeriodicLegCommand"
  "48094d6d773e147611fe2c7c7ff18406")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PeriodicLegCommand>)))
  "Returns full string definition for message of type '<PeriodicLegCommand>"
  (cl:format cl:nil "# This message represents the leg command parameterization that was decided by consensus at ~%# MRL in July, 2014. The intention is that ROS-coded gaits will publish messages of this~%# type, and that the aqua robot as well as its simulator will implement leg motions ~%# that follow the requested sinusoidal trajectories.~%#~%# Author: David Meger~%# Date: July 29, 2014 ~%~%Header header~%~%#~%# The ordering of the 6 legs in all following arrays is:~%# 0: front-left~%# 1: mid-left~%# 2: hind-left~%# 3: front-right~%# 4: mid-right~%# 5: hind-right~%#~%# The orientation of the leg angles are:~%# 0: pointing backwards~%# pi: pointing downwards~%# 2*pi: pointing forwards~%#~%# Computation of current leg angle:~%# leg_angle = amplitude * cos(2*pi * frequency * dt + phase_offset) + leg_offset~%#~%# Midoff positioning and velocity modes:~%#~%# The midoff angle of each leg can be commanded in either position mode or in~%# velocity mode. They are implemented as follows:~%#~%# if leg_velocities[i] != 0:~%#   actual leg offset = last internally-stored leg offset + leg_velocities[i]*dt~%# else:~%#   actual leg offset = leg_offsets[i]~%~%float32[6] amplitudes     # units: rad~%float32[6] frequencies    # units: hz~%float32[6] phase_offsets  # units: rad~%float32[6] leg_offsets    # units: rad~%float32[6] leg_velocities # units: rad/s~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PeriodicLegCommand)))
  "Returns full string definition for message of type 'PeriodicLegCommand"
  (cl:format cl:nil "# This message represents the leg command parameterization that was decided by consensus at ~%# MRL in July, 2014. The intention is that ROS-coded gaits will publish messages of this~%# type, and that the aqua robot as well as its simulator will implement leg motions ~%# that follow the requested sinusoidal trajectories.~%#~%# Author: David Meger~%# Date: July 29, 2014 ~%~%Header header~%~%#~%# The ordering of the 6 legs in all following arrays is:~%# 0: front-left~%# 1: mid-left~%# 2: hind-left~%# 3: front-right~%# 4: mid-right~%# 5: hind-right~%#~%# The orientation of the leg angles are:~%# 0: pointing backwards~%# pi: pointing downwards~%# 2*pi: pointing forwards~%#~%# Computation of current leg angle:~%# leg_angle = amplitude * cos(2*pi * frequency * dt + phase_offset) + leg_offset~%#~%# Midoff positioning and velocity modes:~%#~%# The midoff angle of each leg can be commanded in either position mode or in~%# velocity mode. They are implemented as follows:~%#~%# if leg_velocities[i] != 0:~%#   actual leg offset = last internally-stored leg offset + leg_velocities[i]*dt~%# else:~%#   actual leg offset = leg_offsets[i]~%~%float32[6] amplitudes     # units: rad~%float32[6] frequencies    # units: hz~%float32[6] phase_offsets  # units: rad~%float32[6] leg_offsets    # units: rad~%float32[6] leg_velocities # units: rad/s~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PeriodicLegCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'amplitudes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'frequencies) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'phase_offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'leg_offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'leg_velocities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PeriodicLegCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'PeriodicLegCommand
    (cl:cons ':header (header msg))
    (cl:cons ':amplitudes (amplitudes msg))
    (cl:cons ':frequencies (frequencies msg))
    (cl:cons ':phase_offsets (phase_offsets msg))
    (cl:cons ':leg_offsets (leg_offsets msg))
    (cl:cons ':leg_velocities (leg_velocities msg))
))
