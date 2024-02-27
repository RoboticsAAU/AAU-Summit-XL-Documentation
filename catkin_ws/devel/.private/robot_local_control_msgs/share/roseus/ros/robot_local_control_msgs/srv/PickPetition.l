;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::PickPetition)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'PickPetition (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::PICKPETITION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::PICKPETITION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::PICKPETITIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::PICKPETITIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::PICKPETITIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::PICKPETITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "PROCEDURES_MSGS"))
  (ros::roseus-add-msgs "procedures_msgs"))


(defclass robot_local_control_msgs::PickPetitionRequest
  :super ros::object
  :slots (_procedure ))

(defmethod robot_local_control_msgs::PickPetitionRequest
  (:init
   (&key
    ((:procedure __procedure) (instance robot_local_control_msgs::Pick :init))
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
    ;; robot_local_control_msgs/Pick _procedure
    (send _procedure :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/Pick _procedure
       (send _procedure :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/Pick _procedure
     (send _procedure :deserialize buf ptr-) (incf ptr- (send _procedure :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::PickPetitionResponse
  :super ros::object
  :slots (_state _result ))

(defmethod robot_local_control_msgs::PickPetitionResponse
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

(defclass robot_local_control_msgs::PickPetition
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::PickPetition :md5sum-) "44c7093f5d45a75a03470d3d82ca14f6")
(setf (get robot_local_control_msgs::PickPetition :datatype-) "robot_local_control_msgs/PickPetition")
(setf (get robot_local_control_msgs::PickPetition :request) robot_local_control_msgs::PickPetitionRequest)
(setf (get robot_local_control_msgs::PickPetition :response) robot_local_control_msgs::PickPetitionResponse)

(defmethod robot_local_control_msgs::PickPetitionRequest
  (:response () (instance robot_local_control_msgs::PickPetitionResponse :init)))

(setf (get robot_local_control_msgs::PickPetitionRequest :md5sum-) "44c7093f5d45a75a03470d3d82ca14f6")
(setf (get robot_local_control_msgs::PickPetitionRequest :datatype-) "robot_local_control_msgs/PickPetitionRequest")
(setf (get robot_local_control_msgs::PickPetitionRequest :definition-)
      "Pick procedure 

================================================================================
MSG: robot_local_control_msgs/Pick
string pick_frame_id # object, represented by its frame, that is to be picked
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

(setf (get robot_local_control_msgs::PickPetitionResponse :md5sum-) "44c7093f5d45a75a03470d3d82ca14f6")
(setf (get robot_local_control_msgs::PickPetitionResponse :datatype-) "robot_local_control_msgs/PickPetitionResponse")
(setf (get robot_local_control_msgs::PickPetitionResponse :definition-)
      "Pick procedure 

================================================================================
MSG: robot_local_control_msgs/Pick
string pick_frame_id # object, represented by its frame, that is to be picked
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



(provide :robot_local_control_msgs/PickPetition "44c7093f5d45a75a03470d3d82ca14f6")


