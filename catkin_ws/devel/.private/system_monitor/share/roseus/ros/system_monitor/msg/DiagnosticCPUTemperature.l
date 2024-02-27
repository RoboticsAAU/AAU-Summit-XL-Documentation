;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::DiagnosticCPUTemperature)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'DiagnosticCPUTemperature (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::DIAGNOSTICCPUTEMPERATURE")
  (make-package "SYSTEM_MONITOR::DIAGNOSTICCPUTEMPERATURE"))

(in-package "ROS")
;;//! \htmlinclude DiagnosticCPUTemperature.msg.html


(defclass system_monitor::DiagnosticCPUTemperature
  :super ros::object
  :slots (_name _message _hardware_id _status ))

(defmethod system_monitor::DiagnosticCPUTemperature
  (:init
   (&key
    ((:name __name) "")
    ((:message __message) "")
    ((:hardware_id __hardware_id) "")
    ((:status __status) (instance system_monitor::CPUTemperatureStatus :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _message (string __message))
   (setq _hardware_id (string __hardware_id))
   (setq _status __status)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:hardware_id
   (&optional __hardware_id)
   (if __hardware_id (setq _hardware_id __hardware_id)) _hardware_id)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _message
    4 (length _message)
    ;; string _hardware_id
    4 (length _hardware_id)
    ;; system_monitor/CPUTemperatureStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _hardware_id
       (write-long (length _hardware_id) s) (princ _hardware_id s)
     ;; system_monitor/CPUTemperatureStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _hardware_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; system_monitor/CPUTemperatureStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get system_monitor::DiagnosticCPUTemperature :md5sum-) "b5cbf7e0eb0c598e791f1069d02929fe")
(setf (get system_monitor::DiagnosticCPUTemperature :datatype-) "system_monitor/DiagnosticCPUTemperature")
(setf (get system_monitor::DiagnosticCPUTemperature :definition-)
      "string name
# Possible values for message: 'OK', 'Warning','Error'
string message
string hardware_id
system_monitor/CPUTemperatureStatus status

================================================================================
MSG: system_monitor/CPUTemperatureStatus
string status
float32 time
system_monitor/CoreTemp[] cores

================================================================================
MSG: system_monitor/CoreTemp
int8 id
#Temperature of the core in DegC
float32 temp
")



(provide :system_monitor/DiagnosticCPUTemperature "b5cbf7e0eb0c598e791f1069d02929fe")


