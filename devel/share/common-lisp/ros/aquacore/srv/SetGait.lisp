; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude SetGait-request.msg.html

(cl:defclass <SetGait-request> (roslisp-msg-protocol:ros-message)
  ((gait
    :reader gait
    :initarg :gait
    :type cl:string
    :initform ""))
)

(cl:defclass SetGait-request (<SetGait-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGait-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGait-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetGait-request> is deprecated: use aquacore-srv:SetGait-request instead.")))

(cl:ensure-generic-function 'gait-val :lambda-list '(m))
(cl:defmethod gait-val ((m <SetGait-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:gait-val is deprecated.  Use aquacore-srv:gait instead.")
  (gait m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGait-request>) ostream)
  "Serializes a message object of type '<SetGait-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gait))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gait))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGait-request>) istream)
  "Deserializes a message object of type '<SetGait-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gait) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gait) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGait-request>)))
  "Returns string type for a service object of type '<SetGait-request>"
  "aquacore/SetGaitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGait-request)))
  "Returns string type for a service object of type 'SetGait-request"
  "aquacore/SetGaitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGait-request>)))
  "Returns md5sum for a message object of type '<SetGait-request>"
  "32777b381fb403c1a3470fd2f46597fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGait-request)))
  "Returns md5sum for a message object of type 'SetGait-request"
  "32777b381fb403c1a3470fd2f46597fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGait-request>)))
  "Returns full string definition for message of type '<SetGait-request>"
  (cl:format cl:nil "string gait~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGait-request)))
  "Returns full string definition for message of type 'SetGait-request"
  (cl:format cl:nil "string gait~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGait-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'gait))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGait-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGait-request
    (cl:cons ':gait (gait msg))
))
;//! \htmlinclude SetGait-response.msg.html

(cl:defclass <SetGait-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetGait-response (<SetGait-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGait-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGait-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<SetGait-response> is deprecated: use aquacore-srv:SetGait-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SetGait-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:response-val is deprecated.  Use aquacore-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGait-response>) ostream)
  "Serializes a message object of type '<SetGait-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGait-response>) istream)
  "Deserializes a message object of type '<SetGait-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGait-response>)))
  "Returns string type for a service object of type '<SetGait-response>"
  "aquacore/SetGaitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGait-response)))
  "Returns string type for a service object of type 'SetGait-response"
  "aquacore/SetGaitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGait-response>)))
  "Returns md5sum for a message object of type '<SetGait-response>"
  "32777b381fb403c1a3470fd2f46597fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGait-response)))
  "Returns md5sum for a message object of type 'SetGait-response"
  "32777b381fb403c1a3470fd2f46597fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGait-response>)))
  "Returns full string definition for message of type '<SetGait-response>"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGait-response)))
  "Returns full string definition for message of type 'SetGait-response"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGait-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGait-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGait-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGait)))
  'SetGait-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGait)))
  'SetGait-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGait)))
  "Returns string type for a service object of type '<SetGait>"
  "aquacore/SetGait")