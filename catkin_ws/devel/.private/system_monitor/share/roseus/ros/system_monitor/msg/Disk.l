;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::Disk)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'Disk (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::DISK")
  (make-package "SYSTEM_MONITOR::DISK"))

(in-package "ROS")
;;//! \htmlinclude Disk.msg.html


(defclass system_monitor::Disk
  :super ros::object
  :slots (_id _name _status _mount_point _size _available _use ))

(defmethod system_monitor::Disk
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:status __status) "")
    ((:mount_point __mount_point) "")
    ((:size __size) 0.0)
    ((:available __available) 0.0)
    ((:use __use) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _status (string __status))
   (setq _mount_point (string __mount_point))
   (setq _size (float __size))
   (setq _available (float __available))
   (setq _use (float __use))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:mount_point
   (&optional __mount_point)
   (if __mount_point (setq _mount_point __mount_point)) _mount_point)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:use
   (&optional __use)
   (if __use (setq _use __use)) _use)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; string _name
    4 (length _name)
    ;; string _status
    4 (length _status)
    ;; string _mount_point
    4 (length _mount_point)
    ;; float32 _size
    4
    ;; float32 _available
    4
    ;; float32 _use
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string _mount_point
       (write-long (length _mount_point) s) (princ _mount_point s)
     ;; float32 _size
       (sys::poke _size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _available
       (sys::poke _available (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _use
       (sys::poke _use (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mount_point
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mount_point (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _size
     (setq _size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _available
     (setq _available (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _use
     (setq _use (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get system_monitor::Disk :md5sum-) "cc25b0e895c10714a4772bbf00a5fe43")
(setf (get system_monitor::Disk :datatype-) "system_monitor/Disk")
(setf (get system_monitor::Disk :definition-)
      "int8 id
string name
string status
string mount_point
#Size of the disk in G
float32 size
float32 available
#% of total size used
float32 use

")



(provide :system_monitor/Disk "cc25b0e895c10714a4772bbf00a5fe43")


