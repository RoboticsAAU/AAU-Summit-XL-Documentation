;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::LeaveShowerPetition)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'LeaveShowerPetition (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::LEAVESHOWERPETITION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::LEAVESHOWERPETITION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::LEAVESHOWERPETITIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::LEAVESHOWERPETITIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::LEAVESHOWERPETITIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::LEAVESHOWERPETITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "PROCEDURES_MSGS"))
  (ros::roseus-add-msgs "procedures_msgs"))


(defclass robot_local_control_msgs::LeaveShowerPetitionRequest
  :super ros::object
  :slots (_procedure ))

(defmethod robot_local_control_msgs::LeaveShowerPetitionRequest
  (:init
   (&key
    ((:procedure __procedure) (instance robot_local_control_msgs::LeaveShower :init))
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
    ;; robot_local_control_msgs/LeaveShower _procedure
    (send _procedure :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/LeaveShower _procedure
       (send _procedure :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/LeaveShower _procedure
     (send _procedure :deserialize buf ptr-) (incf ptr- (send _procedure :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::LeaveShowerPetitionResponse
  :super ros::object
  :slots (_state _result ))

(defmethod robot_local_control_msgs::LeaveShowerPetitionResponse
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

(defclass robot_local_control_msgs::LeaveShowerPetition
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::LeaveShowerPetition :md5sum-) "b5fb2862b796768251af576ba2b468da")
(setf (get robot_local_control_msgs::LeaveShowerPetition :datatype-) "robot_local_control_msgs/LeaveShowerPetition")
(setf (get robot_local_control_msgs::LeaveShowerPetition :request) robot_local_control_msgs::LeaveShowerPetitionRequest)
(setf (get robot_local_control_msgs::LeaveShowerPetition :response) robot_local_control_msgs::LeaveShowerPetitionResponse)

(defmethod robot_local_control_msgs::LeaveShowerPetitionRequest
  (:response () (instance robot_local_control_msgs::LeaveShowerPetitionResponse :init)))

(setf (get robot_local_control_msgs::LeaveShowerPetitionRequest :md5sum-) "b5fb2862b796768251af576ba2b468da")
(setf (get robot_local_control_msgs::LeaveShowerPetitionRequest :datatype-) "robot_local_control_msgs/LeaveShowerPetitionRequest")
(setf (get robot_local_control_msgs::LeaveShowerPetitionRequest :definition-)
      "LeaveShower procedure 

================================================================================
MSG: robot_local_control_msgs/LeaveShower
# valid values: warehouse, production
string from
# valid values: left, right, as seen from warehouse side
string door
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

(setf (get robot_local_control_msgs::LeaveShowerPetitionResponse :md5sum-) "b5fb2862b796768251af576ba2b468da")
(setf (get robot_local_control_msgs::LeaveShowerPetitionResponse :datatype-) "robot_local_control_msgs/LeaveShowerPetitionResponse")
(setf (get robot_local_control_msgs::LeaveShowerPetitionResponse :definition-)
      "LeaveShower procedure 

================================================================================
MSG: robot_local_control_msgs/LeaveShower
# valid values: warehouse, production
string from
# valid values: left, right, as seen from warehouse side
string door
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



(provide :robot_local_control_msgs/LeaveShowerPetition "b5fb2862b796768251af576ba2b468da")


