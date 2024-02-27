;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::Memory)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'Memory (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::MEMORY")
  (make-package "SYSTEM_MONITOR::MEMORY"))

(in-package "ROS")
;;//! \htmlinclude Memory.msg.html


(defclass system_monitor::Memory
  :super ros::object
  :slots (_name _total _used _free ))

(defmethod system_monitor::Memory
  (:init
   (&key
    ((:name __name) "")
    ((:total __total) 0)
    ((:used __used) 0)
    ((:free __free) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _total (round __total))
   (setq _used (round __used))
   (setq _free (round __free))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:used
   (&optional __used)
   (if __used (setq _used __used)) _used)
  (:free
   (&optional __free)
   (if __free (setq _free __free)) _free)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _total
    4
    ;; int32 _used
    4
    ;; int32 _free
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _total
       (write-long _total s)
     ;; int32 _used
       (write-long _used s)
     ;; int32 _free
       (write-long _free s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _total
     (setq _total (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _used
     (setq _used (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _free
     (setq _free (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get system_monitor::Memory :md5sum-) "e76664714b587a3a9161519dc52642f6")
(setf (get system_monitor::Memory :datatype-) "system_monitor/Memory")
(setf (get system_monitor::Memory :definition-)
      "string name
#Memory space in M
#Physical w/o buffers total is zero
int32 total
int32 used
int32 free
")



(provide :system_monitor/Memory "e76664714b587a3a9161519dc52642f6")


