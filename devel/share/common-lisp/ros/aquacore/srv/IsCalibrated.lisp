; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude IsCalibrated-request.msg.html

(cl:defclass <IsCalibrated-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass IsCalibrated-request (<IsCalibrated-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsCalibrated-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsCalibrated-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<IsCalibrated-request> is deprecated: use aquacore-srv:IsCalibrated-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsCalibrated-request>) ostream)
  "Serializes a message object of type '<IsCalibrated-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsCalibrated-request>) istream)
  "Deserializes a message object of type '<IsCalibrated-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsCalibrated-request>)))
  "Returns string type for a service object of type '<IsCalibrated-request>"
  "aquacore/IsCalibratedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsCalibrated-request)))
  "Returns string type for a service object of type 'IsCalibrated-request"
  "aquacore/IsCalibratedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsCalibrated-request>)))
  "Returns md5sum for a message object of type '<IsCalibrated-request>"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsCalibrated-request)))
  "Returns md5sum for a message object of type 'IsCalibrated-request"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsCalibrated-request>)))
  "Returns full string definition for message of type '<IsCalibrated-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsCalibrated-request)))
  "Returns full string definition for message of type 'IsCalibrated-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsCalibrated-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsCalibrated-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IsCalibrated-request
))
;//! \htmlinclude IsCalibrated-response.msg.html

(cl:defclass <IsCalibrated-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IsCalibrated-response (<IsCalibrated-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsCalibrated-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsCalibrated-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<IsCalibrated-response> is deprecated: use aquacore-srv:IsCalibrated-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <IsCalibrated-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:value-val is deprecated.  Use aquacore-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsCalibrated-response>) ostream)
  "Serializes a message object of type '<IsCalibrated-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsCalibrated-response>) istream)
  "Deserializes a message object of type '<IsCalibrated-response>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsCalibrated-response>)))
  "Returns string type for a service object of type '<IsCalibrated-response>"
  "aquacore/IsCalibratedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsCalibrated-response)))
  "Returns string type for a service object of type 'IsCalibrated-response"
  "aquacore/IsCalibratedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsCalibrated-response>)))
  "Returns md5sum for a message object of type '<IsCalibrated-response>"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsCalibrated-response)))
  "Returns md5sum for a message object of type 'IsCalibrated-response"
  "e431d687bf4b2c65fbd94b12ae0cb5d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsCalibrated-response>)))
  "Returns full string definition for message of type '<IsCalibrated-response>"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsCalibrated-response)))
  "Returns full string definition for message of type 'IsCalibrated-response"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsCalibrated-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsCalibrated-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IsCalibrated-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IsCalibrated)))
  'IsCalibrated-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IsCalibrated)))
  'IsCalibrated-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsCalibrated)))
  "Returns string type for a service object of type '<IsCalibrated>"
  "aquacore/IsCalibrated")