; Auto-generated. Do not edit!


(cl:in-package aquacore-srv)


;//! \htmlinclude DumpAllVars-request.msg.html

(cl:defclass <DumpAllVars-request> (roslisp-msg-protocol:ros-message)
  ((current
    :reader current
    :initarg :current
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DumpAllVars-request (<DumpAllVars-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DumpAllVars-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DumpAllVars-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<DumpAllVars-request> is deprecated: use aquacore-srv:DumpAllVars-request instead.")))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <DumpAllVars-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:current-val is deprecated.  Use aquacore-srv:current instead.")
  (current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DumpAllVars-request>) ostream)
  "Serializes a message object of type '<DumpAllVars-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'current) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DumpAllVars-request>) istream)
  "Deserializes a message object of type '<DumpAllVars-request>"
    (cl:setf (cl:slot-value msg 'current) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DumpAllVars-request>)))
  "Returns string type for a service object of type '<DumpAllVars-request>"
  "aquacore/DumpAllVarsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DumpAllVars-request)))
  "Returns string type for a service object of type 'DumpAllVars-request"
  "aquacore/DumpAllVarsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DumpAllVars-request>)))
  "Returns md5sum for a message object of type '<DumpAllVars-request>"
  "0a763daf42d6252113b71c689c9e864f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DumpAllVars-request)))
  "Returns md5sum for a message object of type 'DumpAllVars-request"
  "0a763daf42d6252113b71c689c9e864f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DumpAllVars-request>)))
  "Returns full string definition for message of type '<DumpAllVars-request>"
  (cl:format cl:nil "bool current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DumpAllVars-request)))
  "Returns full string definition for message of type 'DumpAllVars-request"
  (cl:format cl:nil "bool current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DumpAllVars-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DumpAllVars-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DumpAllVars-request
    (cl:cons ':current (current msg))
))
;//! \htmlinclude DumpAllVars-response.msg.html

(cl:defclass <DumpAllVars-response> (roslisp-msg-protocol:ros-message)
  ((foreaft
    :reader foreaft
    :initarg :foreaft
    :type cl:float
    :initform 0.0)
   (leftright
    :reader leftright
    :initarg :leftright
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (heave
    :reader heave
    :initarg :heave
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (visYawCmd
    :reader visYawCmd
    :initarg :visYawCmd
    :type cl:float
    :initform 0.0)
   (visPitchCmd
    :reader visPitchCmd
    :initarg :visPitchCmd
    :type cl:float
    :initform 0.0)
   (visSpeedCmd
    :reader visSpeedCmd
    :initarg :visSpeedCmd
    :type cl:float
    :initform 0.0)
   (isSpeedValid
    :reader isSpeedValid
    :initarg :isSpeedValid
    :type cl:boolean
    :initform cl:nil)
   (gaitID
    :reader gaitID
    :initarg :gaitID
    :type cl:integer
    :initform 0)
   (commandWord
    :reader commandWord
    :initarg :commandWord
    :type cl:integer
    :initform 0)
   (PitchTrim
    :reader PitchTrim
    :initarg :PitchTrim
    :type cl:float
    :initform 0.0)
   (RollTrim
    :reader RollTrim
    :initarg :RollTrim
    :type cl:float
    :initform 0.0)
   (YawTrim
    :reader YawTrim
    :initarg :YawTrim
    :type cl:float
    :initform 0.0)
   (YawGyroDrift
    :reader YawGyroDrift
    :initarg :YawGyroDrift
    :type cl:float
    :initform 0.0)
   (gaitselect
    :reader gaitselect
    :initarg :gaitselect
    :type cl:integer
    :initform 0)
   (enableIntegration
    :reader enableIntegration
    :initarg :enableIntegration
    :type cl:integer
    :initform 0)
   (visEnable
    :reader visEnable
    :initarg :visEnable
    :type cl:integer
    :initform 0)
   (setLEDs
    :reader setLEDs
    :initarg :setLEDs
    :type cl:integer
    :initform 0)
   (AutopilotSelect
    :reader AutopilotSelect
    :initarg :AutopilotSelect
    :type cl:integer
    :initform 0)
   (AutopilotMode
    :reader AutopilotMode
    :initarg :AutopilotMode
    :type cl:integer
    :initform 0)
   (update
    :reader update
    :initarg :update
    :type cl:integer
    :initform 0)
   (modePause
    :reader modePause
    :initarg :modePause
    :type cl:integer
    :initform 0)
   (zeroDepth
    :reader zeroDepth
    :initarg :zeroDepth
    :type cl:integer
    :initform 0)
   (SetGyro
    :reader SetGyro
    :initarg :SetGyro
    :type cl:integer
    :initform 0)
   (SetGyroValue
    :reader SetGyroValue
    :initarg :SetGyroValue
    :type cl:float
    :initform 0.0)
   (period
    :reader period
    :initarg :period
    :type cl:float
    :initform 0.0)
   (oscRatio
    :reader oscRatio
    :initarg :oscRatio
    :type cl:float
    :initform 0.0)
   (amplitude
    :reader amplitude
    :initarg :amplitude
    :type cl:float
    :initform 0.0)
   (iir
    :reader iir
    :initarg :iir
    :type cl:float
    :initform 0.0)
   (visYawGain
    :reader visYawGain
    :initarg :visYawGain
    :type cl:float
    :initform 0.0)
   (visPitchGain
    :reader visPitchGain
    :initarg :visPitchGain
    :type cl:float
    :initform 0.0)
   (visSpeedGain
    :reader visSpeedGain
    :initarg :visSpeedGain
    :type cl:float
    :initform 0.0)
   (actuatorOffset
    :reader actuatorOffset
    :initarg :actuatorOffset
    :type cl:float
    :initform 0.0)
   (GuiTargetDepth
    :reader GuiTargetDepth
    :initarg :GuiTargetDepth
    :type cl:float
    :initform 0.0)
   (ApTargetRollCmd
    :reader ApTargetRollCmd
    :initarg :ApTargetRollCmd
    :type cl:float
    :initform 0.0)
   (ApTargetPitchCmd
    :reader ApTargetPitchCmd
    :initarg :ApTargetPitchCmd
    :type cl:float
    :initform 0.0)
   (ApTargetYawCmd
    :reader ApTargetYawCmd
    :initarg :ApTargetYawCmd
    :type cl:float
    :initform 0.0)
   (GuiParam0
    :reader GuiParam0
    :initarg :GuiParam0
    :type cl:float
    :initform 0.0)
   (GuiParam1
    :reader GuiParam1
    :initarg :GuiParam1
    :type cl:float
    :initform 0.0)
   (GuiParam2
    :reader GuiParam2
    :initarg :GuiParam2
    :type cl:float
    :initform 0.0)
   (GuiParam3
    :reader GuiParam3
    :initarg :GuiParam3
    :type cl:float
    :initform 0.0)
   (GuiParam4
    :reader GuiParam4
    :initarg :GuiParam4
    :type cl:float
    :initform 0.0)
   (GuiParam5
    :reader GuiParam5
    :initarg :GuiParam5
    :type cl:float
    :initform 0.0)
   (GuiParam6
    :reader GuiParam6
    :initarg :GuiParam6
    :type cl:float
    :initform 0.0)
   (GuiParam7
    :reader GuiParam7
    :initarg :GuiParam7
    :type cl:float
    :initform 0.0)
   (GuiParam8
    :reader GuiParam8
    :initarg :GuiParam8
    :type cl:float
    :initform 0.0))
)

(cl:defclass DumpAllVars-response (<DumpAllVars-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DumpAllVars-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DumpAllVars-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aquacore-srv:<DumpAllVars-response> is deprecated: use aquacore-srv:DumpAllVars-response instead.")))

(cl:ensure-generic-function 'foreaft-val :lambda-list '(m))
(cl:defmethod foreaft-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:foreaft-val is deprecated.  Use aquacore-srv:foreaft instead.")
  (foreaft m))

(cl:ensure-generic-function 'leftright-val :lambda-list '(m))
(cl:defmethod leftright-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:leftright-val is deprecated.  Use aquacore-srv:leftright instead.")
  (leftright m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:yaw-val is deprecated.  Use aquacore-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:roll-val is deprecated.  Use aquacore-srv:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:pitch-val is deprecated.  Use aquacore-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'heave-val :lambda-list '(m))
(cl:defmethod heave-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:heave-val is deprecated.  Use aquacore-srv:heave instead.")
  (heave m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:speed-val is deprecated.  Use aquacore-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'visYawCmd-val :lambda-list '(m))
(cl:defmethod visYawCmd-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:visYawCmd-val is deprecated.  Use aquacore-srv:visYawCmd instead.")
  (visYawCmd m))

(cl:ensure-generic-function 'visPitchCmd-val :lambda-list '(m))
(cl:defmethod visPitchCmd-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:visPitchCmd-val is deprecated.  Use aquacore-srv:visPitchCmd instead.")
  (visPitchCmd m))

(cl:ensure-generic-function 'visSpeedCmd-val :lambda-list '(m))
(cl:defmethod visSpeedCmd-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:visSpeedCmd-val is deprecated.  Use aquacore-srv:visSpeedCmd instead.")
  (visSpeedCmd m))

(cl:ensure-generic-function 'isSpeedValid-val :lambda-list '(m))
(cl:defmethod isSpeedValid-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:isSpeedValid-val is deprecated.  Use aquacore-srv:isSpeedValid instead.")
  (isSpeedValid m))

(cl:ensure-generic-function 'gaitID-val :lambda-list '(m))
(cl:defmethod gaitID-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:gaitID-val is deprecated.  Use aquacore-srv:gaitID instead.")
  (gaitID m))

(cl:ensure-generic-function 'commandWord-val :lambda-list '(m))
(cl:defmethod commandWord-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:commandWord-val is deprecated.  Use aquacore-srv:commandWord instead.")
  (commandWord m))

(cl:ensure-generic-function 'PitchTrim-val :lambda-list '(m))
(cl:defmethod PitchTrim-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:PitchTrim-val is deprecated.  Use aquacore-srv:PitchTrim instead.")
  (PitchTrim m))

(cl:ensure-generic-function 'RollTrim-val :lambda-list '(m))
(cl:defmethod RollTrim-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:RollTrim-val is deprecated.  Use aquacore-srv:RollTrim instead.")
  (RollTrim m))

(cl:ensure-generic-function 'YawTrim-val :lambda-list '(m))
(cl:defmethod YawTrim-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:YawTrim-val is deprecated.  Use aquacore-srv:YawTrim instead.")
  (YawTrim m))

(cl:ensure-generic-function 'YawGyroDrift-val :lambda-list '(m))
(cl:defmethod YawGyroDrift-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:YawGyroDrift-val is deprecated.  Use aquacore-srv:YawGyroDrift instead.")
  (YawGyroDrift m))

(cl:ensure-generic-function 'gaitselect-val :lambda-list '(m))
(cl:defmethod gaitselect-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:gaitselect-val is deprecated.  Use aquacore-srv:gaitselect instead.")
  (gaitselect m))

(cl:ensure-generic-function 'enableIntegration-val :lambda-list '(m))
(cl:defmethod enableIntegration-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:enableIntegration-val is deprecated.  Use aquacore-srv:enableIntegration instead.")
  (enableIntegration m))

(cl:ensure-generic-function 'visEnable-val :lambda-list '(m))
(cl:defmethod visEnable-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:visEnable-val is deprecated.  Use aquacore-srv:visEnable instead.")
  (visEnable m))

(cl:ensure-generic-function 'setLEDs-val :lambda-list '(m))
(cl:defmethod setLEDs-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:setLEDs-val is deprecated.  Use aquacore-srv:setLEDs instead.")
  (setLEDs m))

(cl:ensure-generic-function 'AutopilotSelect-val :lambda-list '(m))
(cl:defmethod AutopilotSelect-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:AutopilotSelect-val is deprecated.  Use aquacore-srv:AutopilotSelect instead.")
  (AutopilotSelect m))

(cl:ensure-generic-function 'AutopilotMode-val :lambda-list '(m))
(cl:defmethod AutopilotMode-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:AutopilotMode-val is deprecated.  Use aquacore-srv:AutopilotMode instead.")
  (AutopilotMode m))

(cl:ensure-generic-function 'update-val :lambda-list '(m))
(cl:defmethod update-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:update-val is deprecated.  Use aquacore-srv:update instead.")
  (update m))

(cl:ensure-generic-function 'modePause-val :lambda-list '(m))
(cl:defmethod modePause-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:modePause-val is deprecated.  Use aquacore-srv:modePause instead.")
  (modePause m))

(cl:ensure-generic-function 'zeroDepth-val :lambda-list '(m))
(cl:defmethod zeroDepth-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:zeroDepth-val is deprecated.  Use aquacore-srv:zeroDepth instead.")
  (zeroDepth m))

(cl:ensure-generic-function 'SetGyro-val :lambda-list '(m))
(cl:defmethod SetGyro-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:SetGyro-val is deprecated.  Use aquacore-srv:SetGyro instead.")
  (SetGyro m))

(cl:ensure-generic-function 'SetGyroValue-val :lambda-list '(m))
(cl:defmethod SetGyroValue-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:SetGyroValue-val is deprecated.  Use aquacore-srv:SetGyroValue instead.")
  (SetGyroValue m))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:period-val is deprecated.  Use aquacore-srv:period instead.")
  (period m))

(cl:ensure-generic-function 'oscRatio-val :lambda-list '(m))
(cl:defmethod oscRatio-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:oscRatio-val is deprecated.  Use aquacore-srv:oscRatio instead.")
  (oscRatio m))

(cl:ensure-generic-function 'amplitude-val :lambda-list '(m))
(cl:defmethod amplitude-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:amplitude-val is deprecated.  Use aquacore-srv:amplitude instead.")
  (amplitude m))

(cl:ensure-generic-function 'iir-val :lambda-list '(m))
(cl:defmethod iir-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:iir-val is deprecated.  Use aquacore-srv:iir instead.")
  (iir m))

(cl:ensure-generic-function 'visYawGain-val :lambda-list '(m))
(cl:defmethod visYawGain-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:visYawGain-val is deprecated.  Use aquacore-srv:visYawGain instead.")
  (visYawGain m))

(cl:ensure-generic-function 'visPitchGain-val :lambda-list '(m))
(cl:defmethod visPitchGain-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:visPitchGain-val is deprecated.  Use aquacore-srv:visPitchGain instead.")
  (visPitchGain m))

(cl:ensure-generic-function 'visSpeedGain-val :lambda-list '(m))
(cl:defmethod visSpeedGain-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:visSpeedGain-val is deprecated.  Use aquacore-srv:visSpeedGain instead.")
  (visSpeedGain m))

(cl:ensure-generic-function 'actuatorOffset-val :lambda-list '(m))
(cl:defmethod actuatorOffset-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:actuatorOffset-val is deprecated.  Use aquacore-srv:actuatorOffset instead.")
  (actuatorOffset m))

(cl:ensure-generic-function 'GuiTargetDepth-val :lambda-list '(m))
(cl:defmethod GuiTargetDepth-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:GuiTargetDepth-val is deprecated.  Use aquacore-srv:GuiTargetDepth instead.")
  (GuiTargetDepth m))

(cl:ensure-generic-function 'ApTargetRollCmd-val :lambda-list '(m))
(cl:defmethod ApTargetRollCmd-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:ApTargetRollCmd-val is deprecated.  Use aquacore-srv:ApTargetRollCmd instead.")
  (ApTargetRollCmd m))

(cl:ensure-generic-function 'ApTargetPitchCmd-val :lambda-list '(m))
(cl:defmethod ApTargetPitchCmd-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:ApTargetPitchCmd-val is deprecated.  Use aquacore-srv:ApTargetPitchCmd instead.")
  (ApTargetPitchCmd m))

(cl:ensure-generic-function 'ApTargetYawCmd-val :lambda-list '(m))
(cl:defmethod ApTargetYawCmd-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:ApTargetYawCmd-val is deprecated.  Use aquacore-srv:ApTargetYawCmd instead.")
  (ApTargetYawCmd m))

(cl:ensure-generic-function 'GuiParam0-val :lambda-list '(m))
(cl:defmethod GuiParam0-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:GuiParam0-val is deprecated.  Use aquacore-srv:GuiParam0 instead.")
  (GuiParam0 m))

(cl:ensure-generic-function 'GuiParam1-val :lambda-list '(m))
(cl:defmethod GuiParam1-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:GuiParam1-val is deprecated.  Use aquacore-srv:GuiParam1 instead.")
  (GuiParam1 m))

(cl:ensure-generic-function 'GuiParam2-val :lambda-list '(m))
(cl:defmethod GuiParam2-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:GuiParam2-val is deprecated.  Use aquacore-srv:GuiParam2 instead.")
  (GuiParam2 m))

(cl:ensure-generic-function 'GuiParam3-val :lambda-list '(m))
(cl:defmethod GuiParam3-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:GuiParam3-val is deprecated.  Use aquacore-srv:GuiParam3 instead.")
  (GuiParam3 m))

(cl:ensure-generic-function 'GuiParam4-val :lambda-list '(m))
(cl:defmethod GuiParam4-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:GuiParam4-val is deprecated.  Use aquacore-srv:GuiParam4 instead.")
  (GuiParam4 m))

(cl:ensure-generic-function 'GuiParam5-val :lambda-list '(m))
(cl:defmethod GuiParam5-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:GuiParam5-val is deprecated.  Use aquacore-srv:GuiParam5 instead.")
  (GuiParam5 m))

(cl:ensure-generic-function 'GuiParam6-val :lambda-list '(m))
(cl:defmethod GuiParam6-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:GuiParam6-val is deprecated.  Use aquacore-srv:GuiParam6 instead.")
  (GuiParam6 m))

(cl:ensure-generic-function 'GuiParam7-val :lambda-list '(m))
(cl:defmethod GuiParam7-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:GuiParam7-val is deprecated.  Use aquacore-srv:GuiParam7 instead.")
  (GuiParam7 m))

(cl:ensure-generic-function 'GuiParam8-val :lambda-list '(m))
(cl:defmethod GuiParam8-val ((m <DumpAllVars-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aquacore-srv:GuiParam8-val is deprecated.  Use aquacore-srv:GuiParam8 instead.")
  (GuiParam8 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DumpAllVars-response>) ostream)
  "Serializes a message object of type '<DumpAllVars-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'foreaft))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leftright))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heave))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'visYawCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'visPitchCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'visSpeedCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSpeedValid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gaitID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'commandWord)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'PitchTrim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RollTrim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'YawTrim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'YawGyroDrift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'gaitselect)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'enableIntegration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'visEnable)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'setLEDs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AutopilotSelect)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AutopilotMode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'update)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'modePause)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'zeroDepth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'SetGyro)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SetGyroValue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'period))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'oscRatio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'iir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'visYawGain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'visPitchGain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'visSpeedGain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'actuatorOffset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GuiTargetDepth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ApTargetRollCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ApTargetPitchCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ApTargetYawCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GuiParam0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GuiParam1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GuiParam2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GuiParam3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GuiParam4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GuiParam5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GuiParam6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GuiParam7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GuiParam8))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DumpAllVars-response>) istream)
  "Deserializes a message object of type '<DumpAllVars-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'foreaft) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftright) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heave) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'visYawCmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'visPitchCmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'visSpeedCmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isSpeedValid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gaitID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'commandWord) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'PitchTrim) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RollTrim) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'YawTrim) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'YawGyroDrift) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gaitselect) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enableIntegration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visEnable) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'setLEDs) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AutopilotSelect) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AutopilotMode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'update) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modePause) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zeroDepth) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SetGyro) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SetGyroValue) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'period) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'oscRatio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'iir) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'visYawGain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'visPitchGain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'visSpeedGain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'actuatorOffset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GuiTargetDepth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ApTargetRollCmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ApTargetPitchCmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ApTargetYawCmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GuiParam0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GuiParam1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GuiParam2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GuiParam3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GuiParam4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GuiParam5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GuiParam6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GuiParam7) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GuiParam8) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DumpAllVars-response>)))
  "Returns string type for a service object of type '<DumpAllVars-response>"
  "aquacore/DumpAllVarsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DumpAllVars-response)))
  "Returns string type for a service object of type 'DumpAllVars-response"
  "aquacore/DumpAllVarsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DumpAllVars-response>)))
  "Returns md5sum for a message object of type '<DumpAllVars-response>"
  "0a763daf42d6252113b71c689c9e864f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DumpAllVars-response)))
  "Returns md5sum for a message object of type 'DumpAllVars-response"
  "0a763daf42d6252113b71c689c9e864f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DumpAllVars-response>)))
  "Returns full string definition for message of type '<DumpAllVars-response>"
  (cl:format cl:nil "float32 foreaft~%float32 leftright~%float32 yaw~%float32 roll~%float32 pitch~%float32 heave~%float32 speed~%float32 visYawCmd~%float32 visPitchCmd~%float32 visSpeedCmd~%bool isSpeedValid~%int32 gaitID~%int32 commandWord~%float32 PitchTrim~%float32 RollTrim~%float32 YawTrim~%float32 YawGyroDrift~%int32 gaitselect~%int32 enableIntegration~%int32 visEnable~%int32 setLEDs~%int32 AutopilotSelect~%int32 AutopilotMode~%int32 update~%int32 modePause~%int32 zeroDepth~%int32 SetGyro~%float32 SetGyroValue~%~%~%float32 period~%float32 oscRatio~%float32 amplitude~%float32 iir~%float32 visYawGain~%float32 visPitchGain~%float32 visSpeedGain~%float32 actuatorOffset~%float32 GuiTargetDepth~%float32 ApTargetRollCmd~%float32 ApTargetPitchCmd~%float32 ApTargetYawCmd~%float32 GuiParam0~%float32 GuiParam1~%float32 GuiParam2~%float32 GuiParam3~%float32 GuiParam4~%float32 GuiParam5~%float32 GuiParam6~%float32 GuiParam7~%float32 GuiParam8~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DumpAllVars-response)))
  "Returns full string definition for message of type 'DumpAllVars-response"
  (cl:format cl:nil "float32 foreaft~%float32 leftright~%float32 yaw~%float32 roll~%float32 pitch~%float32 heave~%float32 speed~%float32 visYawCmd~%float32 visPitchCmd~%float32 visSpeedCmd~%bool isSpeedValid~%int32 gaitID~%int32 commandWord~%float32 PitchTrim~%float32 RollTrim~%float32 YawTrim~%float32 YawGyroDrift~%int32 gaitselect~%int32 enableIntegration~%int32 visEnable~%int32 setLEDs~%int32 AutopilotSelect~%int32 AutopilotMode~%int32 update~%int32 modePause~%int32 zeroDepth~%int32 SetGyro~%float32 SetGyroValue~%~%~%float32 period~%float32 oscRatio~%float32 amplitude~%float32 iir~%float32 visYawGain~%float32 visPitchGain~%float32 visSpeedGain~%float32 actuatorOffset~%float32 GuiTargetDepth~%float32 ApTargetRollCmd~%float32 ApTargetPitchCmd~%float32 ApTargetYawCmd~%float32 GuiParam0~%float32 GuiParam1~%float32 GuiParam2~%float32 GuiParam3~%float32 GuiParam4~%float32 GuiParam5~%float32 GuiParam6~%float32 GuiParam7~%float32 GuiParam8~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DumpAllVars-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DumpAllVars-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DumpAllVars-response
    (cl:cons ':foreaft (foreaft msg))
    (cl:cons ':leftright (leftright msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':heave (heave msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':visYawCmd (visYawCmd msg))
    (cl:cons ':visPitchCmd (visPitchCmd msg))
    (cl:cons ':visSpeedCmd (visSpeedCmd msg))
    (cl:cons ':isSpeedValid (isSpeedValid msg))
    (cl:cons ':gaitID (gaitID msg))
    (cl:cons ':commandWord (commandWord msg))
    (cl:cons ':PitchTrim (PitchTrim msg))
    (cl:cons ':RollTrim (RollTrim msg))
    (cl:cons ':YawTrim (YawTrim msg))
    (cl:cons ':YawGyroDrift (YawGyroDrift msg))
    (cl:cons ':gaitselect (gaitselect msg))
    (cl:cons ':enableIntegration (enableIntegration msg))
    (cl:cons ':visEnable (visEnable msg))
    (cl:cons ':setLEDs (setLEDs msg))
    (cl:cons ':AutopilotSelect (AutopilotSelect msg))
    (cl:cons ':AutopilotMode (AutopilotMode msg))
    (cl:cons ':update (update msg))
    (cl:cons ':modePause (modePause msg))
    (cl:cons ':zeroDepth (zeroDepth msg))
    (cl:cons ':SetGyro (SetGyro msg))
    (cl:cons ':SetGyroValue (SetGyroValue msg))
    (cl:cons ':period (period msg))
    (cl:cons ':oscRatio (oscRatio msg))
    (cl:cons ':amplitude (amplitude msg))
    (cl:cons ':iir (iir msg))
    (cl:cons ':visYawGain (visYawGain msg))
    (cl:cons ':visPitchGain (visPitchGain msg))
    (cl:cons ':visSpeedGain (visSpeedGain msg))
    (cl:cons ':actuatorOffset (actuatorOffset msg))
    (cl:cons ':GuiTargetDepth (GuiTargetDepth msg))
    (cl:cons ':ApTargetRollCmd (ApTargetRollCmd msg))
    (cl:cons ':ApTargetPitchCmd (ApTargetPitchCmd msg))
    (cl:cons ':ApTargetYawCmd (ApTargetYawCmd msg))
    (cl:cons ':GuiParam0 (GuiParam0 msg))
    (cl:cons ':GuiParam1 (GuiParam1 msg))
    (cl:cons ':GuiParam2 (GuiParam2 msg))
    (cl:cons ':GuiParam3 (GuiParam3 msg))
    (cl:cons ':GuiParam4 (GuiParam4 msg))
    (cl:cons ':GuiParam5 (GuiParam5 msg))
    (cl:cons ':GuiParam6 (GuiParam6 msg))
    (cl:cons ':GuiParam7 (GuiParam7 msg))
    (cl:cons ':GuiParam8 (GuiParam8 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DumpAllVars)))
  'DumpAllVars-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DumpAllVars)))
  'DumpAllVars-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DumpAllVars)))
  "Returns string type for a service object of type '<DumpAllVars>"
  "aquacore/DumpAllVars")