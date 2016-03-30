; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude Menu-request.msg.html

(cl:defclass <Menu-request> (roslisp-msg-protocol:ros-message)
  ((title
    :reader title
    :initarg :title
    :type cl:string
    :initform "")
   (opts
    :reader opts
    :initarg :opts
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:integer
    :initform 0)
   (default_choice
    :reader default_choice
    :initarg :default_choice
    :type cl:integer
    :initform 0))
)

(cl:defclass Menu-request (<Menu-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Menu-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Menu-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<Menu-request> is deprecated: use aquacore-srv:Menu-request instead.")))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <Menu-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:title-val is deprecated.  Use aquacore-srv:title instead.")
  (title m))

(cl:ensure-generic-function 'opts-val :lambda-list '(m))
(cl:defmethod opts-val ((m <Menu-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:opts-val is deprecated.  Use aquacore-srv:opts instead.")
  (opts m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <Menu-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:timeout-val is deprecated.  Use aquacore-srv:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'default_choice-val :lambda-list '(m))
(cl:defmethod default_choice-val ((m <Menu-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:default_choice-val is deprecated.  Use aquacore-srv:default_choice instead.")
  (default_choice m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Menu-request>) ostream)
  "Serializes a message object of type '<Menu-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'opts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'opts))
  (cl:let* ((signed (cl:slot-value msg 'timeout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'default_choice)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Menu-request>) istream)
  "Deserializes a message object of type '<Menu-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'opts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'opts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'default_choice) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Menu-request>)))
  "Returns string type for a service object of type '<Menu-request>"
  "aquacore/MenuRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Menu-request)))
  "Returns string type for a service object of type 'Menu-request"
  "aquacore/MenuRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Menu-request>)))
  "Returns md5sum for a message object of type '<Menu-request>"
  "b6c70a1e971f94500062019a89d5686d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Menu-request)))
  "Returns md5sum for a message object of type 'Menu-request"
  "b6c70a1e971f94500062019a89d5686d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Menu-request>)))
  "Returns full string definition for message of type '<Menu-request>"
  (cl:format cl:nil "~%string title~%~%string[] opts~%~%int32 timeout~%~%int32 default_choice~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Menu-request)))
  "Returns full string definition for message of type 'Menu-request"
  (cl:format cl:nil "~%string title~%~%string[] opts~%~%int32 timeout~%~%int32 default_choice~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Menu-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'title))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'opts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Menu-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Menu-request
    (cl:cons ':title (title msg))
    (cl:cons ':opts (opts msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':default_choice (default_choice msg))
))
;//! \htmlinclude Menu-response.msg.html

(cl:defclass <Menu-response> (roslisp-msg-protocol:ros-message)
  ((selection
    :reader selection
    :initarg :selection
    :type cl:integer
    :initform 0))
)

(cl:defclass Menu-response (<Menu-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Menu-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Menu-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<Menu-response> is deprecated: use aquacore-srv:Menu-response instead.")))

(cl:ensure-generic-function 'selection-val :lambda-list '(m))
(cl:defmethod selection-val ((m <Menu-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:selection-val is deprecated.  Use aquacore-srv:selection instead.")
  (selection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Menu-response>) ostream)
  "Serializes a message object of type '<Menu-response>"
  (cl:let* ((signed (cl:slot-value msg 'selection)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Menu-response>) istream)
  "Deserializes a message object of type '<Menu-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'selection) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Menu-response>)))
  "Returns string type for a service object of type '<Menu-response>"
  "aquacore/MenuResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Menu-response)))
  "Returns string type for a service object of type 'Menu-response"
  "aquacore/MenuResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Menu-response>)))
  "Returns md5sum for a message object of type '<Menu-response>"
  "b6c70a1e971f94500062019a89d5686d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Menu-response)))
  "Returns md5sum for a message object of type 'Menu-response"
  "b6c70a1e971f94500062019a89d5686d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Menu-response>)))
  "Returns full string definition for message of type '<Menu-response>"
  (cl:format cl:nil "int32 selection~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Menu-response)))
  "Returns full string definition for message of type 'Menu-response"
  (cl:format cl:nil "int32 selection~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Menu-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Menu-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Menu-response
    (cl:cons ':selection (selection msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Menu)))
  'Menu-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Menu)))
  'Menu-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Menu)))
  "Returns string type for a service object of type '<Menu>"
  "aquacore/Menu")