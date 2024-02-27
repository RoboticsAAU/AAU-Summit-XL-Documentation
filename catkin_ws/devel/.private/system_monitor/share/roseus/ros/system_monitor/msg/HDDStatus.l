;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::HDDStatus)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'HDDStatus (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::HDDSTATUS")
  (make-package "SYSTEM_MONITOR::HDDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude HDDStatus.msg.html


(defclass system_monitor::HDDStatus
  :super ros::object
  :slots (_status _time _space_reading _disks ))

(defmethod system_monitor::HDDStatus
  (:init
   (&key
    ((:status __status) "")
    ((:time __time) 0.0)
    ((:space_reading __space_reading) "")
    ((:disks __disks) (let (r) (dotimes (i 0) (push (instance system_monitor::Disk :init) r)) r))
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _time (float __time))
   (setq _space_reading (string __space_reading))
   (setq _disks __disks)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:space_reading
   (&optional __space_reading)
   (if __space_reading (setq _space_reading __space_reading)) _space_reading)
  (:disks
   (&rest __disks)
   (if (keywordp (car __disks))
       (send* _disks __disks)
     (progn
       (if __disks (setq _disks (car __disks)))
       _disks)))
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; float32 _time
    4
    ;; string _space_reading
    4 (length _space_reading)
    ;; system_monitor/Disk[] _disks
    (apply #'+ (send-all _disks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _space_reading
       (write-long (length _space_reading) s) (princ _space_reading s)
     ;; system_monitor/Disk[] _disks
     (write-long (length _disks) s)
     (dolist (elem _disks)
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
   ;; string _space_reading
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _space_reading (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; system_monitor/Disk[] _disks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _disks (let (r) (dotimes (i n) (push (instance system_monitor::Disk :init) r)) r))
     (dolist (elem- _disks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get system_monitor::HDDStatus :md5sum-) "f9464edca9fb3861e03bc3ae40d6d8bc")
(setf (get system_monitor::HDDStatus :datatype-) "system_monitor/HDDStatus")
(setf (get system_monitor::HDDStatus :definition-)
      "string status
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



(provide :system_monitor/HDDStatus "f9464edca9fb3861e03bc3ae40d6d8bc")


