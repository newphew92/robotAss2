
(cl:in-package :asdf)

(defsystem "aquajoy-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :aquajoy-msg
)
  :components ((:file "_package")
    (:file "UpdateAquaTeleopJoyParams" :depends-on ("_package_UpdateAquaTeleopJoyParams"))
    (:file "_package_UpdateAquaTeleopJoyParams" :depends-on ("_package"))
  ))