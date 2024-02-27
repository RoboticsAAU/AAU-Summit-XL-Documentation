;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MissionStatus)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MissionStatus (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MissionStatus.msg.html


(intern "*UNKNOWN*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(shadow '*UNKNOWN* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(defconstant robot_local_control_msgs::MissionStatus::*UNKNOWN* "unknown")
(intern "*RUNNING*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(shadow '*RUNNING* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(defconstant robot_local_control_msgs::MissionStatus::*RUNNING* "running")
(intern "*PAUSED*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(shadow '*PAUSED* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(defconstant robot_local_control_msgs::MissionStatus::*PAUSED* "paused")
(intern "*FINISHED*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(shadow '*FINISHED* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(defconstant robot_local_control_msgs::MissionStatus::*FINISHED* "finished")
(intern "*CANCELLED*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(shadow '*CANCELLED* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(defconstant robot_local_control_msgs::MissionStatus::*CANCELLED* "cancelled")
(intern "*ERROR*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(shadow '*ERROR* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(defconstant robot_local_control_msgs::MissionStatus::*ERROR* "error")
(intern "*QUEUED*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(shadow '*QUEUED* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONSTATUS"))
(defconstant robot_local_control_msgs::MissionStatus::*QUEUED* "queued")
(defclass robot_local_control_msgs::MissionStatus
  :super ros::object
  :slots (_id _description _state ))

(defmethod robot_local_control_msgs::MissionStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:description __description) "")
    ((:state __state) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _description (string __description))
   (setq _state (string __state))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _description
    4 (length _description)
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::MissionStatus :md5sum-) "13930350bc85ee5ad0913d85d697f1b5")
(setf (get robot_local_control_msgs::MissionStatus :datatype-) "robot_local_control_msgs/MissionStatus")
(setf (get robot_local_control_msgs::MissionStatus :definition-)
      "# MISSION STATES
# States inside a mission
string UNKNOWN=unknown
string RUNNING=running
string PAUSED=paused
string FINISHED=finished
string CANCELLED=cancelled
string ERROR=error
string QUEUED=queued
# running: mission is running
# paused: mission is paused
# finished: mission finished
# canceled: mission has been canceled
# error: an error occurred during the execution of the mission
# queued: the mission is queued


#
int32 id

# ID of the mision based on string format: GOTO [4,5,6]
string description

# running, paused, finished,...
string state



")



(provide :robot_local_control_msgs/MissionStatus "13930350bc85ee5ad0913d85d697f1b5")


