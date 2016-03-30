; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude GetTargetLegAngles-request.msg.html

(cl:defclass <GetTargetLegAngles-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTargetLegAngles-request (<GetTargetLegAngles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTargetLegAngles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTargetLegAngles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetTargetLegAngles-request> is deprecated: use aquacore-srv:GetTargetLegAngles-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTargetLegAngles-request>) ostream)
  "Serializes a message object of type '<GetTargetLegAngles-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTargetLegAngles-request>) istream)
  "Deserializes a message object of type '<GetTargetLegAngles-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTargetLegAngles-request>)))
  "Returns string type for a service object of type '<GetTargetLegAngles-request>"
  "aquacore/GetTargetLegAnglesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTargetLegAngles-request)))
  "Returns string type for a service object of type 'GetTargetLegAngles-request"
  "aquacore/GetTargetLegAnglesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTargetLegAngles-request>)))
  "Returns md5sum for a message object of type '<GetTargetLegAngles-request>"
  "0290c096db0f9662921c53f2603ee48a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTargetLegAngles-request)))
  "Returns md5sum for a message object of type 'GetTargetLegAngles-request"
  "0290c096db0f9662921c53f2603ee48a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTargetLegAngles-request>)))
  "Returns full string definition for message of type '<GetTargetLegAngles-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTargetLegAngles-request)))
  "Returns full string definition for message of type 'GetTargetLegAngles-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTargetLegAngles-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTargetLegAngles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTargetLegAngles-request
))
;//! \htmlinclude GetTargetLegAngles-response.msg.html

(cl:defclass <GetTargetLegAngles-response> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (target_angles
    :reader target_angles
    :initarg :target_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetTargetLegAngles-response (<GetTargetLegAngles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTargetLegAngles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTargetLegAngles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetTargetLegAngles-response> is deprecated: use aquacore-srv:GetTargetLegAngles-response instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GetTargetLegAngles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:stamp-val is deprecated.  Use aquacore-srv:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'target_angles-val :lambda-list '(m))
(cl:defmethod target_angles-val ((m <GetTargetLegAngles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:target_angles-val is deprecated.  Use aquacore-srv:target_angles instead.")
  (target_angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTargetLegAngles-response>) ostream)
  "Serializes a message object of type '<GetTargetLegAngles-response>"
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
   (cl:slot-value msg 'target_angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTargetLegAngles-response>) istream)
  "Deserializes a message object of type '<GetTargetLegAngles-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stamp) istream)
  (cl:setf (cl:slot-value msg 'target_angles) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'target_angles)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTargetLegAngles-response>)))
  "Returns string type for a service object of type '<GetTargetLegAngles-response>"
  "aquacore/GetTargetLegAnglesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTargetLegAngles-response)))
  "Returns string type for a service object of type 'GetTargetLegAngles-response"
  "aquacore/GetTargetLegAnglesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTargetLegAngles-response>)))
  "Returns md5sum for a message object of type '<GetTargetLegAngles-response>"
  "0290c096db0f9662921c53f2603ee48a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTargetLegAngles-response)))
  "Returns md5sum for a message object of type 'GetTargetLegAngles-response"
  "0290c096db0f9662921c53f2603ee48a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTargetLegAngles-response>)))
  "Returns full string definition for message of type '<GetTargetLegAngles-response>"
  (cl:format cl:nil "Header stamp~%float64[6] target_angles~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTargetLegAngles-response)))
  "Returns full string definition for message of type 'GetTargetLegAngles-response"
  (cl:format cl:nil "Header stamp~%float64[6] target_angles~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTargetLegAngles-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stamp))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'target_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTargetLegAngles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTargetLegAngles-response
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':target_angles (target_angles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTargetLegAngles)))
  'GetTargetLegAngles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTargetLegAngles)))
  'GetTargetLegAngles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTargetLegAngles)))
  "Returns string type for a service object of type '<GetTargetLegAngles>"
  "aquacore/GetTargetLegAngles")