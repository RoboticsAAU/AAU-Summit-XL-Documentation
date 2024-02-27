;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::ChargePetition)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'ChargePetition (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::CHARGEPETITION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::CHARGEPETITION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::CHARGEPETITIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::CHARGEPETITIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::CHARGEPETITIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::CHARGEPETITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "PROCEDURES_MSGS"))
  (ros::roseus-add-msgs "procedures_msgs"))


(defclass robot_local_control_msgs::ChargePetitionRequest
  :super ros::object
  :slots (_procedure ))

(defmethod robot_local_control_msgs::ChargePetitionRequest
  (:init
   (&key
    ((:procedure __procedure) (instance robot_local_control_msgs::Charge :init))
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
    ;; robot_local_control_msgs/Charge _procedure
    (send _procedure :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/Charge _procedure
       (send _procedure :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/Charge _procedure
     (send _procedure :deserialize buf ptr-) (incf ptr- (send _procedure :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::ChargePetitionResponse
  :super ros::object
  :slots (_state _result ))

(defmethod robot_local_control_msgs::ChargePetitionResponse
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

(defclass robot_local_control_msgs::ChargePetition
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::ChargePetition :md5sum-) "d6d7f27a9204b33d4b52fe501814a3cf")
(setf (get robot_local_control_msgs::ChargePetition :datatype-) "robot_local_control_msgs/ChargePetition")
(setf (get robot_local_control_msgs::ChargePetition :request) robot_local_control_msgs::ChargePetitionRequest)
(setf (get robot_local_control_msgs::ChargePetition :response) robot_local_control_msgs::ChargePetitionResponse)

(defmethod robot_local_control_msgs::ChargePetitionRequest
  (:response () (instance robot_local_control_msgs::ChargePetitionResponse :init)))

(setf (get robot_local_control_msgs::ChargePetitionRequest :md5sum-) "d6d7f27a9204b33d4b52fe501814a3cf")
(setf (get robot_local_control_msgs::ChargePetitionRequest :datatype-) "robot_local_control_msgs/ChargePetitionRequest")
(setf (get robot_local_control_msgs::ChargePetitionRequest :definition-)
      "Charge procedure 

================================================================================
MSG: robot_local_control_msgs/Charge
string charge_station
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

(setf (get robot_local_control_msgs::ChargePetitionResponse :md5sum-) "d6d7f27a9204b33d4b52fe501814a3cf")
(setf (get robot_local_control_msgs::ChargePetitionResponse :datatype-) "robot_local_control_msgs/ChargePetitionResponse")
(setf (get robot_local_control_msgs::ChargePetitionResponse :definition-)
      "Charge procedure 

================================================================================
MSG: robot_local_control_msgs/Charge
string charge_station
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



(provide :robot_local_control_msgs/ChargePetition "d6d7f27a9204b33d4b52fe501814a3cf")

