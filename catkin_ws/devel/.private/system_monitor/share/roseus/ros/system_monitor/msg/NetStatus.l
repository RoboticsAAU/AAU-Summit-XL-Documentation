;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::NetStatus)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'NetStatus (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::NETSTATUS")
  (make-package "SYSTEM_MONITOR::NETSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NetStatus.msg.html


(defclass system_monitor::NetStatus
  :super ros::object
  :slots (_status _time _interfaces ))

(defmethod system_monitor::NetStatus
  (:init
   (&key
    ((:status __status) "")
    ((:time __time) 0.0)
    ((:interfaces __interfaces) (let (r) (dotimes (i 0) (push (instance system_monitor::Interface :init) r)) r))
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _time (float __time))
   (setq _interfaces __interfaces)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:interfaces
   (&rest __interfaces)
   (if (keywordp (car __interfaces))
       (send* _interfaces __interfaces)
     (progn
       (if __interfaces (setq _interfaces (car __interfaces)))
       _interfaces)))
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; float32 _time
    4
    ;; system_monitor/Interface[] _interfaces
    (apply #'+ (send-all _interfaces :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; system_monitor/Interface[] _interfaces
     (write-long (length _interfaces) s)
     (dolist (elem _interfaces)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; system_monitor/Interface[] _interfaces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _interfaces (let (r) (dotimes (i n) (push (instance system_monitor::Interface :init) r)) r))
     (dolist (elem- _interfaces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get system_monitor::NetStatus :md5sum-) "ee4c5e43ad900b8ca9900b78fe4a10d2")
(setf (get system_monitor::NetStatus :datatype-) "system_monitor/NetStatus")
(setf (get system_monitor::NetStatus :definition-)
      "string status
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

")



(provide :system_monitor/NetStatus "ee4c5e43ad900b8ca9900b78fe4a10d2")


