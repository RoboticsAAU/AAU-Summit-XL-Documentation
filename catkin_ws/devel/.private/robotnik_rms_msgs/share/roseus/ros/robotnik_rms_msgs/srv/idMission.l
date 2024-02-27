;; Auto-generated. Do not edit!


(when (boundp 'robotnik_rms_msgs::idMission)
  (if (not (find-package "ROBOTNIK_RMS_MSGS"))
    (make-package "ROBOTNIK_RMS_MSGS"))
  (shadow 'idMission (find-package "ROBOTNIK_RMS_MSGS")))
(unless (find-package "ROBOTNIK_RMS_MSGS::IDMISSION")
  (make-package "ROBOTNIK_RMS_MSGS::IDMISSION"))
(unless (find-package "ROBOTNIK_RMS_MSGS::IDMISSIONREQUEST")
  (make-package "ROBOTNIK_RMS_MSGS::IDMISSIONREQUEST"))
(unless (find-package "ROBOTNIK_RMS_MSGS::IDMISSIONRESPONSE")
  (make-package "ROBOTNIK_RMS_MSGS::IDMISSIONRESPONSE"))

(in-package "ROS")





(defclass robotnik_rms_msgs::idMissionRequest
  :super ros::object
  :slots (_id_mission ))

(defmethod robotnik_rms_msgs::idMissionRequest
  (:init
   (&key
    ((:id_mission __id_mission) 0)
    )
   (send-super :init)
   (setq _id_mission (round __id_mission))
   self)
  (:id_mission
   (&optional __id_mission)
   (if __id_mission (setq _id_mission __id_mission)) _id_mission)
  (:serialization-length
   ()
   (+
    ;; int32 _id_mission
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id_mission
       (write-long _id_mission s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id_mission
     (setq _id_mission (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotnik_rms_msgs::idMissionResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robotnik_rms_msgs::idMissionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_rms_msgs::idMission
  :super ros::object
  :slots ())

(setf (get robotnik_rms_msgs::idMission :md5sum-) "dd122c1dfe0519ae39ecbff2cc0c577f")
(setf (get robotnik_rms_msgs::idMission :datatype-) "robotnik_rms_msgs/idMission")
(setf (get robotnik_rms_msgs::idMission :request) robotnik_rms_msgs::idMissionRequest)
(setf (get robotnik_rms_msgs::idMission :response) robotnik_rms_msgs::idMissionResponse)

(defmethod robotnik_rms_msgs::idMissionRequest
  (:response () (instance robotnik_rms_msgs::idMissionResponse :init)))

(setf (get robotnik_rms_msgs::idMissionRequest :md5sum-) "dd122c1dfe0519ae39ecbff2cc0c577f")
(setf (get robotnik_rms_msgs::idMissionRequest :datatype-) "robotnik_rms_msgs/idMissionRequest")
(setf (get robotnik_rms_msgs::idMissionRequest :definition-)
      "int32 id_mission
---
bool success
string message
")

(setf (get robotnik_rms_msgs::idMissionResponse :md5sum-) "dd122c1dfe0519ae39ecbff2cc0c577f")
(setf (get robotnik_rms_msgs::idMissionResponse :datatype-) "robotnik_rms_msgs/idMissionResponse")
(setf (get robotnik_rms_msgs::idMissionResponse :definition-)
      "int32 id_mission
---
bool success
string message
")



(provide :robotnik_rms_msgs/idMission "dd122c1dfe0519ae39ecbff2cc0c577f")


