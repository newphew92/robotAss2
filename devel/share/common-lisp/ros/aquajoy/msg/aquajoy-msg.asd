
(cl:in-package :asdf)

(defsystem "aquajoy-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :aquacore-msg
)
  :components ((:file "_package")
    (:file "AquaTeleopJoyState" :depends-on ("_package_AquaTeleopJoyState"))
    (:file "_package_AquaTeleopJoyState" :depends-on ("_package"))
    (:file "AquaTeleopJoyParams" :depends-on ("_package_AquaTeleopJoyParams"))
    (:file "_package_AquaTeleopJoyParams" :depends-on ("_package"))
  ))