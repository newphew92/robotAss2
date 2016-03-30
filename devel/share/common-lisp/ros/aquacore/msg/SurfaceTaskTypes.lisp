; Auto-generated. Do not edit!


(cl:in-package aquacore-msg)


;//! \htmlinclude SurfaceTaskTypes.msg.html

(cl:defclass <SurfaceTaskTypes> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SurfaceTaskTypes (<SurfaceTaskTypes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SurfaceTaskTypes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SurfaceTaskTypes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-msg:<SurfaceTaskTypes> is deprecated: use aquacore-msg:SurfaceTaskTypes instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SurfaceTaskTypes>)))
    "Constants for message type '<SurfaceTaskTypes>"
  '((:SURFACE . 0)
    (:WAIT_FOR_GPS_FIX . 1)
    (:STAY_ON_SURFACE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SurfaceTaskTypes)))
    "Constants for message type 'SurfaceTaskTypes"
  '((:SURFACE . 0)
    (:WAIT_FOR_GPS_FIX . 1)
    (:STAY_ON_SURFACE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SurfaceTaskTypes>) ostream)
  "Serializes a message object of type '<SurfaceTaskTypes>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SurfaceTaskTypes>) istream)
  "Deserializes a message object of type '<SurfaceTaskTypes>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SurfaceTaskTypes>)))
  "Returns string type for a message object of type '<SurfaceTaskTypes>"
  "aquacore/SurfaceTaskTypes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SurfaceTaskTypes)))
  "Returns string type for a message object of type 'SurfaceTaskTypes"
  "aquacore/SurfaceTaskTypes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SurfaceTaskTypes>)))
  "Returns md5sum for a message object of type '<SurfaceTaskTypes>"
  "d902353c3ce8457f71121f1a0c1f3a87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SurfaceTaskTypes)))
  "Returns md5sum for a message object of type 'SurfaceTaskTypes"
  "d902353c3ce8457f71121f1a0c1f3a87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SurfaceTaskTypes>)))
  "Returns full string definition for message of type '<SurfaceTaskTypes>"
  (cl:format cl:nil "# See DoSurfaceTask.action/Goal/task~%byte SURFACE = 0~%byte WAIT_FOR_GPS_FIX = 1~%byte STAY_ON_SURFACE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SurfaceTaskTypes)))
  "Returns full string definition for message of type 'SurfaceTaskTypes"
  (cl:format cl:nil "# See DoSurfaceTask.action/Goal/task~%byte SURFACE = 0~%byte WAIT_FOR_GPS_FIX = 1~%byte STAY_ON_SURFACE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SurfaceTaskTypes>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SurfaceTaskTypes>))
  "Converts a ROS message object to a list"
  (cl:list 'SurfaceTaskTypes
))
