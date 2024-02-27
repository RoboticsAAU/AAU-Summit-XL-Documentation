;; Auto-generated. Do not edit!


(when (boundp 'robotnik_signal_msgs::SetSignal)
  (if (not (find-package "ROBOTNIK_SIGNAL_MSGS"))
    (make-package "ROBOTNIK_SIGNAL_MSGS"))
  (shadow 'SetSignal (find-package "ROBOTNIK_SIGNAL_MSGS")))
(unless (find-package "ROBOTNIK_SIGNAL_MSGS::SETSIGNAL")
  (make-package "ROBOTNIK_SIGNAL_MSGS::SETSIGNAL"))
(unless (find-package "ROBOTNIK_SIGNAL_MSGS::SETSIGNALREQUEST")
  (make-package "ROBOTNIK_SIGNAL_MSGS::SETSIGNALREQUEST"))
(unless (find-package "ROBOTNIK_SIGNAL_MSGS::SETSIGNALRESPONSE")
  (make-package "ROBOTNIK_SIGNAL_MSGS::SETSIGNALRESPONSE"))

(in-package "ROS")



(if (not (find-package "ROBOTNIK_MSGS"))
  (ros::roseus-add-msgs "robotnik_msgs"))


(defclass robotnik_signal_msgs::SetSignalRequest
  :super ros::object
  :slots (_signal_id _enable ))

(defmethod robotnik_signal_msgs::SetSignalRequest
  (:init
   (&key
    ((:signal_id __signal_id) "")
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _signal_id (string __signal_id))
   (setq _enable __enable)
   self)
  (:signal_id
   (&optional __signal_id)
   (if __signal_id (setq _signal_id __signal_id)) _signal_id)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; string _signal_id
    4 (length _signal_id)
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _signal_id
       (write-long (length _signal_id) s) (princ _signal_id s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _signal_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signal_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_signal_msgs::SetSignalResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_signal_msgs::SetSignalResponse
  (:init
   (&key
    ((:ret __ret) (instance robotnik_msgs::ReturnMessage :init))
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&rest __ret)
   (if (keywordp (car __ret))
       (send* _ret __ret)
     (progn
       (if __ret (setq _ret (car __ret)))
       _ret)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/ReturnMessage _ret
    (send _ret :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/ReturnMessage _ret
       (send _ret :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/ReturnMessage _ret
     (send _ret :deserialize buf ptr-) (incf ptr- (send _ret :serialization-length))
   ;;
   self)
  )

(defclass robotnik_signal_msgs::SetSignal
  :super ros::object
  :slots ())

(setf (get robotnik_signal_msgs::SetSignal :md5sum-) "61deb6ba176fcf9f9ac3a7b750eb3f84")
(setf (get robotnik_signal_msgs::SetSignal :datatype-) "robotnik_signal_msgs/SetSignal")
(setf (get robotnik_signal_msgs::SetSignal :request) robotnik_signal_msgs::SetSignalRequest)
(setf (get robotnik_signal_msgs::SetSignal :response) robotnik_signal_msgs::SetSignalResponse)

(defmethod robotnik_signal_msgs::SetSignalRequest
  (:response () (instance robotnik_signal_msgs::SetSignalResponse :init)))

(setf (get robotnik_signal_msgs::SetSignalRequest :md5sum-) "61deb6ba176fcf9f9ac3a7b750eb3f84")
(setf (get robotnik_signal_msgs::SetSignalRequest :datatype-) "robotnik_signal_msgs/SetSignalRequest")
(setf (get robotnik_signal_msgs::SetSignalRequest :definition-)
      "string signal_id
bool enable
---
robotnik_msgs/ReturnMessage ret

================================================================================
MSG: robotnik_msgs/ReturnMessage
bool success
string message
")

(setf (get robotnik_signal_msgs::SetSignalResponse :md5sum-) "61deb6ba176fcf9f9ac3a7b750eb3f84")
(setf (get robotnik_signal_msgs::SetSignalResponse :datatype-) "robotnik_signal_msgs/SetSignalResponse")
(setf (get robotnik_signal_msgs::SetSignalResponse :definition-)
      "string signal_id
bool enable
---
robotnik_msgs/ReturnMessage ret

================================================================================
MSG: robotnik_msgs/ReturnMessage
bool success
string message
")



(provide :robotnik_signal_msgs/SetSignal "61deb6ba176fcf9f9ac3a7b750eb3f84")


