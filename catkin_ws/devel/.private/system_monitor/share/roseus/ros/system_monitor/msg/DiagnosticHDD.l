;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::DiagnosticHDD)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'DiagnosticHDD (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::DIAGNOSTICHDD")
  (make-package "SYSTEM_MONITOR::DIAGNOSTICHDD"))

(in-package "ROS")
;;//! \htmlinclude DiagnosticHDD.msg.html


(defclass system_monitor::DiagnosticHDD
  :super ros::object
  :slots (_name _message _hardware_id _status ))

(defmethod system_monitor::DiagnosticHDD
  (:init
   (&key
    ((:name __name) "")
    ((:message __message) "")
    ((:hardware_id __hardware_id) "")
    ((:status __status) (instance system_monitor::HDDStatus :init))
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
    ;; system_monitor/HDDStatus _status
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
     ;; system_monitor/HDDStatus _status
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
   ;; system_monitor/HDDStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get system_monitor::DiagnosticHDD :md5sum-) "90b65e631e647c3f69d6475dcbed9297")
(setf (get system_monitor::DiagnosticHDD :datatype-) "system_monitor/DiagnosticHDD")
(setf (get system_monitor::DiagnosticHDD :definition-)
      "string name
# Possible values for message: 'OK', 'Warning','Error'
string message
string hardware_id
system_monitor/HDDStatus status

================================================================================
MSG: system_monitor/HDDStatus
string status
float32 time
string space_reading
system_monitor/Disk[] disks

================================================================================
MSG: system_monitor/Disk
int8 id
string name
string status
string mount_point
#Size of the disk in G
float32 size
float32 available
#% of total size used
float32 use

")



(provide :system_monitor/DiagnosticHDD "90b65e631e647c3f69d6475dcbed9297")


