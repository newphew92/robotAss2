; Auto-generated. Do not edit!


(cl:in-package aquajoy-srv)


;//! \htmlinclude UpdateAquaTeleopJoyParams-request.msg.html

(cl:defclass <UpdateAquaTeleopJoyParams-request> (roslisp-msg-protocol:ros-message)
  ((new_params
    :reader new_params
    :initarg :new_params
    :type aquajoy-msg:AquaTeleopJoyParams
    :initform (cl:make-instance 'aquajoy-msg:AquaTeleopJoyParams)))
)

(cl:defclass UpdateAquaTeleopJoyParams-request (<UpdateAquaTeleopJoyParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateAquaTeleopJoyParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateAquaTeleopJoyParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquajoy-srv:<UpdateAquaTeleopJoyParams-request> is deprecated: use aquajoy-srv:UpdateAquaTeleopJoyParams-request instead.")))

(cl:ensure-generic-function 'new_params-val :lambda-list '(m))
(cl:defmethod new_params-val ((m <UpdateAquaTeleopJoyParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquajoy-srv:new_params-val is deprecated.  Use aquajoy-srv:new_params instead.")
  (new_params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateAquaTeleopJoyParams-request>) ostream)
  "Serializes a message object of type '<UpdateAquaTeleopJoyParams-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'new_params) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateAquaTeleopJoyParams-request>) istream)
  "Deserializes a message object of type '<UpdateAquaTeleopJoyParams-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'new_params) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateAquaTeleopJoyParams-request>)))
  "Returns string type for a service object of type '<UpdateAquaTeleopJoyParams-request>"
  "aquajoy/UpdateAquaTeleopJoyParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateAquaTeleopJoyParams-request)))
  "Returns string type for a service object of type 'UpdateAquaTeleopJoyParams-request"
  "aquajoy/UpdateAquaTeleopJoyParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateAquaTeleopJoyParams-request>)))
  "Returns md5sum for a message object of type '<UpdateAquaTeleopJoyParams-request>"
  "1e83859aeb42bc42c7f92e0fd76391e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateAquaTeleopJoyParams-request)))
  "Returns md5sum for a message object of type 'UpdateAquaTeleopJoyParams-request"
  "1e83859aeb42bc42c7f92e0fd76391e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateAquaTeleopJoyParams-request>)))
  "Returns full string definition for message of type '<UpdateAquaTeleopJoyParams-request>"
  (cl:format cl:nil "aquajoy/AquaTeleopJoyParams new_params~%~%================================================================================~%MSG: aquajoy/AquaTeleopJoyParams~%# Range: [0, 1]~%float64 joy_axis_deadzone~%  ~%# Range: [0, 1]~%float64 max_speed_cmd~%float64 max_heave_cmd~%float64 max_roll_cmd~%float64 max_pitch_cmd~%float64 max_yaw_cmd~%  ~%# Recommended range: [0, 180] (degrees)~%float64 max_roll_pos~%float64 max_pitch_pos~%float64 max_yaw_pos~%~%# Recommended range: [-2, 1] (m)~%float64 min_depth~%~%# Recommended range: [0, 100] (m)~%float64 max_depth~%~%# Use fixed initial depth (m) upon entering depth-related modes [if < 0, then initial depth is current robot depth]~%float64 default_fixed_depth~%  ~%# Recommended range: [0, 180] (deg/s)~%float64 max_roll_vel~%float64 max_pitch_vel~%float64 max_yaw_vel~%  ~%# Recommended range: [0, 1] (m/s)~%float64 max_depth_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateAquaTeleopJoyParams-request)))
  "Returns full string definition for message of type 'UpdateAquaTeleopJoyParams-request"
  (cl:format cl:nil "aquajoy/AquaTeleopJoyParams new_params~%~%================================================================================~%MSG: aquajoy/AquaTeleopJoyParams~%# Range: [0, 1]~%float64 joy_axis_deadzone~%  ~%# Range: [0, 1]~%float64 max_speed_cmd~%float64 max_heave_cmd~%float64 max_roll_cmd~%float64 max_pitch_cmd~%float64 max_yaw_cmd~%  ~%# Recommended range: [0, 180] (degrees)~%float64 max_roll_pos~%float64 max_pitch_pos~%float64 max_yaw_pos~%~%# Recommended range: [-2, 1] (m)~%float64 min_depth~%~%# Recommended range: [0, 100] (m)~%float64 max_depth~%~%# Use fixed initial depth (m) upon entering depth-related modes [if < 0, then initial depth is current robot depth]~%float64 default_fixed_depth~%  ~%# Recommended range: [0, 180] (deg/s)~%float64 max_roll_vel~%float64 max_pitch_vel~%float64 max_yaw_vel~%  ~%# Recommended range: [0, 1] (m/s)~%float64 max_depth_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateAquaTeleopJoyParams-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'new_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateAquaTeleopJoyParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateAquaTeleopJoyParams-request
    (cl:cons ':new_params (new_params msg))
))
;//! \htmlinclude UpdateAquaTeleopJoyParams-response.msg.html

(cl:defclass <UpdateAquaTeleopJoyParams-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UpdateAquaTeleopJoyParams-response (<UpdateAquaTeleopJoyParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateAquaTeleopJoyParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateAquaTeleopJoyParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquajoy-srv:<UpdateAquaTeleopJoyParams-response> is deprecated: use aquajoy-srv:UpdateAquaTeleopJoyParams-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateAquaTeleopJoyParams-response>) ostream)
  "Serializes a message object of type '<UpdateAquaTeleopJoyParams-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateAquaTeleopJoyParams-response>) istream)
  "Deserializes a message object of type '<UpdateAquaTeleopJoyParams-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateAquaTeleopJoyParams-response>)))
  "Returns string type for a service object of type '<UpdateAquaTeleopJoyParams-response>"
  "aquajoy/UpdateAquaTeleopJoyParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateAquaTeleopJoyParams-response)))
  "Returns string type for a service object of type 'UpdateAquaTeleopJoyParams-response"
  "aquajoy/UpdateAquaTeleopJoyParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateAquaTeleopJoyParams-response>)))
  "Returns md5sum for a message object of type '<UpdateAquaTeleopJoyParams-response>"
  "1e83859aeb42bc42c7f92e0fd76391e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateAquaTeleopJoyParams-response)))
  "Returns md5sum for a message object of type 'UpdateAquaTeleopJoyParams-response"
  "1e83859aeb42bc42c7f92e0fd76391e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateAquaTeleopJoyParams-response>)))
  "Returns full string definition for message of type '<UpdateAquaTeleopJoyParams-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateAquaTeleopJoyParams-response)))
  "Returns full string definition for message of type 'UpdateAquaTeleopJoyParams-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateAquaTeleopJoyParams-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateAquaTeleopJoyParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateAquaTeleopJoyParams-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateAquaTeleopJoyParams)))
  'UpdateAquaTeleopJoyParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateAquaTeleopJoyParams)))
  'UpdateAquaTeleopJoyParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateAquaTeleopJoyParams)))
  "Returns string type for a service object of type '<UpdateAquaTeleopJoyParams>"
  "aquajoy/UpdateAquaTeleopJoyParams")