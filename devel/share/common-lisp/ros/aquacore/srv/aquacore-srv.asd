
(cl:in-package :asdf)

(defsystem "aquacore-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :aquacore-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SetGait" :depends-on ("_package_SetGait"))
    (:file "_package_SetGait" :depends-on ("_package"))
    (:file "GetNamedFloat" :depends-on ("_package_GetNamedFloat"))
    (:file "_package_GetNamedFloat" :depends-on ("_package"))
    (:file "GetPeriodicLegCommand" :depends-on ("_package_GetPeriodicLegCommand"))
    (:file "_package_GetPeriodicLegCommand" :depends-on ("_package"))
    (:file "IsCalibrated" :depends-on ("_package_IsCalibrated"))
    (:file "_package_IsCalibrated" :depends-on ("_package"))
    (:file "GetNamedBool" :depends-on ("_package_GetNamedBool"))
    (:file "_package_GetNamedBool" :depends-on ("_package"))
    (:file "StepSimulation" :depends-on ("_package_StepSimulation"))
    (:file "_package_StepSimulation" :depends-on ("_package"))
    (:file "SetTargetLegAngles" :depends-on ("_package_SetTargetLegAngles"))
    (:file "_package_SetTargetLegAngles" :depends-on ("_package"))
    (:file "GetAutopilotParams" :depends-on ("_package_GetAutopilotParams"))
    (:file "_package_GetAutopilotParams" :depends-on ("_package"))
    (:file "GetAutopilotState" :depends-on ("_package_GetAutopilotState"))
    (:file "_package_GetAutopilotState" :depends-on ("_package"))
    (:file "SetLegParams" :depends-on ("_package_SetLegParams"))
    (:file "_package_SetLegParams" :depends-on ("_package"))
    (:file "GetState" :depends-on ("_package_GetState"))
    (:file "_package_GetState" :depends-on ("_package"))
    (:file "SetTargetAngles" :depends-on ("_package_SetTargetAngles"))
    (:file "_package_SetTargetAngles" :depends-on ("_package"))
    (:file "SetTargetDepth" :depends-on ("_package_SetTargetDepth"))
    (:file "_package_SetTargetDepth" :depends-on ("_package"))
    (:file "DumpAllVars" :depends-on ("_package_DumpAllVars"))
    (:file "_package_DumpAllVars" :depends-on ("_package"))
    (:file "SetPeriodicLegCommand" :depends-on ("_package_SetPeriodicLegCommand"))
    (:file "_package_SetPeriodicLegCommand" :depends-on ("_package"))
    (:file "SetPauseMode" :depends-on ("_package_SetPauseMode"))
    (:file "_package_SetPauseMode" :depends-on ("_package"))
    (:file "SetAutopilotMode" :depends-on ("_package_SetAutopilotMode"))
    (:file "_package_SetAutopilotMode" :depends-on ("_package"))
    (:file "SetDirection" :depends-on ("_package_SetDirection"))
    (:file "_package_SetDirection" :depends-on ("_package"))
    (:file "EnableAutopilot" :depends-on ("_package_EnableAutopilot"))
    (:file "_package_EnableAutopilot" :depends-on ("_package"))
    (:file "RunSimulationUntilTime" :depends-on ("_package_RunSimulationUntilTime"))
    (:file "_package_RunSimulationUntilTime" :depends-on ("_package"))
    (:file "EnableDepthControl" :depends-on ("_package_EnableDepthControl"))
    (:file "_package_EnableDepthControl" :depends-on ("_package"))
    (:file "SetUpRegulatedSwimMode" :depends-on ("_package_SetUpRegulatedSwimMode"))
    (:file "_package_SetUpRegulatedSwimMode" :depends-on ("_package"))
    (:file "GetTargetLegAngles" :depends-on ("_package_GetTargetLegAngles"))
    (:file "_package_GetTargetLegAngles" :depends-on ("_package"))
    (:file "SetAutopilotParams" :depends-on ("_package_SetAutopilotParams"))
    (:file "_package_SetAutopilotParams" :depends-on ("_package"))
    (:file "GetLegParams" :depends-on ("_package_GetLegParams"))
    (:file "_package_GetLegParams" :depends-on ("_package"))
    (:file "SetNamedFloat" :depends-on ("_package_SetNamedFloat"))
    (:file "_package_SetNamedFloat" :depends-on ("_package"))
    (:file "Menu" :depends-on ("_package_Menu"))
    (:file "_package_Menu" :depends-on ("_package"))
    (:file "GetNamedInt" :depends-on ("_package_GetNamedInt"))
    (:file "_package_GetNamedInt" :depends-on ("_package"))
    (:file "EmptyBool" :depends-on ("_package_EmptyBool"))
    (:file "_package_EmptyBool" :depends-on ("_package"))
    (:file "SetBool" :depends-on ("_package_SetBool"))
    (:file "_package_SetBool" :depends-on ("_package"))
  ))