
(cl:in-package :asdf)

(defsystem "procedures_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ProcedureHeader" :depends-on ("_package_ProcedureHeader"))
    (:file "_package_ProcedureHeader" :depends-on ("_package"))
    (:file "ProcedureResult" :depends-on ("_package_ProcedureResult"))
    (:file "_package_ProcedureResult" :depends-on ("_package"))
    (:file "ProcedureState" :depends-on ("_package_ProcedureState"))
    (:file "_package_ProcedureState" :depends-on ("_package"))
  ))