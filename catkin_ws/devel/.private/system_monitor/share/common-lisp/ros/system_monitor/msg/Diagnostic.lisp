; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude Diagnostic.msg.html

(cl:defclass <Diagnostic> (roslisp-msg-protocol:ros-message)
  ((diagCpuUsage
    :reader diagCpuUsage
    :initarg :diagCpuUsage
    :type system_monitor-msg:DiagnosticCPUUsage
    :initform (cl:make-instance 'system_monitor-msg:DiagnosticCPUUsage))
   (diagCpuTemp
    :reader diagCpuTemp
    :initarg :diagCpuTemp
    :type system_monitor-msg:DiagnosticCPUTemperature
    :initform (cl:make-instance 'system_monitor-msg:DiagnosticCPUTemperature))
   (diagMem
    :reader diagMem
    :initarg :diagMem
    :type system_monitor-msg:DiagnosticMEM
    :initform (cl:make-instance 'system_monitor-msg:DiagnosticMEM))
   (diagNet
    :reader diagNet
    :initarg :diagNet
    :type system_monitor-msg:DiagnosticNET
    :initform (cl:make-instance 'system_monitor-msg:DiagnosticNET))
   (diagHdd
    :reader diagHdd
    :initarg :diagHdd
    :type system_monitor-msg:DiagnosticHDD
    :initform (cl:make-instance 'system_monitor-msg:DiagnosticHDD)))
)

(cl:defclass Diagnostic (<Diagnostic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Diagnostic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Diagnostic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<Diagnostic> is deprecated: use system_monitor-msg:Diagnostic instead.")))

(cl:ensure-generic-function 'diagCpuUsage-val :lambda-list '(m))
(cl:defmethod diagCpuUsage-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:diagCpuUsage-val is deprecated.  Use system_monitor-msg:diagCpuUsage instead.")
  (diagCpuUsage m))

(cl:ensure-generic-function 'diagCpuTemp-val :lambda-list '(m))
(cl:defmethod diagCpuTemp-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:diagCpuTemp-val is deprecated.  Use system_monitor-msg:diagCpuTemp instead.")
  (diagCpuTemp m))

(cl:ensure-generic-function 'diagMem-val :lambda-list '(m))
(cl:defmethod diagMem-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:diagMem-val is deprecated.  Use system_monitor-msg:diagMem instead.")
  (diagMem m))

(cl:ensure-generic-function 'diagNet-val :lambda-list '(m))
(cl:defmethod diagNet-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:diagNet-val is deprecated.  Use system_monitor-msg:diagNet instead.")
  (diagNet m))

(cl:ensure-generic-function 'diagHdd-val :lambda-list '(m))
(cl:defmethod diagHdd-val ((m <Diagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:diagHdd-val is deprecated.  Use system_monitor-msg:diagHdd instead.")
  (diagHdd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Diagnostic>) ostream)
  "Serializes a message object of type '<Diagnostic>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'diagCpuUsage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'diagCpuTemp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'diagMem) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'diagNet) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'diagHdd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Diagnostic>) istream)
  "Deserializes a message object of type '<Diagnostic>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'diagCpuUsage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'diagCpuTemp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'diagMem) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'diagNet) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'diagHdd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Diagnostic>)))
  "Returns string type for a message object of type '<Diagnostic>"
  "system_monitor/Diagnostic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Diagnostic)))
  "Returns string type for a message object of type 'Diagnostic"
  "system_monitor/Diagnostic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Diagnostic>)))
  "Returns md5sum for a message object of type '<Diagnostic>"
  "588f02ed6122974a83abb40dde682102")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Diagnostic)))
  "Returns md5sum for a message object of type 'Diagnostic"
  "588f02ed6122974a83abb40dde682102")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Diagnostic>)))
  "Returns full string definition for message of type '<Diagnostic>"
  (cl:format cl:nil "system_monitor/DiagnosticCPUUsage diagCpuUsage~%system_monitor/DiagnosticCPUTemperature diagCpuTemp~%system_monitor/DiagnosticMEM diagMem~%system_monitor/DiagnosticNET diagNet~%system_monitor/DiagnosticHDD diagHdd~%~%================================================================================~%MSG: system_monitor/DiagnosticCPUUsage~%string name~%# Possible values for message: 'OK', 'Warning','Error'~%string message~%string hardware_id~%system_monitor/CPUUsageStatus status~%~%================================================================================~%MSG: system_monitor/CPUUsageStatus~%string status~%float32 time~%string load_status~%#Load average in %~%float32 load_avg1~%float32 load_avg5~%float32 load_avg15~%system_monitor/CoreUsage[] cores~%~%================================================================================~%MSG: system_monitor/CoreUsage~%int8 id~%string status~%#Speed of the core in MHz~%float32 speed~%# % of the core used by user/system/...~%float32 user~%float32 nice~%float32 system~%float32 idle~%================================================================================~%MSG: system_monitor/DiagnosticCPUTemperature~%string name~%# Possible values for message: 'OK', 'Warning','Error'~%string message~%string hardware_id~%system_monitor/CPUTemperatureStatus status~%~%================================================================================~%MSG: system_monitor/CPUTemperatureStatus~%string status~%float32 time~%system_monitor/CoreTemp[] cores~%~%================================================================================~%MSG: system_monitor/CoreTemp~%int8 id~%#Temperature of the core in DegC~%float32 temp~%================================================================================~%MSG: system_monitor/DiagnosticMEM~%string name~%# Possible values for message: 'OK', 'Warning','Error'~%string message~%string hardware_id~%system_monitor/MEMStatus status~%================================================================================~%MSG: system_monitor/MEMStatus~%float32 time~%system_monitor/Memory[] memories~%#Memory space in M~%int32 totalM~%int32 usedM~%int32 freeM~%================================================================================~%MSG: system_monitor/Memory~%string name~%#Memory space in M~%#Physical w/o buffers total is zero~%int32 total~%int32 used~%int32 free~%================================================================================~%MSG: system_monitor/DiagnosticNET~%string name~%string message~%string hardware_id~%system_monitor/NetStatus status~%~%================================================================================~%MSG: system_monitor/NetStatus~%string status~%float32 time~%system_monitor/Interface[] interfaces~%================================================================================~%MSG: system_monitor/Interface~%string name~%string state~%#input/output speed in MB/s~%float32 input~%float32 output~%int32 mtu~%#Data received/transmitted in MB~%float32 received~%float32 transmitted~%int32 collisions~%int32 rxError~%int32 txError~%~%================================================================================~%MSG: system_monitor/DiagnosticHDD~%string name~%# Possible values for message: 'OK', 'Warning','Error'~%string message~%string hardware_id~%system_monitor/HDDStatus status~%~%================================================================================~%MSG: system_monitor/HDDStatus~%string status~%float32 time~%string space_reading~%system_monitor/Disk[] disks~%~%================================================================================~%MSG: system_monitor/Disk~%int8 id~%string name~%string status~%string mount_point~%#Size of the disk in G~%float32 size~%float32 available~%#% of total size used~%float32 use~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Diagnostic)))
  "Returns full string definition for message of type 'Diagnostic"
  (cl:format cl:nil "system_monitor/DiagnosticCPUUsage diagCpuUsage~%system_monitor/DiagnosticCPUTemperature diagCpuTemp~%system_monitor/DiagnosticMEM diagMem~%system_monitor/DiagnosticNET diagNet~%system_monitor/DiagnosticHDD diagHdd~%~%================================================================================~%MSG: system_monitor/DiagnosticCPUUsage~%string name~%# Possible values for message: 'OK', 'Warning','Error'~%string message~%string hardware_id~%system_monitor/CPUUsageStatus status~%~%================================================================================~%MSG: system_monitor/CPUUsageStatus~%string status~%float32 time~%string load_status~%#Load average in %~%float32 load_avg1~%float32 load_avg5~%float32 load_avg15~%system_monitor/CoreUsage[] cores~%~%================================================================================~%MSG: system_monitor/CoreUsage~%int8 id~%string status~%#Speed of the core in MHz~%float32 speed~%# % of the core used by user/system/...~%float32 user~%float32 nice~%float32 system~%float32 idle~%================================================================================~%MSG: system_monitor/DiagnosticCPUTemperature~%string name~%# Possible values for message: 'OK', 'Warning','Error'~%string message~%string hardware_id~%system_monitor/CPUTemperatureStatus status~%~%================================================================================~%MSG: system_monitor/CPUTemperatureStatus~%string status~%float32 time~%system_monitor/CoreTemp[] cores~%~%================================================================================~%MSG: system_monitor/CoreTemp~%int8 id~%#Temperature of the core in DegC~%float32 temp~%================================================================================~%MSG: system_monitor/DiagnosticMEM~%string name~%# Possible values for message: 'OK', 'Warning','Error'~%string message~%string hardware_id~%system_monitor/MEMStatus status~%================================================================================~%MSG: system_monitor/MEMStatus~%float32 time~%system_monitor/Memory[] memories~%#Memory space in M~%int32 totalM~%int32 usedM~%int32 freeM~%================================================================================~%MSG: system_monitor/Memory~%string name~%#Memory space in M~%#Physical w/o buffers total is zero~%int32 total~%int32 used~%int32 free~%================================================================================~%MSG: system_monitor/DiagnosticNET~%string name~%string message~%string hardware_id~%system_monitor/NetStatus status~%~%================================================================================~%MSG: system_monitor/NetStatus~%string status~%float32 time~%system_monitor/Interface[] interfaces~%================================================================================~%MSG: system_monitor/Interface~%string name~%string state~%#input/output speed in MB/s~%float32 input~%float32 output~%int32 mtu~%#Data received/transmitted in MB~%float32 received~%float32 transmitted~%int32 collisions~%int32 rxError~%int32 txError~%~%================================================================================~%MSG: system_monitor/DiagnosticHDD~%string name~%# Possible values for message: 'OK', 'Warning','Error'~%string message~%string hardware_id~%system_monitor/HDDStatus status~%~%================================================================================~%MSG: system_monitor/HDDStatus~%string status~%float32 time~%string space_reading~%system_monitor/Disk[] disks~%~%================================================================================~%MSG: system_monitor/Disk~%int8 id~%string name~%string status~%string mount_point~%#Size of the disk in G~%float32 size~%float32 available~%#% of total size used~%float32 use~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Diagnostic>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'diagCpuUsage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'diagCpuTemp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'diagMem))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'diagNet))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'diagHdd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Diagnostic>))
  "Converts a ROS message object to a list"
  (cl:list 'Diagnostic
    (cl:cons ':diagCpuUsage (diagCpuUsage msg))
    (cl:cons ':diagCpuTemp (diagCpuTemp msg))
    (cl:cons ':diagMem (diagMem msg))
    (cl:cons ':diagNet (diagNet msg))
    (cl:cons ':diagHdd (diagHdd msg))
))
