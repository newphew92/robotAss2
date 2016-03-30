; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetPeriodicLegCommand-request.msg.html

(cl:defclass <SetPeriodicLegCommand-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (frequencies
    :reader frequencies
    :initarg :frequencies
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (amplitudes
    :reader amplitudes
    :initarg :amplitudes
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (leg_offsets
    :reader leg_offsets
    :initarg :leg_offsets
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (phase_offsets
    :reader phase_offsets
    :initarg :phase_offsets
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetPeriodicLegCommand-request (<SetPeriodicLegCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPeriodicLegCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPeriodicLegCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetPeriodicLegCommand-request> is deprecated: use aquacore-srv:SetPeriodicLegCommand-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SetPeriodicLegCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:header-val is deprecated.  Use aquacore-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'frequencies-val :lambda-list '(m))
(cl:defmethod frequencies-val ((m <SetPeriodicLegCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:frequencies-val is deprecated.  Use aquacore-srv:frequencies instead.")
  (frequencies m))

(cl:ensure-generic-function 'amplitudes-val :lambda-list '(m))
(cl:defmethod amplitudes-val ((m <SetPeriodicLegCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:amplitudes-val is deprecated.  Use aquacore-srv:amplitudes instead.")
  (amplitudes m))

(cl:ensure-generic-function 'leg_offsets-val :lambda-list '(m))
(cl:defmethod leg_offsets-val ((m <SetPeriodicLegCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:leg_offsets-val is deprecated.  Use aquacore-srv:leg_offsets instead.")
  (leg_offsets m))

(cl:ensure-generic-function 'phase_offsets-val :lambda-list '(m))
(cl:defmethod phase_offsets-val ((m <SetPeriodicLegCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:phase_offsets-val is deprecated.  Use aquacore-srv:phase_offsets instead.")
  (phase_offsets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPeriodicLegCommand-request>) ostream)
  "Serializes a message object of type '<SetPeriodicLegCommand-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'frequencies))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'amplitudes))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'leg_offsets))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'phase_offsets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPeriodicLegCommand-request>) istream)
  "Deserializes a message object of type '<SetPeriodicLegCommand-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'frequencies) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'frequencies)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'amplitudes) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'amplitudes)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'leg_offsets) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'leg_offsets)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'phase_offsets) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'phase_offsets)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPeriodicLegCommand-request>)))
  "Returns string type for a service object of type '<SetPeriodicLegCommand-request>"
  "aquacore/SetPeriodicLegCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPeriodicLegCommand-request)))
  "Returns string type for a service object of type 'SetPeriodicLegCommand-request"
  "aquacore/SetPeriodicLegCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPeriodicLegCommand-request>)))
  "Returns md5sum for a message object of type '<SetPeriodicLegCommand-request>"
  "e706408018621c179fa26af34ef37d03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPeriodicLegCommand-request)))
  "Returns md5sum for a message object of type 'SetPeriodicLegCommand-request"
  "e706408018621c179fa26af34ef37d03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPeriodicLegCommand-request>)))
  "Returns full string definition for message of type '<SetPeriodicLegCommand-request>"
  (cl:format cl:nil "Header header~%float64[6] frequencies~%float64[6] amplitudes~%float64[6] leg_offsets~%float64[6] phase_offsets~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPeriodicLegCommand-request)))
  "Returns full string definition for message of type 'SetPeriodicLegCommand-request"
  (cl:format cl:nil "Header header~%float64[6] frequencies~%float64[6] amplitudes~%float64[6] leg_offsets~%float64[6] phase_offsets~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPeriodicLegCommand-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'frequencies) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'amplitudes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'leg_offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'phase_offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPeriodicLegCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPeriodicLegCommand-request
    (cl:cons ':header (header msg))
    (cl:cons ':frequencies (frequencies msg))
    (cl:cons ':amplitudes (amplitudes msg))
    (cl:cons ':leg_offsets (leg_offsets msg))
    (cl:cons ':phase_offsets (phase_offsets msg))
))
;//! \htmlinclude SetPeriodicLegCommand-response.msg.html

(cl:defclass <SetPeriodicLegCommand-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetPeriodicLegCommand-response (<SetPeriodicLegCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPeriodicLegCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPeriodicLegCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetPeriodicLegCommand-response> is deprecated: use aquacore-srv:SetPeriodicLegCommand-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPeriodicLegCommand-response>) ostream)
  "Serializes a message object of type '<SetPeriodicLegCommand-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPeriodicLegCommand-response>) istream)
  "Deserializes a message object of type '<SetPeriodicLegCommand-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPeriodicLegCommand-response>)))
  "Returns string type for a service object of type '<SetPeriodicLegCommand-response>"
  "aquacore/SetPeriodicLegCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPeriodicLegCommand-response)))
  "Returns string type for a service object of type 'SetPeriodicLegCommand-response"
  "aquacore/SetPeriodicLegCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPeriodicLegCommand-response>)))
  "Returns md5sum for a message object of type '<SetPeriodicLegCommand-response>"
  "e706408018621c179fa26af34ef37d03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPeriodicLegCommand-response)))
  "Returns md5sum for a message object of type 'SetPeriodicLegCommand-response"
  "e706408018621c179fa26af34ef37d03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPeriodicLegCommand-response>)))
  "Returns full string definition for message of type '<SetPeriodicLegCommand-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPeriodicLegCommand-response)))
  "Returns full string definition for message of type 'SetPeriodicLegCommand-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPeriodicLegCommand-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPeriodicLegCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPeriodicLegCommand-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPeriodicLegCommand)))
  'SetPeriodicLegCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPeriodicLegCommand)))
  'SetPeriodicLegCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPeriodicLegCommand)))
  "Returns string type for a service object of type '<SetPeriodicLegCommand>"
  "aquacore/SetPeriodicLegCommand")