;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::CPUUsageStatus)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'CPUUsageStatus (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::CPUUSAGESTATUS")
  (make-package "SYSTEM_MONITOR::CPUUSAGESTATUS"))

(in-package "ROS")
;;//! \htmlinclude CPUUsageStatus.msg.html


(defclass system_monitor::CPUUsageStatus
  :super ros::object
  :slots (_status _time _load_status _load_avg1 _load_avg5 _load_avg15 _cores ))

(defmethod system_monitor::CPUUsageStatus
  (:init
   (&key
    ((:status __status) "")
    ((:time __time) 0.0)
    ((:load_status __load_status) "")
    ((:load_avg1 __load_avg1) 0.0)
    ((:load_avg5 __load_avg5) 0.0)
    ((:load_avg15 __load_avg15) 0.0)
    ((:cores __cores) (let (r) (dotimes (i 0) (push (instance system_monitor::CoreUsage :init) r)) r))
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _time (float __time))
   (setq _load_status (string __load_status))
   (setq _load_avg1 (float __load_avg1))
   (setq _load_avg5 (float __load_avg5))
   (setq _load_avg15 (float __load_avg15))
   (setq _cores __cores)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:load_status
   (&optional __load_status)
   (if __load_status (setq _load_status __load_status)) _load_status)
  (:load_avg1
   (&optional __load_avg1)
   (if __load_avg1 (setq _load_avg1 __load_avg1)) _load_avg1)
  (:load_avg5
   (&optional __load_avg5)
   (if __load_avg5 (setq _load_avg5 __load_avg5)) _load_avg5)
  (:load_avg15
   (&optional __load_avg15)
   (if __load_avg15 (setq _load_avg15 __load_avg15)) _load_avg15)
  (:cores
   (&rest __cores)
   (if (keywordp (car __cores))
       (send* _cores __cores)
     (progn
       (if __cores (setq _cores (car __cores)))
       _cores)))
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; float32 _time
    4
    ;; string _load_status
    4 (length _load_status)
    ;; float32 _load_avg1
    4
    ;; float32 _load_avg5
    4
    ;; float32 _load_avg15
    4
    ;; system_monitor/CoreUsage[] _cores
    (apply #'+ (send-all _cores :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _load_status
       (write-long (length _load_status) s) (princ _load_status s)
     ;; float32 _load_avg1
       (sys::poke _load_avg1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _load_avg5
       (sys::poke _load_avg5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _load_avg15
       (sys::poke _load_avg15 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; system_monitor/CoreUsage[] _cores
     (write-long (length _cores) s)
     (dolist (elem _cores)
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
   ;; string _load_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _load_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _load_avg1
     (setq _load_avg1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _load_avg5
     (setq _load_avg5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _load_avg15
     (setq _load_avg15 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; system_monitor/CoreUsage[] _cores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cores (let (r) (dotimes (i n) (push (instance system_monitor::CoreUsage :init) r)) r))
     (dolist (elem- _cores)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get system_monitor::CPUUsageStatus :md5sum-) "e3d0188421c1391749e86c170c349143")
(setf (get system_monitor::CPUUsageStatus :datatype-) "system_monitor/CPUUsageStatus")
(setf (get system_monitor::CPUUsageStatus :definition-)
      "string status
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
")



(provide :system_monitor/CPUUsageStatus "e3d0188421c1391749e86c170c349143")


