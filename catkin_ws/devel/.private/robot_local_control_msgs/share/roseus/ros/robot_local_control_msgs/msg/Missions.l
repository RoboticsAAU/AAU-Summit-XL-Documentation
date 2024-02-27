;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::Missions)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'Missions (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONS")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONS"))

(in-package "ROS")
;;//! \htmlinclude Missions.msg.html


(defclass robot_local_control_msgs::Missions
  :super ros::object
  :slots (_current _last ))

(defmethod robot_local_control_msgs::Missions
  (:init
   (&key
    ((:current __current) (instance robot_local_control_msgs::MissionStatus :init))
    ((:last __last) (let (r) (dotimes (i 0) (push (instance robot_local_control_msgs::MissionStatus :init) r)) r))
    )
   (send-super :init)
   (setq _current __current)
   (setq _last __last)
   self)
  (:current
   (&rest __current)
   (if (keywordp (car __current))
       (send* _current __current)
     (progn
       (if __current (setq _current (car __current)))
       _current)))
  (:last
   (&rest __last)
   (if (keywordp (car __last))
       (send* _last __last)
     (progn
       (if __last (setq _last (car __last)))
       _last)))
  (:serialization-length
   ()
   (+
    ;; robot_local_control_msgs/MissionStatus _current
    (send _current :serialization-length)
    ;; robot_local_control_msgs/MissionStatus[] _last
    (apply #'+ (send-all _last :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/MissionStatus _current
       (send _current :serialize s)
     ;; robot_local_control_msgs/MissionStatus[] _last
     (write-long (length _last) s)
     (dolist (elem _last)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/MissionStatus _current
     (send _current :deserialize buf ptr-) (incf ptr- (send _current :serialization-length))
   ;; robot_local_control_msgs/MissionStatus[] _last
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _last (let (r) (dotimes (i n) (push (instance robot_local_control_msgs::MissionStatus :init) r)) r))
     (dolist (elem- _last)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::Missions :md5sum-) "ce8a7c135707fc7974e11a568a86af9a")
(setf (get robot_local_control_msgs::Missions :datatype-) "robot_local_control_msgs/Missions")
(setf (get robot_local_control_msgs::Missions :definition-)
      "# current mission
MissionStatus current
# list of old missions
MissionStatus[] last

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



")



(provide :robot_local_control_msgs/Missions "ce8a7c135707fc7974e11a568a86af9a")


