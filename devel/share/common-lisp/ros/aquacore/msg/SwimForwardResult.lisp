; Auto-generated. Do not edit!


(cl:in-package aquacore-msg)


;//! \htmlinclude SwimForwardResult.msg.html

(cl:defclass <SwimForwardResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SwimForwardResult (<SwimForwardResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwimForwardResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwimForwardResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-msg:<SwimForwardResult> is deprecated: use aquacore-msg:SwimForwardResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwimForwardResult>) ostream)
  "Serializes a message object of type '<SwimForwardResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwimForwardResult>) istream)
  "Deserializes a message object of type '<SwimForwardResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwimForwardResult>)))
  "Returns string type for a message object of type '<SwimForwardResult>"
  "aquacore/SwimForwardResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwimForwardResult)))
  "Returns string type for a message object of type 'SwimForwardResult"
  "aquacore/SwimForwardResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwimForwardResult>)))
  "Returns md5sum for a message object of type '<SwimForwardResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwimForwardResult)))
  "Returns md5sum for a message object of type 'SwimForwardResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwimForwardResult>)))
  "Returns full string definition for message of type '<SwimForwardResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwimForwardResult)))
  "Returns full string definition for message of type 'SwimForwardResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwimForwardResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwimForwardResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SwimForwardResult
))