; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude GetPeriodicLegCommand-request.msg.html

(cl:defclass <GetPeriodicLegCommand-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPeriodicLegCommand-request (<GetPeriodicLegCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPeriodicLegCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPeriodicLegCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetPeriodicLegCommand-request> is deprecated: use aquacore-srv:GetPeriodicLegCommand-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPeriodicLegCommand-request>) ostream)
  "Serializes a message object of type '<GetPeriodicLegCommand-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPeriodicLegCommand-request>) istream)
  "Deserializes a message object of type '<GetPeriodicLegCommand-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPeriodicLegCommand-request>)))
  "Returns string type for a service object of type '<GetPeriodicLegCommand-request>"
  "aquacore/GetPeriodicLegCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPeriodicLegCommand-request)))
  "Returns string type for a service object of type 'GetPeriodicLegCommand-request"
  "aquacore/GetPeriodicLegCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPeriodicLegCommand-request>)))
  "Returns md5sum for a message object of type '<GetPeriodicLegCommand-request>"
  "d3befc8a5e5142617cdb8fa5f1aeaff0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPeriodicLegCommand-request)))
  "Returns md5sum for a message object of type 'GetPeriodicLegCommand-request"
  "d3befc8a5e5142617cdb8fa5f1aeaff0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPeriodicLegCommand-request>)))
  "Returns full string definition for message of type '<GetPeriodicLegCommand-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPeriodicLegCommand-request)))
  "Returns full string definition for message of type 'GetPeriodicLegCommand-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPeriodicLegCommand-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPeriodicLegCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPeriodicLegCommand-request
))
;//! \htmlinclude GetPeriodicLegCommand-response.msg.html

(cl:defclass <GetPeriodicLegCommand-response> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
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

(cl:defclass GetPeriodicLegCommand-response (<GetPeriodicLegCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPeriodicLegCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPeriodicLegCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetPeriodicLegCommand-response> is deprecated: use aquacore-srv:GetPeriodicLegCommand-response instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GetPeriodicLegCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:stamp-val is deprecated.  Use aquacore-srv:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'frequencies-val :lambda-list '(m))
(cl:defmethod frequencies-val ((m <GetPeriodicLegCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:frequencies-val is deprecated.  Use aquacore-srv:frequencies instead.")
  (frequencies m))

(cl:ensure-generic-function 'amplitudes-val :lambda-list '(m))
(cl:defmethod amplitudes-val ((m <GetPeriodicLegCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:amplitudes-val is deprecated.  Use aquacore-srv:amplitudes instead.")
  (amplitudes m))

(cl:ensure-generic-function 'leg_offsets-val :lambda-list '(m))
(cl:defmethod leg_offsets-val ((m <GetPeriodicLegCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:leg_offsets-val is deprecated.  Use aquacore-srv:leg_offsets instead.")
  (leg_offsets m))

(cl:ensure-generic-function 'phase_offsets-val :lambda-list '(m))
(cl:defmethod phase_offsets-val ((m <GetPeriodicLegCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:phase_offsets-val is deprecated.  Use aquacore-srv:phase_offsets instead.")
  (phase_offsets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPeriodicLegCommand-response>) ostream)
  "Serializes a message object of type '<GetPeriodicLegCommand-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stamp) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPeriodicLegCommand-response>) istream)
  "Deserializes a message object of type '<GetPeriodicLegCommand-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stamp) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPeriodicLegCommand-response>)))
  "Returns string type for a service object of type '<GetPeriodicLegCommand-response>"
  "aquacore/GetPeriodicLegCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPeriodicLegCommand-response)))
  "Returns string type for a service object of type 'GetPeriodicLegCommand-response"
  "aquacore/GetPeriodicLegCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPeriodicLegCommand-response>)))
  "Returns md5sum for a message object of type '<GetPeriodicLegCommand-response>"
  "d3befc8a5e5142617cdb8fa5f1aeaff0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPeriodicLegCommand-response)))
  "Returns md5sum for a message object of type 'GetPeriodicLegCommand-response"
  "d3befc8a5e5142617cdb8fa5f1aeaff0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPeriodicLegCommand-response>)))
  "Returns full string definition for message of type '<GetPeriodicLegCommand-response>"
  (cl:format cl:nil "Header stamp~%float64[6] frequencies~%float64[6] amplitudes~%float64[6] leg_offsets~%float64[6] phase_offsets~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPeriodicLegCommand-response)))
  "Returns full string definition for message of type 'GetPeriodicLegCommand-response"
  (cl:format cl:nil "Header stamp~%float64[6] frequencies~%float64[6] amplitudes~%float64[6] leg_offsets~%float64[6] phase_offsets~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPeriodicLegCommand-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stamp))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'frequencies) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'amplitudes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'leg_offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'phase_offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPeriodicLegCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPeriodicLegCommand-response
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':frequencies (frequencies msg))
    (cl:cons ':amplitudes (amplitudes msg))
    (cl:cons ':leg_offsets (leg_offsets msg))
    (cl:cons ':phase_offsets (phase_offsets msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPeriodicLegCommand)))
  'GetPeriodicLegCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPeriodicLegCommand)))
  'GetPeriodicLegCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPeriodicLegCommand)))
  "Returns string type for a service object of type '<GetPeriodicLegCommand>"
  "aquacore/GetPeriodicLegCommand")