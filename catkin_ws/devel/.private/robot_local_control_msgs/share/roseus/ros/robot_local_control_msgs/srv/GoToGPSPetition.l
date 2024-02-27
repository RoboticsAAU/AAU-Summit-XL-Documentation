;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::GoToGPSPetition)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'GoToGPSPetition (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GOTOGPSPETITION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GOTOGPSPETITION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GOTOGPSPETITIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GOTOGPSPETITIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GOTOGPSPETITIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GOTOGPSPETITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "PROCEDURES_MSGS"))
  (ros::roseus-add-msgs "procedures_msgs"))


(defclass robot_local_control_msgs::GoToGPSPetitionRequest
  :super ros::object
  :slots (_procedure ))

(defmethod robot_local_control_msgs::GoToGPSPetitionRequest
  (:init
   (&key
    ((:procedure __procedure) (instance robot_local_control_msgs::GoToGPS :init))
    )
   (send-super :init)
   (setq _procedure __procedure)
   self)
  (:procedure
   (&rest __procedure)
   (if (keywordp (car __procedure))
       (send* _procedure __procedure)
     (progn
       (if __procedure (setq _procedure (car __procedure)))
       _procedure)))
  (:serialization-length
   ()
   (+
    ;; robot_local_control_msgs/GoToGPS _procedure
    (send _procedure :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/GoToGPS _procedure
       (send _procedure :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/GoToGPS _procedure
     (send _procedure :deserialize buf ptr-) (incf ptr- (send _procedure :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::GoToGPSPetitionResponse
  :super ros::object
  :slots (_state _result ))

(defmethod robot_local_control_msgs::GoToGPSPetitionResponse
  (:init
   (&key
    ((:state __state) (instance procedures_msgs::ProcedureState :init))
    ((:result __result) (instance procedures_msgs::ProcedureResult :init))
    )
   (send-super :init)
   (setq _state __state)
   (setq _result __result)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; procedures_msgs/ProcedureState _state
    (send _state :serialization-length)
    ;; procedures_msgs/ProcedureResult _result
    (send _result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; procedures_msgs/ProcedureState _state
       (send _state :serialize s)
     ;; procedures_msgs/ProcedureResult _result
       (send _result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; procedures_msgs/ProcedureState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; procedures_msgs/ProcedureResult _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::GoToGPSPetition
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::GoToGPSPetition :md5sum-) "493763d0ee8512a18755f2d8534fe437")
(setf (get robot_local_control_msgs::GoToGPSPetition :datatype-) "robot_local_control_msgs/GoToGPSPetition")
(setf (get robot_local_control_msgs::GoToGPSPetition :request) robot_local_control_msgs::GoToGPSPetitionRequest)
(setf (get robot_local_control_msgs::GoToGPSPetition :response) robot_local_control_msgs::GoToGPSPetitionResponse)

(defmethod robot_local_control_msgs::GoToGPSPetitionRequest
  (:response () (instance robot_local_control_msgs::GoToGPSPetitionResponse :init)))

(setf (get robot_local_control_msgs::GoToGPSPetitionRequest :md5sum-) "493763d0ee8512a18755f2d8534fe437")
(setf (get robot_local_control_msgs::GoToGPSPetitionRequest :datatype-) "robot_local_control_msgs/GoToGPSPetitionRequest")
(setf (get robot_local_control_msgs::GoToGPSPetitionRequest :definition-)
      "GoToGPS procedure

================================================================================
MSG: robot_local_control_msgs/GoToGPS
string frame_id

PointGPS[] goals

# Sets the max velocity through the path
float32 max_velocity

================================================================================
MSG: robot_local_control_msgs/PointGPS
float64 latitude
float64 longitude
---
procedures_msgs/ProcedureState state
procedures_msgs/ProcedureResult result


================================================================================
MSG: procedures_msgs/ProcedureState
# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message
string QUEUED=queued
string RUNNING=running
string PAUSED=paused
string FINISHED=finished

# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message
# events triggered from outside
string ADDED=added
string START=start
string STOP=stop
string CANCEL=cancel
string PAUSE=pause
string RESUME=resume
# self triggered events
string FINISH=finish
string ABORT=abort

# additionally, both state and event can be UNKNOW
string UNKNOWN=unknown

ProcedureHeader header
string current_state
string last_event

================================================================================
MSG: procedures_msgs/ProcedureHeader
# id: identifies the procedure in the robot context.
# user should do not set this, but the proceduremanager
# TODO: may be replaced with uuid_msgs/UniqueID.
int32 id
# priority: priority of the current procedure. used in case procedure preemption is allowed
int32 priority
# stamp: timestamp when procedure was started.
# may be used by the procedure manager.
time stamp
# name: human readable identificator.
# set by the user, can be empty
# not used by the procedure manager to identify the procedure
string name

================================================================================
MSG: procedures_msgs/ProcedureResult
# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message
string OK=ok
string ERROR=error

string result
string message
")

(setf (get robot_local_control_msgs::GoToGPSPetitionResponse :md5sum-) "493763d0ee8512a18755f2d8534fe437")
(setf (get robot_local_control_msgs::GoToGPSPetitionResponse :datatype-) "robot_local_control_msgs/GoToGPSPetitionResponse")
(setf (get robot_local_control_msgs::GoToGPSPetitionResponse :definition-)
      "GoToGPS procedure

================================================================================
MSG: robot_local_control_msgs/GoToGPS
string frame_id

PointGPS[] goals

# Sets the max velocity through the path
float32 max_velocity

================================================================================
MSG: robot_local_control_msgs/PointGPS
float64 latitude
float64 longitude
---
procedures_msgs/ProcedureState state
procedures_msgs/ProcedureResult result


================================================================================
MSG: procedures_msgs/ProcedureState
# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message
string QUEUED=queued
string RUNNING=running
string PAUSED=paused
string FINISHED=finished

# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message
# events triggered from outside
string ADDED=added
string START=start
string STOP=stop
string CANCEL=cancel
string PAUSE=pause
string RESUME=resume
# self triggered events
string FINISH=finish
string ABORT=abort

# additionally, both state and event can be UNKNOW
string UNKNOWN=unknown

ProcedureHeader header
string current_state
string last_event

================================================================================
MSG: procedures_msgs/ProcedureHeader
# id: identifies the procedure in the robot context.
# user should do not set this, but the proceduremanager
# TODO: may be replaced with uuid_msgs/UniqueID.
int32 id
# priority: priority of the current procedure. used in case procedure preemption is allowed
int32 priority
# stamp: timestamp when procedure was started.
# may be used by the procedure manager.
time stamp
# name: human readable identificator.
# set by the user, can be empty
# not used by the procedure manager to identify the procedure
string name

================================================================================
MSG: procedures_msgs/ProcedureResult
# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message
string OK=ok
string ERROR=error

string result
string message
")



(provide :robot_local_control_msgs/GoToGPSPetition "493763d0ee8512a18755f2d8534fe437")


