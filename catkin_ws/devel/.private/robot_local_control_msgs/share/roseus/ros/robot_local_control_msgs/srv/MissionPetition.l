;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MissionPetition)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MissionPetition (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPETITION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPETITION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPETITIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPETITIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPETITIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPETITIONRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPETITIONREQUEST"))
(shadow '*START* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPETITIONREQUEST"))
(defconstant robot_local_control_msgs::MissionPetitionRequest::*START* "start")
(intern "*STOP*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPETITIONREQUEST"))
(shadow '*STOP* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPETITIONREQUEST"))
(defconstant robot_local_control_msgs::MissionPetitionRequest::*STOP* "stop")
(defclass robot_local_control_msgs::MissionPetitionRequest
  :super ros::object
  :slots (_mission _action ))

(defmethod robot_local_control_msgs::MissionPetitionRequest
  (:init
   (&key
    ((:mission __mission) (instance robot_local_control_msgs::MissionStatus :init))
    ((:action __action) "")
    )
   (send-super :init)
   (setq _mission __mission)
   (setq _action (string __action))
   self)
  (:mission
   (&rest __mission)
   (if (keywordp (car __mission))
       (send* _mission __mission)
     (progn
       (if __mission (setq _mission (car __mission)))
       _mission)))
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; robot_local_control_msgs/MissionStatus _mission
    (send _mission :serialization-length)
    ;; string _action
    4 (length _action)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/MissionStatus _mission
       (send _mission :serialize s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/MissionStatus _mission
     (send _mission :deserialize buf ptr-) (incf ptr- (send _mission :serialization-length))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_local_control_msgs::MissionPetitionResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_local_control_msgs::MissionPetitionResponse
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

(defclass robot_local_control_msgs::MissionPetition
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::MissionPetition :md5sum-) "d23b48ec07b484e69921f98c567e661e")
(setf (get robot_local_control_msgs::MissionPetition :datatype-) "robot_local_control_msgs/MissionPetition")
(setf (get robot_local_control_msgs::MissionPetition :request) robot_local_control_msgs::MissionPetitionRequest)
(setf (get robot_local_control_msgs::MissionPetition :response) robot_local_control_msgs::MissionPetitionResponse)

(defmethod robot_local_control_msgs::MissionPetitionRequest
  (:response () (instance robot_local_control_msgs::MissionPetitionResponse :init)))

(setf (get robot_local_control_msgs::MissionPetitionRequest :md5sum-) "d23b48ec07b484e69921f98c567e661e")
(setf (get robot_local_control_msgs::MissionPetitionRequest :datatype-) "robot_local_control_msgs/MissionPetitionRequest")
(setf (get robot_local_control_msgs::MissionPetitionRequest :definition-)
      "# Actions to tell mission component what to do
# START, starts a mission
# STOP, stops a mission

string START=start
string STOP=stop

MissionStatus mission
string action

================================================================================
MSG: robot_local_control_msgs/MissionStatus
# MISSION STATES
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


---
bool success
string message

")

(setf (get robot_local_control_msgs::MissionPetitionResponse :md5sum-) "d23b48ec07b484e69921f98c567e661e")
(setf (get robot_local_control_msgs::MissionPetitionResponse :datatype-) "robot_local_control_msgs/MissionPetitionResponse")
(setf (get robot_local_control_msgs::MissionPetitionResponse :definition-)
      "# Actions to tell mission component what to do
# START, starts a mission
# STOP, stops a mission

string START=start
string STOP=stop

MissionStatus mission
string action

================================================================================
MSG: robot_local_control_msgs/MissionStatus
# MISSION STATES
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


---
bool success
string message

")



(provide :robot_local_control_msgs/MissionPetition "d23b48ec07b484e69921f98c567e661e")


