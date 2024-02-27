;; Auto-generated. Do not edit!


(when (boundp 'robotnik_rms_msgs::missionManager)
  (if (not (find-package "ROBOTNIK_RMS_MSGS"))
    (make-package "ROBOTNIK_RMS_MSGS"))
  (shadow 'missionManager (find-package "ROBOTNIK_RMS_MSGS")))
(unless (find-package "ROBOTNIK_RMS_MSGS::MISSIONMANAGER")
  (make-package "ROBOTNIK_RMS_MSGS::MISSIONMANAGER"))
(unless (find-package "ROBOTNIK_RMS_MSGS::MISSIONMANAGERREQUEST")
  (make-package "ROBOTNIK_RMS_MSGS::MISSIONMANAGERREQUEST"))
(unless (find-package "ROBOTNIK_RMS_MSGS::MISSIONMANAGERRESPONSE")
  (make-package "ROBOTNIK_RMS_MSGS::MISSIONMANAGERRESPONSE"))

(in-package "ROS")





(defclass robotnik_rms_msgs::missionManagerRequest
  :super ros::object
  :slots (_mission ))

(defmethod robotnik_rms_msgs::missionManagerRequest
  (:init
   (&key
    ((:mission __mission) (instance robotnik_rms_msgs::mission :init))
    )
   (send-super :init)
   (setq _mission __mission)
   self)
  (:mission
   (&rest __mission)
   (if (keywordp (car __mission))
       (send* _mission __mission)
     (progn
       (if __mission (setq _mission (car __mission)))
       _mission)))
  (:serialization-length
   ()
   (+
    ;; robotnik_rms_msgs/mission _mission
    (send _mission :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_rms_msgs/mission _mission
       (send _mission :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_rms_msgs/mission _mission
     (send _mission :deserialize buf ptr-) (incf ptr- (send _mission :serialization-length))
   ;;
   self)
  )

(defclass robotnik_rms_msgs::missionManagerResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robotnik_rms_msgs::missionManagerResponse
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

(defclass robotnik_rms_msgs::missionManager
  :super ros::object
  :slots ())

(setf (get robotnik_rms_msgs::missionManager :md5sum-) "eed017ea040ecaef8187ff321acee5e0")
(setf (get robotnik_rms_msgs::missionManager :datatype-) "robotnik_rms_msgs/missionManager")
(setf (get robotnik_rms_msgs::missionManager :request) robotnik_rms_msgs::missionManagerRequest)
(setf (get robotnik_rms_msgs::missionManager :response) robotnik_rms_msgs::missionManagerResponse)

(defmethod robotnik_rms_msgs::missionManagerRequest
  (:response () (instance robotnik_rms_msgs::missionManagerResponse :init)))

(setf (get robotnik_rms_msgs::missionManagerRequest :md5sum-) "eed017ea040ecaef8187ff321acee5e0")
(setf (get robotnik_rms_msgs::missionManagerRequest :datatype-) "robotnik_rms_msgs/missionManagerRequest")
(setf (get robotnik_rms_msgs::missionManagerRequest :definition-)
      "robotnik_rms_msgs/mission mission

================================================================================
MSG: robotnik_rms_msgs/mission
string name_mission
int32 id_mission
string description
robotnik_rms_msgs/action[] actions

================================================================================
MSG: robotnik_rms_msgs/action

int32 type_action
string id_action
string name_action
string description
---
bool success
string message
")

(setf (get robotnik_rms_msgs::missionManagerResponse :md5sum-) "eed017ea040ecaef8187ff321acee5e0")
(setf (get robotnik_rms_msgs::missionManagerResponse :datatype-) "robotnik_rms_msgs/missionManagerResponse")
(setf (get robotnik_rms_msgs::missionManagerResponse :definition-)
      "robotnik_rms_msgs/mission mission

================================================================================
MSG: robotnik_rms_msgs/mission
string name_mission
int32 id_mission
string description
robotnik_rms_msgs/action[] actions

================================================================================
MSG: robotnik_rms_msgs/action

int32 type_action
string id_action
string name_action
string description
---
bool success
string message
")



(provide :robotnik_rms_msgs/missionManager "eed017ea040ecaef8187ff321acee5e0")


