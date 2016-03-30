; Auto-generated. Do not edit!


(cl:in-package aquacore-msg)


;//! \htmlinclude AutopilotModes.msg.html

(cl:defclass <AutopilotModes> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AutopilotModes (<AutopilotModes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutopilotModes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutopilotModes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-msg:<AutopilotModes> is deprecated: use aquacore-msg:AutopilotModes instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutopilotModes>)))
    "Constants for message type '<AutopilotModes>"
  '((:OFF . 0)
    (:ANGLES . 2)
    (:DEPTH . 4)
    (:AP_OFF . 0)
    (:AP_GLOBAL_ANGLES_LOCAL_THRUST . 2)
    (:AP_GLOBAL_ANGLES_FIXED_DEPTH . 4)
    (:AP_FIRST_INVALID_AP_MODE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutopilotModes)))
    "Constants for message type 'AutopilotModes"
  '((:OFF . 0)
    (:ANGLES . 2)
    (:DEPTH . 4)
    (:AP_OFF . 0)
    (:AP_GLOBAL_ANGLES_LOCAL_THRUST . 2)
    (:AP_GLOBAL_ANGLES_FIXED_DEPTH . 4)
    (:AP_FIRST_INVALID_AP_MODE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutopilotModes>) ostream)
  "Serializes a message object of type '<AutopilotModes>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutopilotModes>) istream)
  "Deserializes a message object of type '<AutopilotModes>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutopilotModes>)))
  "Returns string type for a message object of type '<AutopilotModes>"
  "aquacore/AutopilotModes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutopilotModes)))
  "Returns string type for a message object of type 'AutopilotModes"
  "aquacore/AutopilotModes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutopilotModes>)))
  "Returns md5sum for a message object of type '<AutopilotModes>"
  "aaf40c41586272cf417462aa78a8b3a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutopilotModes)))
  "Returns md5sum for a message object of type 'AutopilotModes"
  "aaf40c41586272cf417462aa78a8b3a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutopilotModes>)))
  "Returns full string definition for message of type '<AutopilotModes>"
  (cl:format cl:nil "int32 OFF = 0~%int32 ANGLES = 2~%int32 DEPTH = 4 # depth-regulated AP includes angle-regulation as well~%~%# The following are for 3D autopilot (see aquaautopilot ROS package)~%int32 AP_OFF = 0~%int32 AP_GLOBAL_ANGLES_LOCAL_THRUST = 2~%int32 AP_GLOBAL_ANGLES_FIXED_DEPTH = 4~%int32 AP_FIRST_INVALID_AP_MODE = 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutopilotModes)))
  "Returns full string definition for message of type 'AutopilotModes"
  (cl:format cl:nil "int32 OFF = 0~%int32 ANGLES = 2~%int32 DEPTH = 4 # depth-regulated AP includes angle-regulation as well~%~%# The following are for 3D autopilot (see aquaautopilot ROS package)~%int32 AP_OFF = 0~%int32 AP_GLOBAL_ANGLES_LOCAL_THRUST = 2~%int32 AP_GLOBAL_ANGLES_FIXED_DEPTH = 4~%int32 AP_FIRST_INVALID_AP_MODE = 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutopilotModes>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutopilotModes>))
  "Converts a ROS message object to a list"
  (cl:list 'AutopilotModes
))
