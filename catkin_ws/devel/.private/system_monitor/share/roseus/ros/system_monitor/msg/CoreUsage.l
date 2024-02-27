;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::CoreUsage)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'CoreUsage (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::COREUSAGE")
  (make-package "SYSTEM_MONITOR::COREUSAGE"))

(in-package "ROS")
;;//! \htmlinclude CoreUsage.msg.html


(defclass system_monitor::CoreUsage
  :super ros::object
  :slots (_id _status _speed _user _nice _system _idle ))

(defmethod system_monitor::CoreUsage
  (:init
   (&key
    ((:id __id) 0)
    ((:status __status) "")
    ((:speed __speed) 0.0)
    ((:user __user) 0.0)
    ((:nice __nice) 0.0)
    ((:system __system) 0.0)
    ((:idle __idle) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _status (string __status))
   (setq _speed (float __speed))
   (setq _user (float __user))
   (setq _nice (float __nice))
   (setq _system (float __system))
   (setq _idle (float __idle))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:user
   (&optional __user)
   (if __user (setq _user __user)) _user)
  (:nice
   (&optional __nice)
   (if __nice (setq _nice __nice)) _nice)
  (:system
   (&optional __system)
   (if __system (setq _system __system)) _system)
  (:idle
   (&optional __idle)
   (if __idle (setq _idle __idle)) _idle)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; string _status
    4 (length _status)
    ;; float32 _speed
    4
    ;; float32 _user
    4
    ;; float32 _nice
    4
    ;; float32 _system
    4
    ;; float32 _idle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _user
       (sys::poke _user (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _nice
       (sys::poke _nice (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _system
       (sys::poke _system (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _idle
       (sys::poke _idle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _user
     (setq _user (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _nice
     (setq _nice (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _system
     (setq _system (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _idle
     (setq _idle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get system_monitor::CoreUsage :md5sum-) "5d2b3978c7b592446e308ddd6c7d1cba")
(setf (get system_monitor::CoreUsage :datatype-) "system_monitor/CoreUsage")
(setf (get system_monitor::CoreUsage :definition-)
      "int8 id
string status
#Speed of the core in MHz
float32 speed
# % of the core used by user/system/...
float32 user
float32 nice
float32 system
float32 idle
")



(provide :system_monitor/CoreUsage "5d2b3978c7b592446e308ddd6c7d1cba")


