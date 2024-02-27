;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::MEMStatus)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'MEMStatus (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::MEMSTATUS")
  (make-package "SYSTEM_MONITOR::MEMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MEMStatus.msg.html


(defclass system_monitor::MEMStatus
  :super ros::object
  :slots (_time _memories _totalM _usedM _freeM ))

(defmethod system_monitor::MEMStatus
  (:init
   (&key
    ((:time __time) 0.0)
    ((:memories __memories) (let (r) (dotimes (i 0) (push (instance system_monitor::Memory :init) r)) r))
    ((:totalM __totalM) 0)
    ((:usedM __usedM) 0)
    ((:freeM __freeM) 0)
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _memories __memories)
   (setq _totalM (round __totalM))
   (setq _usedM (round __usedM))
   (setq _freeM (round __freeM))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:memories
   (&rest __memories)
   (if (keywordp (car __memories))
       (send* _memories __memories)
     (progn
       (if __memories (setq _memories (car __memories)))
       _memories)))
  (:totalM
   (&optional __totalM)
   (if __totalM (setq _totalM __totalM)) _totalM)
  (:usedM
   (&optional __usedM)
   (if __usedM (setq _usedM __usedM)) _usedM)
  (:freeM
   (&optional __freeM)
   (if __freeM (setq _freeM __freeM)) _freeM)
  (:serialization-length
   ()
   (+
    ;; float32 _time
    4
    ;; system_monitor/Memory[] _memories
    (apply #'+ (send-all _memories :serialization-length)) 4
    ;; int32 _totalM
    4
    ;; int32 _usedM
    4
    ;; int32 _freeM
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; system_monitor/Memory[] _memories
     (write-long (length _memories) s)
     (dolist (elem _memories)
       (send elem :serialize s)
       )
     ;; int32 _totalM
       (write-long _totalM s)
     ;; int32 _usedM
       (write-long _usedM s)
     ;; int32 _freeM
       (write-long _freeM s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; system_monitor/Memory[] _memories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _memories (let (r) (dotimes (i n) (push (instance system_monitor::Memory :init) r)) r))
     (dolist (elem- _memories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _totalM
     (setq _totalM (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _usedM
     (setq _usedM (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _freeM
     (setq _freeM (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get system_monitor::MEMStatus :md5sum-) "87aa3708fd29c92a6112f09fa739ebe9")
(setf (get system_monitor::MEMStatus :datatype-) "system_monitor/MEMStatus")
(setf (get system_monitor::MEMStatus :definition-)
      "float32 time
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
")



(provide :system_monitor/MEMStatus "87aa3708fd29c92a6112f09fa739ebe9")


