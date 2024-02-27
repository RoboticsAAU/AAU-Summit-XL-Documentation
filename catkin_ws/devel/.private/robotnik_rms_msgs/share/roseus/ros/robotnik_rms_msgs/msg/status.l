;; Auto-generated. Do not edit!


(when (boundp 'robotnik_rms_msgs::status)
  (if (not (find-package "ROBOTNIK_RMS_MSGS"))
    (make-package "ROBOTNIK_RMS_MSGS"))
  (shadow 'status (find-package "ROBOTNIK_RMS_MSGS")))
(unless (find-package "ROBOTNIK_RMS_MSGS::STATUS")
  (make-package "ROBOTNIK_RMS_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude status.msg.html


(intern "*CURRENT_STATUS_ERROR*" (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(shadow '*CURRENT_STATUS_ERROR* (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(defconstant robotnik_rms_msgs::status::*CURRENT_STATUS_ERROR* -1)
(intern "*CURRENT_STATUS_PREIDLE*" (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(shadow '*CURRENT_STATUS_PREIDLE* (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(defconstant robotnik_rms_msgs::status::*CURRENT_STATUS_PREIDLE* 0)
(intern "*CURRENT_STATUS_IDLE*" (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(shadow '*CURRENT_STATUS_IDLE* (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(defconstant robotnik_rms_msgs::status::*CURRENT_STATUS_IDLE* 1)
(intern "*CURRENT_STATUS_CHARGING_MISSION*" (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(shadow '*CURRENT_STATUS_CHARGING_MISSION* (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(defconstant robotnik_rms_msgs::status::*CURRENT_STATUS_CHARGING_MISSION* 2)
(intern "*CURRENT_STATUS_EXECUTING_MISSION*" (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(shadow '*CURRENT_STATUS_EXECUTING_MISSION* (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(defconstant robotnik_rms_msgs::status::*CURRENT_STATUS_EXECUTING_MISSION* 3)
(intern "*CURRENT_STATUS_PAUSE_MISSION*" (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(shadow '*CURRENT_STATUS_PAUSE_MISSION* (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(defconstant robotnik_rms_msgs::status::*CURRENT_STATUS_PAUSE_MISSION* 4)
(intern "*CURRENT_STATUS_CANCEL_MISSION*" (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(shadow '*CURRENT_STATUS_CANCEL_MISSION* (find-package "ROBOTNIK_RMS_MSGS::STATUS"))
(defconstant robotnik_rms_msgs::status::*CURRENT_STATUS_CANCEL_MISSION* 5)
(defclass robotnik_rms_msgs::status
  :super ros::object
  :slots (_current_status _description _message _mission_queue ))

(defmethod robotnik_rms_msgs::status
  (:init
   (&key
    ((:current_status __current_status) 0)
    ((:description __description) "")
    ((:message __message) "")
    ((:mission_queue __mission_queue) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _current_status (round __current_status))
   (setq _description (string __description))
   (setq _message (string __message))
   (setq _mission_queue __mission_queue)
   self)
  (:current_status
   (&optional __current_status)
   (if __current_status (setq _current_status __current_status)) _current_status)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:mission_queue
   (&optional __mission_queue)
   (if __mission_queue (setq _mission_queue __mission_queue)) _mission_queue)
  (:serialization-length
   ()
   (+
    ;; int32 _current_status
    4
    ;; string _description
    4 (length _description)
    ;; string _message
    4 (length _message)
    ;; string[] _mission_queue
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _mission_queue)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _current_status
       (write-long _current_status s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string[] _mission_queue
     (write-long (length _mission_queue) s)
     (dolist (elem _mission_queue)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _current_status
     (setq _current_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _mission_queue
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mission_queue (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _mission_queue i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get robotnik_rms_msgs::status :md5sum-) "5509b20dd1c7bf7cdd887ab3ce4eec0b")
(setf (get robotnik_rms_msgs::status :datatype-) "robotnik_rms_msgs/status")
(setf (get robotnik_rms_msgs::status :definition-)
      "int32 CURRENT_STATUS_ERROR = -1
int32 CURRENT_STATUS_PREIDLE = 0
int32 CURRENT_STATUS_IDLE = 1
int32 CURRENT_STATUS_CHARGING_MISSION = 2
int32 CURRENT_STATUS_EXECUTING_MISSION = 3
int32 CURRENT_STATUS_PAUSE_MISSION=4
int32 CURRENT_STATUS_CANCEL_MISSION=5

int32 current_status
string description
string message
string[] mission_queue

")



(provide :robotnik_rms_msgs/status "5509b20dd1c7bf7cdd887ab3ce4eec0b")


