; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetTargetDepth-request.msg.html

(cl:defclass <SetTargetDepth-request> (roslisp-msg-protocol:ros-message)
  ((depth
    :reader depth
    :initarg :depth
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetTargetDepth-request (<SetTargetDepth-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTargetDepth-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTargetDepth-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetTargetDepth-request> is deprecated: use aquacore-srv:SetTargetDepth-request instead.")))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <SetTargetDepth-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:depth-val is deprecated.  Use aquacore-srv:depth instead.")
  (depth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTargetDepth-request>) ostream)
  "Serializes a message object of type '<SetTargetDepth-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTargetDepth-request>) istream)
  "Deserializes a message object of type '<SetTargetDepth-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTargetDepth-request>)))
  "Returns string type for a service object of type '<SetTargetDepth-request>"
  "aquacore/SetTargetDepthRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetDepth-request)))
  "Returns string type for a service object of type 'SetTargetDepth-request"
  "aquacore/SetTargetDepthRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTargetDepth-request>)))
  "Returns md5sum for a message object of type '<SetTargetDepth-request>"
  "0c5e51c957e48bd29e418e983a93b9a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTargetDepth-request)))
  "Returns md5sum for a message object of type 'SetTargetDepth-request"
  "0c5e51c957e48bd29e418e983a93b9a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTargetDepth-request>)))
  "Returns full string definition for message of type '<SetTargetDepth-request>"
  (cl:format cl:nil "float32 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTargetDepth-request)))
  "Returns full string definition for message of type 'SetTargetDepth-request"
  (cl:format cl:nil "float32 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTargetDepth-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTargetDepth-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTargetDepth-request
    (cl:cons ':depth (depth msg))
))
;//! \htmlinclude SetTargetDepth-response.msg.html

(cl:defclass <SetTargetDepth-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetTargetDepth-response (<SetTargetDepth-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTargetDepth-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTargetDepth-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetTargetDepth-response> is deprecated: use aquacore-srv:SetTargetDepth-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetTargetDepth-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:response-val is deprecated.  Use aquacore-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTargetDepth-response>) ostream)
  "Serializes a message object of type '<SetTargetDepth-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTargetDepth-response>) istream)
  "Deserializes a message object of type '<SetTargetDepth-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTargetDepth-response>)))
  "Returns string type for a service object of type '<SetTargetDepth-response>"
  "aquacore/SetTargetDepthResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetDepth-response)))
  "Returns string type for a service object of type 'SetTargetDepth-response"
  "aquacore/SetTargetDepthResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTargetDepth-response>)))
  "Returns md5sum for a message object of type '<SetTargetDepth-response>"
  "0c5e51c957e48bd29e418e983a93b9a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTargetDepth-response)))
  "Returns md5sum for a message object of type 'SetTargetDepth-response"
  "0c5e51c957e48bd29e418e983a93b9a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTargetDepth-response>)))
  "Returns full string definition for message of type '<SetTargetDepth-response>"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTargetDepth-response)))
  "Returns full string definition for message of type 'SetTargetDepth-response"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTargetDepth-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTargetDepth-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTargetDepth-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTargetDepth)))
  'SetTargetDepth-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTargetDepth)))
  'SetTargetDepth-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetDepth)))
  "Returns string type for a service object of type '<SetTargetDepth>"
  "aquacore/SetTargetDepth")