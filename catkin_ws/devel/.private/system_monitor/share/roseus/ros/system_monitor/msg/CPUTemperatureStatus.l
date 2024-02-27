;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::CPUTemperatureStatus)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'CPUTemperatureStatus (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::CPUTEMPERATURESTATUS")
  (make-package "SYSTEM_MONITOR::CPUTEMPERATURESTATUS"))

(in-package "ROS")
;;//! \htmlinclude CPUTemperatureStatus.msg.html


(defclass system_monitor::CPUTemperatureStatus
  :super ros::object
  :slots (_status _time _cores ))

(defmethod system_monitor::CPUTemperatureStatus
  (:init
   (&key
    ((:status __status) "")
    ((:time __time) 0.0)
    ((:cores __cores) (let (r) (dotimes (i 0) (push (instance system_monitor::CoreTemp :init) r)) r))
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _time (float __time))
   (setq _cores __cores)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
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
    ;; system_monitor/CoreTemp[] _cores
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
     ;; system_monitor/CoreTemp[] _cores
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
   ;; system_monitor/CoreTemp[] _cores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cores (let (r) (dotimes (i n) (push (instance system_monitor::CoreTemp :init) r)) r))
     (dolist (elem- _cores)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get system_monitor::CPUTemperatureStatus :md5sum-) "1225aebb87ce815e0a8186ef49cf99cf")
(setf (get system_monitor::CPUTemperatureStatus :datatype-) "system_monitor/CPUTemperatureStatus")
(setf (get system_monitor::CPUTemperatureStatus :definition-)
      "string status
float32 time
system_monitor/CoreTemp[] cores

================================================================================
MSG: system_monitor/CoreTemp
int8 id
#Temperature of the core in DegC
float32 temp
")



(provide :system_monitor/CPUTemperatureStatus "1225aebb87ce815e0a8186ef49cf99cf")


