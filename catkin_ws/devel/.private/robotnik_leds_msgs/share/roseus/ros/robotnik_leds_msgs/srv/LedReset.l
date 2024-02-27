;; Auto-generated. Do not edit!


(when (boundp 'robotnik_leds_msgs::LedReset)
  (if (not (find-package "ROBOTNIK_LEDS_MSGS"))
    (make-package "ROBOTNIK_LEDS_MSGS"))
  (shadow 'LedReset (find-package "ROBOTNIK_LEDS_MSGS")))
(unless (find-package "ROBOTNIK_LEDS_MSGS::LEDRESET")
  (make-package "ROBOTNIK_LEDS_MSGS::LEDRESET"))
(unless (find-package "ROBOTNIK_LEDS_MSGS::LEDRESETREQUEST")
  (make-package "ROBOTNIK_LEDS_MSGS::LEDRESETREQUEST"))
(unless (find-package "ROBOTNIK_LEDS_MSGS::LEDRESETRESPONSE")
  (make-package "ROBOTNIK_LEDS_MSGS::LEDRESETRESPONSE"))

(in-package "ROS")





(defclass robotnik_leds_msgs::LedResetRequest
  :super ros::object
  :slots (_password _reset ))

(defmethod robotnik_leds_msgs::LedResetRequest
  (:init
   (&key
    ((:password __password) "")
    ((:reset __reset) nil)
    )
   (send-super :init)
   (setq _password (string __password))
   (setq _reset __reset)
   self)
  (:password
   (&optional __password)
   (if __password (setq _password __password)) _password)
  (:reset
   (&optional __reset)
   (if __reset (setq _reset __reset)) _reset)
  (:serialization-length
   ()
   (+
    ;; string _password
    4 (length _password)
    ;; bool _reset
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _password
       (write-long (length _password) s) (princ _password s)
     ;; bool _reset
       (if _reset (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _password
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _password (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _reset
     (setq _reset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_leds_msgs::LedResetResponse
  :super ros::object
  :slots (_message ))

(defmethod robotnik_leds_msgs::LedResetResponse
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_leds_msgs::LedReset
  :super ros::object
  :slots ())

(setf (get robotnik_leds_msgs::LedReset :md5sum-) "6dc4366229cc625582e84d622d779bfb")
(setf (get robotnik_leds_msgs::LedReset :datatype-) "robotnik_leds_msgs/LedReset")
(setf (get robotnik_leds_msgs::LedReset :request) robotnik_leds_msgs::LedResetRequest)
(setf (get robotnik_leds_msgs::LedReset :response) robotnik_leds_msgs::LedResetResponse)

(defmethod robotnik_leds_msgs::LedResetRequest
  (:response () (instance robotnik_leds_msgs::LedResetResponse :init)))

(setf (get robotnik_leds_msgs::LedResetRequest :md5sum-) "6dc4366229cc625582e84d622d779bfb")
(setf (get robotnik_leds_msgs::LedResetRequest :datatype-) "robotnik_leds_msgs/LedResetRequest")
(setf (get robotnik_leds_msgs::LedResetRequest :definition-)
      "string password  # Same password used on robotnik robots
bool   reset     # Flag to reset the hardware board
---
string message

")

(setf (get robotnik_leds_msgs::LedResetResponse :md5sum-) "6dc4366229cc625582e84d622d779bfb")
(setf (get robotnik_leds_msgs::LedResetResponse :datatype-) "robotnik_leds_msgs/LedResetResponse")
(setf (get robotnik_leds_msgs::LedResetResponse :definition-)
      "string password  # Same password used on robotnik robots
bool   reset     # Flag to reset the hardware board
---
string message

")



(provide :robotnik_leds_msgs/LedReset "6dc4366229cc625582e84d622d779bfb")


