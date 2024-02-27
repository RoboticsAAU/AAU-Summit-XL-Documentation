;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::Diagnostic)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'Diagnostic (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::DIAGNOSTIC")
  (make-package "SYSTEM_MONITOR::DIAGNOSTIC"))

(in-package "ROS")
;;//! \htmlinclude Diagnostic.msg.html


(defclass system_monitor::Diagnostic
  :super ros::object
  :slots (_diagCpuUsage _diagCpuTemp _diagMem _diagNet _diagHdd ))

(defmethod system_monitor::Diagnostic
  (:init
   (&key
    ((:diagCpuUsage __diagCpuUsage) (instance system_monitor::DiagnosticCPUUsage :init))
    ((:diagCpuTemp __diagCpuTemp) (instance system_monitor::DiagnosticCPUTemperature :init))
    ((:diagMem __diagMem) (instance system_monitor::DiagnosticMEM :init))
    ((:diagNet __diagNet) (instance system_monitor::DiagnosticNET :init))
    ((:diagHdd __diagHdd) (instance system_monitor::DiagnosticHDD :init))
    )
   (send-super :init)
   (setq _diagCpuUsage __diagCpuUsage)
   (setq _diagCpuTemp __diagCpuTemp)
   (setq _diagMem __diagMem)
   (setq _diagNet __diagNet)
   (setq _diagHdd __diagHdd)
   self)
  (:diagCpuUsage
   (&rest __diagCpuUsage)
   (if (keywordp (car __diagCpuUsage))
       (send* _diagCpuUsage __diagCpuUsage)
     (progn
       (if __diagCpuUsage (setq _diagCpuUsage (car __diagCpuUsage)))
       _diagCpuUsage)))
  (:diagCpuTemp
   (&rest __diagCpuTemp)
   (if (keywordp (car __diagCpuTemp))
       (send* _diagCpuTemp __diagCpuTemp)
     (progn
       (if __diagCpuTemp (setq _diagCpuTemp (car __diagCpuTemp)))
       _diagCpuTemp)))
  (:diagMem
   (&rest __diagMem)
   (if (keywordp (car __diagMem))
       (send* _diagMem __diagMem)
     (progn
       (if __diagMem (setq _diagMem (car __diagMem)))
       _diagMem)))
  (:diagNet
   (&rest __diagNet)
   (if (keywordp (car __diagNet))
       (send* _diagNet __diagNet)
     (progn
       (if __diagNet (setq _diagNet (car __diagNet)))
       _diagNet)))
  (:diagHdd
   (&rest __diagHdd)
   (if (keywordp (car __diagHdd))
       (send* _diagHdd __diagHdd)
     (progn
       (if __diagHdd (setq _diagHdd (car __diagHdd)))
       _diagHdd)))
  (:serialization-length
   ()
   (+
    ;; system_monitor/DiagnosticCPUUsage _diagCpuUsage
    (send _diagCpuUsage :serialization-length)
    ;; system_monitor/DiagnosticCPUTemperature _diagCpuTemp
    (send _diagCpuTemp :serialization-length)
    ;; system_monitor/DiagnosticMEM _diagMem
    (send _diagMem :serialization-length)
    ;; system_monitor/DiagnosticNET _diagNet
    (send _diagNet :serialization-length)
    ;; system_monitor/DiagnosticHDD _diagHdd
    (send _diagHdd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; system_monitor/DiagnosticCPUUsage _diagCpuUsage
       (send _diagCpuUsage :serialize s)
     ;; system_monitor/DiagnosticCPUTemperature _diagCpuTemp
       (send _diagCpuTemp :serialize s)
     ;; system_monitor/DiagnosticMEM _diagMem
       (send _diagMem :serialize s)
     ;; system_monitor/DiagnosticNET _diagNet
       (send _diagNet :serialize s)
     ;; system_monitor/DiagnosticHDD _diagHdd
       (send _diagHdd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; system_monitor/DiagnosticCPUUsage _diagCpuUsage
     (send _diagCpuUsage :deserialize buf ptr-) (incf ptr- (send _diagCpuUsage :serialization-length))
   ;; system_monitor/DiagnosticCPUTemperature _diagCpuTemp
     (send _diagCpuTemp :deserialize buf ptr-) (incf ptr- (send _diagCpuTemp :serialization-length))
   ;; system_monitor/DiagnosticMEM _diagMem
     (send _diagMem :deserialize buf ptr-) (incf ptr- (send _diagMem :serialization-length))
   ;; system_monitor/DiagnosticNET _diagNet
     (send _diagNet :deserialize buf ptr-) (incf ptr- (send _diagNet :serialization-length))
   ;; system_monitor/DiagnosticHDD _diagHdd
     (send _diagHdd :deserialize buf ptr-) (incf ptr- (send _diagHdd :serialization-length))
   ;;
   self)
  )

(setf (get system_monitor::Diagnostic :md5sum-) "588f02ed6122974a83abb40dde682102")
(setf (get system_monitor::Diagnostic :datatype-) "system_monitor/Diagnostic")
(setf (get system_monitor::Diagnostic :definition-)
      "system_monitor/DiagnosticCPUUsage diagCpuUsage
system_monitor/DiagnosticCPUTemperature diagCpuTemp
system_monitor/DiagnosticMEM diagMem
system_monitor/DiagnosticNET diagNet
system_monitor/DiagnosticHDD diagHdd

================================================================================
MSG: system_monitor/DiagnosticCPUUsage
string name
# Possible values for message: 'OK', 'Warning','Error'
string message
string hardware_id
system_monitor/CPUUsageStatus status

================================================================================
MSG: system_monitor/CPUUsageStatus
string status
float32 time
string load_status
#Load average in %
float32 load_avg1
float32 load_avg5
float32 load_avg15
system_monitor/CoreUsage[] cores

================================================================================
MSG: system_monitor/CoreUsage
int8 id
string status
#Speed of the core in MHz
float32 speed
# % of the core used by user/system/...
float32 user
float32 nice
float32 system
float32 idle
================================================================================
MSG: system_monitor/DiagnosticCPUTemperature
string name
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
================================================================================
MSG: system_monitor/DiagnosticMEM
string name
# Possible values for message: 'OK', 'Warning','Error'
string message
string hardware_id
system_monitor/MEMStatus status
================================================================================
MSG: system_monitor/MEMStatus
float32 time
system_monitor/Memory[] memories
#Memory space in M
int32 totalM
int32 usedM
int32 freeM
================================================================================
MSG: system_monitor/Memory
string name
#Memory space in M
#Physical w/o buffers total is zero
int32 total
int32 used
int32 free
================================================================================
MSG: system_monitor/DiagnosticNET
string name
string message
string hardware_id
system_monitor/NetStatus status

================================================================================
MSG: system_monitor/NetStatus
string status
float32 time
system_monitor/Interface[] interfaces
================================================================================
MSG: system_monitor/Interface
string name
string state
#input/output speed in MB/s
float32 input
float32 output
int32 mtu
#Data received/transmitted in MB
float32 received
float32 transmitted
int32 collisions
int32 rxError
int32 txError

================================================================================
MSG: system_monitor/DiagnosticHDD
string name
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



(provide :system_monitor/Diagnostic "588f02ed6122974a83abb40dde682102")


