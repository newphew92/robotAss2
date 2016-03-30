; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude GetState-request.msg.html

(cl:defclass <GetState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetState-request (<GetState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetState-request> is deprecated: use aquacore-srv:GetState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetState-request>) ostream)
  "Serializes a message object of type '<GetState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetState-request>) istream)
  "Deserializes a message object of type '<GetState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetState-request>)))
  "Returns string type for a service object of type '<GetState-request>"
  "aquacore/GetStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetState-request)))
  "Returns string type for a service object of type 'GetState-request"
  "aquacore/GetStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetState-request>)))
  "Returns md5sum for a message object of type '<GetState-request>"
  "b10746058f74e27d394c87fb5e4dc82b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetState-request)))
  "Returns md5sum for a message object of type 'GetState-request"
  "b10746058f74e27d394c87fb5e4dc82b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetState-request>)))
  "Returns full string definition for message of type '<GetState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetState-request)))
  "Returns full string definition for message of type 'GetState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetState-request
))
;//! \htmlinclude GetState-response.msg.html

(cl:defclass <GetState-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type aquacore-msg:StateMsg
    :initform (cl:make-instance 'aquacore-msg:StateMsg)))
)

(cl:defclass GetState-response (<GetState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetState-response> is deprecated: use aquacore-srv:GetState-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:state-val is deprecated.  Use aquacore-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetState-response>) ostream)
  "Serializes a message object of type '<GetState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetState-response>) istream)
  "Deserializes a message object of type '<GetState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetState-response>)))
  "Returns string type for a service object of type '<GetState-response>"
  "aquacore/GetStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetState-response)))
  "Returns string type for a service object of type 'GetState-response"
  "aquacore/GetStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetState-response>)))
  "Returns md5sum for a message object of type '<GetState-response>"
  "b10746058f74e27d394c87fb5e4dc82b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetState-response)))
  "Returns md5sum for a message object of type 'GetState-response"
  "b10746058f74e27d394c87fb5e4dc82b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetState-response>)))
  "Returns full string definition for message of type '<GetState-response>"
  (cl:format cl:nil "StateMsg state~%~%~%================================================================================~%MSG: aquacore/StateMsg~%Header header~%int32 LED~%int32 Gait~%~%float32 RollAngle~%float32 PitchAngle~%float32 YawAngle~%~%float32 RollTargetAngle~%float32 PitchTargetAngle~%float32 YawTargetAngle~%float32 DepthTarget~%~%float32 AvgRollCommand~%float32 AvgPitchCommand~%float32 AvgYawCommand~%float32 AvgHeaveCommand~%float32 AvgSurgeCommand~%~%int32 AutopilotMode~%float32 Depth~%float32 Speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetState-response)))
  "Returns full string definition for message of type 'GetState-response"
  (cl:format cl:nil "StateMsg state~%~%~%================================================================================~%MSG: aquacore/StateMsg~%Header header~%int32 LED~%int32 Gait~%~%float32 RollAngle~%float32 PitchAngle~%float32 YawAngle~%~%float32 RollTargetAngle~%float32 PitchTargetAngle~%float32 YawTargetAngle~%float32 DepthTarget~%~%float32 AvgRollCommand~%float32 AvgPitchCommand~%float32 AvgYawCommand~%float32 AvgHeaveCommand~%float32 AvgSurgeCommand~%~%int32 AutopilotMode~%float32 Depth~%float32 Speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetState-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetState)))
  'GetState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetState)))
  'GetState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetState)))
  "Returns string type for a service object of type '<GetState>"
  "aquacore/GetState")