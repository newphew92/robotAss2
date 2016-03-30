; Auto-generated. Do not edit!


(cl:in-package aquacore-msg)


;//! \htmlinclude DoSurfaceTaskFeedback.msg.html

(cl:defclass <DoSurfaceTaskFeedback> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type cl:integer
    :initform 0)
   (percent_depth_change_completed
    :reader percent_depth_change_completed
    :initarg :percent_depth_change_completed
    :type cl:float
    :initform 0.0)
   (has_reached_constant_depth
    :reader has_reached_constant_depth
    :initarg :has_reached_constant_depth
    :type cl:boolean
    :initform cl:nil)
   (has_established_gps
    :reader has_established_gps
    :initarg :has_established_gps
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DoSurfaceTaskFeedback (<DoSurfaceTaskFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoSurfaceTaskFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoSurfaceTaskFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-msg:<DoSurfaceTaskFeedback> is deprecated: use aquacore-msg:DoSurfaceTaskFeedback instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <DoSurfaceTaskFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:task-val is deprecated.  Use aquacore-msg:task instead.")
  (task m))

(cl:ensure-generic-function 'percent_depth_change_completed-val :lambda-list '(m))
(cl:defmethod percent_depth_change_completed-val ((m <DoSurfaceTaskFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:percent_depth_change_completed-val is deprecated.  Use aquacore-msg:percent_depth_change_completed instead.")
  (percent_depth_change_completed m))

(cl:ensure-generic-function 'has_reached_constant_depth-val :lambda-list '(m))
(cl:defmethod has_reached_constant_depth-val ((m <DoSurfaceTaskFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:has_reached_constant_depth-val is deprecated.  Use aquacore-msg:has_reached_constant_depth instead.")
  (has_reached_constant_depth m))

(cl:ensure-generic-function 'has_established_gps-val :lambda-list '(m))
(cl:defmethod has_established_gps-val ((m <DoSurfaceTaskFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-msg:has_established_gps-val is deprecated.  Use aquacore-msg:has_established_gps instead.")
  (has_established_gps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoSurfaceTaskFeedback>) ostream)
  "Serializes a message object of type '<DoSurfaceTaskFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'percent_depth_change_completed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_reached_constant_depth) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_established_gps) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoSurfaceTaskFeedback>) istream)
  "Deserializes a message object of type '<DoSurfaceTaskFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent_depth_change_completed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'has_reached_constant_depth) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'has_established_gps) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoSurfaceTaskFeedback>)))
  "Returns string type for a message object of type '<DoSurfaceTaskFeedback>"
  "aquacore/DoSurfaceTaskFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoSurfaceTaskFeedback)))
  "Returns string type for a message object of type 'DoSurfaceTaskFeedback"
  "aquacore/DoSurfaceTaskFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoSurfaceTaskFeedback>)))
  "Returns md5sum for a message object of type '<DoSurfaceTaskFeedback>"
  "3fb53b8f9ad6654cf096432b41609bf3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoSurfaceTaskFeedback)))
  "Returns md5sum for a message object of type 'DoSurfaceTaskFeedback"
  "3fb53b8f9ad6654cf096432b41609bf3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoSurfaceTaskFeedback>)))
  "Returns full string definition for message of type '<DoSurfaceTaskFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Feedback~%byte task                                # see SurfaceTaskTypes.msg~%float64 percent_depth_change_completed~%bool has_reached_constant_depth~%bool has_established_gps~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoSurfaceTaskFeedback)))
  "Returns full string definition for message of type 'DoSurfaceTaskFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Feedback~%byte task                                # see SurfaceTaskTypes.msg~%float64 percent_depth_change_completed~%bool has_reached_constant_depth~%bool has_established_gps~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoSurfaceTaskFeedback>))
  (cl:+ 0
     1
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoSurfaceTaskFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'DoSurfaceTaskFeedback
    (cl:cons ':task (task msg))
    (cl:cons ':percent_depth_change_completed (percent_depth_change_completed msg))
    (cl:cons ':has_reached_constant_depth (has_reached_constant_depth msg))
    (cl:cons ':has_established_gps (has_established_gps msg))
))
