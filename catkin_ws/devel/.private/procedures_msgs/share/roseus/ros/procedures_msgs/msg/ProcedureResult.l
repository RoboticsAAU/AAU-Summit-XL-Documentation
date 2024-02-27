;; Auto-generated. Do not edit!


(when (boundp 'procedures_msgs::ProcedureResult)
  (if (not (find-package "PROCEDURES_MSGS"))
    (make-package "PROCEDURES_MSGS"))
  (shadow 'ProcedureResult (find-package "PROCEDURES_MSGS")))
(unless (find-package "PROCEDURES_MSGS::PROCEDURERESULT")
  (make-package "PROCEDURES_MSGS::PROCEDURERESULT"))

(in-package "ROS")
;;//! \htmlinclude ProcedureResult.msg.html


(intern "*OK*" (find-package "PROCEDURES_MSGS::PROCEDURERESULT"))
(shadow '*OK* (find-package "PROCEDURES_MSGS::PROCEDURERESULT"))
(defconstant procedures_msgs::ProcedureResult::*OK* "ok")
(intern "*ERROR*" (find-package "PROCEDURES_MSGS::PROCEDURERESULT"))
(shadow '*ERROR* (find-package "PROCEDURES_MSGS::PROCEDURERESULT"))
(defconstant procedures_msgs::ProcedureResult::*ERROR* "error")
(defclass procedures_msgs::ProcedureResult
  :super ros::object
  :slots (_result _message ))

(defmethod procedures_msgs::ProcedureResult
  (:init
   (&key
    ((:result __result) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _result (string __result))
   (setq _message (string __message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get procedures_msgs::ProcedureResult :md5sum-) "cad7f991fe633cf8d87eb04d33da9dfe")
(setf (get procedures_msgs::ProcedureResult :datatype-) "procedures_msgs/ProcedureResult")
(setf (get procedures_msgs::ProcedureResult :definition-)
      "# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message
string OK=ok
string ERROR=error

string result
string message

")



(provide :procedures_msgs/ProcedureResult "cad7f991fe633cf8d87eb04d33da9dfe")


