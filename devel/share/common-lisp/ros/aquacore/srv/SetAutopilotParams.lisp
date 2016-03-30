; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetAutopilotParams-request.msg.html

(cl:defclass <SetAutopilotParams-request> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetAutopilotParams-request (<SetAutopilotParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAutopilotParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAutopilotParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetAutopilotParams-request> is deprecated: use aquacore-srv:SetAutopilotParams-request instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <SetAutopilotParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:values-val is deprecated.  Use aquacore-srv:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAutopilotParams-request>) ostream)
  "Serializes a message object of type '<SetAutopilotParams-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAutopilotParams-request>) istream)
  "Deserializes a message object of type '<SetAutopilotParams-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAutopilotParams-request>)))
  "Returns string type for a service object of type '<SetAutopilotParams-request>"
  "aquacore/SetAutopilotParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutopilotParams-request)))
  "Returns string type for a service object of type 'SetAutopilotParams-request"
  "aquacore/SetAutopilotParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAutopilotParams-request>)))
  "Returns md5sum for a message object of type '<SetAutopilotParams-request>"
  "e2c9c4a808bfa8ef83980bb0222137bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAutopilotParams-request)))
  "Returns md5sum for a message object of type 'SetAutopilotParams-request"
  "e2c9c4a808bfa8ef83980bb0222137bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAutopilotParams-request>)))
  "Returns full string definition for message of type '<SetAutopilotParams-request>"
  (cl:format cl:nil "float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAutopilotParams-request)))
  "Returns full string definition for message of type 'SetAutopilotParams-request"
  (cl:format cl:nil "float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAutopilotParams-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAutopilotParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAutopilotParams-request
    (cl:cons ':values (values msg))
))
;//! \htmlinclude SetAutopilotParams-response.msg.html

(cl:defclass <SetAutopilotParams-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetAutopilotParams-response (<SetAutopilotParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAutopilotParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAutopilotParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetAutopilotParams-response> is deprecated: use aquacore-srv:SetAutopilotParams-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAutopilotParams-response>) ostream)
  "Serializes a message object of type '<SetAutopilotParams-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAutopilotParams-response>) istream)
  "Deserializes a message object of type '<SetAutopilotParams-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAutopilotParams-response>)))
  "Returns string type for a service object of type '<SetAutopilotParams-response>"
  "aquacore/SetAutopilotParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutopilotParams-response)))
  "Returns string type for a service object of type 'SetAutopilotParams-response"
  "aquacore/SetAutopilotParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAutopilotParams-response>)))
  "Returns md5sum for a message object of type '<SetAutopilotParams-response>"
  "e2c9c4a808bfa8ef83980bb0222137bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAutopilotParams-response)))
  "Returns md5sum for a message object of type 'SetAutopilotParams-response"
  "e2c9c4a808bfa8ef83980bb0222137bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAutopilotParams-response>)))
  "Returns full string definition for message of type '<SetAutopilotParams-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAutopilotParams-response)))
  "Returns full string definition for message of type 'SetAutopilotParams-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAutopilotParams-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAutopilotParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAutopilotParams-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAutopilotParams)))
  'SetAutopilotParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAutopilotParams)))
  'SetAutopilotParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAutopilotParams)))
  "Returns string type for a service object of type '<SetAutopilotParams>"
  "aquacore/SetAutopilotParams")