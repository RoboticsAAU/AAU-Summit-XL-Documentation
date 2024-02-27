
(cl:in-package :asdf)

(defsystem "procedures_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :procedures_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ProcedureQuery" :depends-on ("_package_ProcedureQuery"))
    (:file "_package_ProcedureQuery" :depends-on ("_package"))
  ))