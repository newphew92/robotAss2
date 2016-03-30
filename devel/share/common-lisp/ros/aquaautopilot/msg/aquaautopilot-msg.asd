
(cl:in-package :asdf)

(defsystem "aquaautopilot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "UberpilotStatus" :depends-on ("_package_UberpilotStatus"))
    (:file "_package_UberpilotStatus" :depends-on ("_package"))
  ))