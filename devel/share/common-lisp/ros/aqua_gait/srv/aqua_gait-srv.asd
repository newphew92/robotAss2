
(cl:in-package :asdf)

(defsystem "aqua_gait-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "UpdateTargetRPYD" :depends-on ("_package_UpdateTargetRPYD"))
    (:file "_package_UpdateTargetRPYD" :depends-on ("_package"))
  ))