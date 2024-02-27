;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::CoreTemp)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'CoreTemp (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::CORETEMP")
  (make-package "SYSTEM_MONITOR::CORETEMP"))

(in-package "ROS")
;;//! \htmlinclude CoreTemp.msg.html


(defclass system_monitor::CoreTemp
  :super ros::object
  :slots (_id _temp ))

(defmethod system_monitor::CoreTemp
  (:init
   (&key
    ((:id __id) 0)
    ((:temp __temp) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _temp (float __temp))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; float32 _temp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; float32 _temp
       (sys::poke _temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; float32 _temp
     (setq _temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get system_monitor::CoreTemp :md5sum-) "77a1d734d3f9b0295efc9c0e8dbc0be8")
(setf (get system_monitor::CoreTemp :datatype-) "system_monitor/CoreTemp")
(setf (get system_monitor::CoreTemp :definition-)
      "int8 id
#Temperature of the core in DegC
float32 temp
")



(provide :system_monitor/CoreTemp "77a1d734d3f9b0295efc9c0e8dbc0be8")


