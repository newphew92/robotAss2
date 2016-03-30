; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude GetAutopilotParams-request.msg.html

(cl:defclass <GetAutopilotParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAutopilotParams-request (<GetAutopilotParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAutopilotParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAutopilotParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetAutopilotParams-request> is deprecated: use aquacore-srv:GetAutopilotParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAutopilotParams-request>) ostream)
  "Serializes a message object of type '<GetAutopilotParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAutopilotParams-request>) istream)
  "Deserializes a message object of type '<GetAutopilotParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAutopilotParams-request>)))
  "Returns string type for a service object of type '<GetAutopilotParams-request>"
  "aquacore/GetAutopilotParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAutopilotParams-request)))
  "Returns string type for a service object of type 'GetAutopilotParams-request"
  "aquacore/GetAutopilotParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAutopilotParams-request>)))
  "Returns md5sum for a message object of type '<GetAutopilotParams-request>"
  "8e22f8c3368a715022fd214d9775704d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAutopilotParams-request)))
  "Returns md5sum for a message object of type 'GetAutopilotParams-request"
  "8e22f8c3368a715022fd214d9775704d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAutopilotParams-request>)))
  "Returns full string definition for message of type '<GetAutopilotParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAutopilotParams-request)))
  "Returns full string definition for message of type 'GetAutopilotParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAutopilotParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAutopilotParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAutopilotParams-request
))
;//! \htmlinclude GetAutopilotParams-response.msg.html

(cl:defclass <GetAutopilotParams-response> (roslisp-msg-protocol:ros-message)
  ((params
    :reader params
    :initarg :params
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetAutopilotParams-response (<GetAutopilotParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAutopilotParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAutopilotParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<GetAutopilotParams-response> is deprecated: use aquacore-srv:GetAutopilotParams-response instead.")))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <GetAutopilotParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:params-val is deprecated.  Use aquacore-srv:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAutopilotParams-response>) ostream)
  "Serializes a message object of type '<GetAutopilotParams-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAutopilotParams-response>) istream)
  "Deserializes a message object of type '<GetAutopilotParams-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAutopilotParams-response>)))
  "Returns string type for a service object of type '<GetAutopilotParams-response>"
  "aquacore/GetAutopilotParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAutopilotParams-response)))
  "Returns string type for a service object of type 'GetAutopilotParams-response"
  "aquacore/GetAutopilotParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAutopilotParams-response>)))
  "Returns md5sum for a message object of type '<GetAutopilotParams-response>"
  "8e22f8c3368a715022fd214d9775704d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAutopilotParams-response)))
  "Returns md5sum for a message object of type 'GetAutopilotParams-response"
  "8e22f8c3368a715022fd214d9775704d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAutopilotParams-response>)))
  "Returns full string definition for message of type '<GetAutopilotParams-response>"
  (cl:format cl:nil "float32[] params~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAutopilotParams-response)))
  "Returns full string definition for message of type 'GetAutopilotParams-response"
  (cl:format cl:nil "float32[] params~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAutopilotParams-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAutopilotParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAutopilotParams-response
    (cl:cons ':params (params msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAutopilotParams)))
  'GetAutopilotParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAutopilotParams)))
  'GetAutopilotParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAutopilotParams)))
  "Returns string type for a service object of type '<GetAutopilotParams>"
  "aquacore/GetAutopilotParams")