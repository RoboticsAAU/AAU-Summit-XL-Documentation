;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::GoToNodePetition)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'GoToNodePetition (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GOTONODEPETITION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GOTONODEPETITION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GOTONODEPETITIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GOTONODEPETITIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GOTONODEPETITIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GOTONODEPETITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "PROCEDURES_MSGS"))
  (ros::roseus-add-msgs "procedures_msgs"))


(defclass robot_local_control_msgs::GoToNodePetitionRequest
  :super ros::object
  :slots (_procedure ))

(defmethod robot_local_control_msgs::GoToNodePetitionRequest
  (:init
   (&key
    ((:procedure __procedure) (instance robot_local_control_msgs::GoToNode :init))
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
    ;; robot_local_control_msgs/GoToNode _procedure
    (send _procedure :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/GoToNode _procedure
       (send _procedure :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/GoToNode _procedure
     (send _procedure :deserialize buf ptr-) (incf ptr- (send _procedure :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::GoToNodePetitionResponse
  :super ros::object
  :slots (_state _result ))

(defmethod robot_local_control_msgs::GoToNodePetitionResponse
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

(defclass robot_local_control_msgs::GoToNodePetition
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::GoToNodePetition :md5sum-) "f47b431da3a46b0e2ecbb47d5df81a14")
(setf (get robot_local_control_msgs::GoToNodePetition :datatype-) "robot_local_control_msgs/GoToNodePetition")
(setf (get robot_local_control_msgs::GoToNodePetition :request) robot_local_control_msgs::GoToNodePetitionRequest)
(setf (get robot_local_control_msgs::GoToNodePetition :response) robot_local_control_msgs::GoToNodePetitionResponse)

(defmethod robot_local_control_msgs::GoToNodePetitionRequest
  (:response () (instance robot_local_control_msgs::GoToNodePetitionResponse :init)))

(setf (get robot_local_control_msgs::GoToNodePetitionRequest :md5sum-) "f47b431da3a46b0e2ecbb47d5df81a14")
(setf (get robot_local_control_msgs::GoToNodePetitionRequest :datatype-) "robot_local_control_msgs/GoToNodePetitionRequest")
(setf (get robot_local_control_msgs::GoToNodePetitionRequest :definition-)
      "GoToNode procedure 

================================================================================
MSG: robot_local_control_msgs/GoToNode
uint16 node
float32 orientation_offset
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

(setf (get robot_local_control_msgs::GoToNodePetitionResponse :md5sum-) "f47b431da3a46b0e2ecbb47d5df81a14")
(setf (get robot_local_control_msgs::GoToNodePetitionResponse :datatype-) "robot_local_control_msgs/GoToNodePetitionResponse")
(setf (get robot_local_control_msgs::GoToNodePetitionResponse :definition-)
      "GoToNode procedure 

================================================================================
MSG: robot_local_control_msgs/GoToNode
uint16 node
float32 orientation_offset
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



(provide :robot_local_control_msgs/GoToNodePetition "f47b431da3a46b0e2ecbb47d5df81a14")


