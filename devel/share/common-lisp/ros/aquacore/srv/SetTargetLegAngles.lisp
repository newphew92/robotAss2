; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetTargetLegAngles-request.msg.html

(cl:defclass <SetTargetLegAngles-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (target_angles
    :reader target_angles
    :initarg :target_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetTargetLegAngles-request (<SetTargetLegAngles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTargetLegAngles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTargetLegAngles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetTargetLegAngles-request> is deprecated: use aquacore-srv:SetTargetLegAngles-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SetTargetLegAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:header-val is deprecated.  Use aquacore-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'target_angles-val :lambda-list '(m))
(cl:defmethod target_angles-val ((m <SetTargetLegAngles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:target_angles-val is deprecated.  Use aquacore-srv:target_angles instead.")
  (target_angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTargetLegAngles-request>) ostream)
  "Serializes a message object of type '<SetTargetLegAngles-request>"
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
   (cl:slot-value msg 'target_angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTargetLegAngles-request>) istream)
  "Deserializes a message object of type '<SetTargetLegAngles-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTargetLegAngles-request>)))
  "Returns string type for a service object of type '<SetTargetLegAngles-request>"
  "aquacore/SetTargetLegAnglesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetLegAngles-request)))
  "Returns string type for a service object of type 'SetTargetLegAngles-request"
  "aquacore/SetTargetLegAnglesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTargetLegAngles-request>)))
  "Returns md5sum for a message object of type '<SetTargetLegAngles-request>"
  "713c56434b15577b0cfe5670a7e5dd0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTargetLegAngles-request)))
  "Returns md5sum for a message object of type 'SetTargetLegAngles-request"
  "713c56434b15577b0cfe5670a7e5dd0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTargetLegAngles-request>)))
  "Returns full string definition for message of type '<SetTargetLegAngles-request>"
  (cl:format cl:nil "Header header~%float64[6] target_angles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTargetLegAngles-request)))
  "Returns full string definition for message of type 'SetTargetLegAngles-request"
  (cl:format cl:nil "Header header~%float64[6] target_angles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTargetLegAngles-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'target_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTargetLegAngles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTargetLegAngles-request
    (cl:cons ':header (header msg))
    (cl:cons ':target_angles (target_angles msg))
))
;//! \htmlinclude SetTargetLegAngles-response.msg.html

(cl:defclass <SetTargetLegAngles-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetTargetLegAngles-response (<SetTargetLegAngles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTargetLegAngles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTargetLegAngles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetTargetLegAngles-response> is deprecated: use aquacore-srv:SetTargetLegAngles-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTargetLegAngles-response>) ostream)
  "Serializes a message object of type '<SetTargetLegAngles-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTargetLegAngles-response>) istream)
  "Deserializes a message object of type '<SetTargetLegAngles-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTargetLegAngles-response>)))
  "Returns string type for a service object of type '<SetTargetLegAngles-response>"
  "aquacore/SetTargetLegAnglesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetLegAngles-response)))
  "Returns string type for a service object of type 'SetTargetLegAngles-response"
  "aquacore/SetTargetLegAnglesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTargetLegAngles-response>)))
  "Returns md5sum for a message object of type '<SetTargetLegAngles-response>"
  "713c56434b15577b0cfe5670a7e5dd0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTargetLegAngles-response)))
  "Returns md5sum for a message object of type 'SetTargetLegAngles-response"
  "713c56434b15577b0cfe5670a7e5dd0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTargetLegAngles-response>)))
  "Returns full string definition for message of type '<SetTargetLegAngles-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTargetLegAngles-response)))
  "Returns full string definition for message of type 'SetTargetLegAngles-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTargetLegAngles-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTargetLegAngles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTargetLegAngles-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTargetLegAngles)))
  'SetTargetLegAngles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTargetLegAngles)))
  'SetTargetLegAngles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetLegAngles)))
  "Returns string type for a service object of type '<SetTargetLegAngles>"
  "aquacore/SetTargetLegAngles")