;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MagneticPickPetition)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MagneticPickPetition (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICPICKPETITION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICPICKPETITION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICPICKPETITIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICPICKPETITIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICPICKPETITIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICPICKPETITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "PROCEDURES_MSGS"))
  (ros::roseus-add-msgs "procedures_msgs"))


(defclass robot_local_control_msgs::MagneticPickPetitionRequest
  :super ros::object
  :slots (_procedure ))

(defmethod robot_local_control_msgs::MagneticPickPetitionRequest
  (:init
   (&key
    ((:procedure __procedure) (instance robot_local_control_msgs::MagneticPick :init))
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
    ;; robot_local_control_msgs/MagneticPick _procedure
    (send _procedure :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/MagneticPick _procedure
       (send _procedure :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/MagneticPick _procedure
     (send _procedure :deserialize buf ptr-) (incf ptr- (send _procedure :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::MagneticPickPetitionResponse
  :super ros::object
  :slots (_state _result ))

(defmethod robot_local_control_msgs::MagneticPickPetitionResponse
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

(defclass robot_local_control_msgs::MagneticPickPetition
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::MagneticPickPetition :md5sum-) "c09f6d2fd58322a2c6781439e8e1f16b")
(setf (get robot_local_control_msgs::MagneticPickPetition :datatype-) "robot_local_control_msgs/MagneticPickPetition")
(setf (get robot_local_control_msgs::MagneticPickPetition :request) robot_local_control_msgs::MagneticPickPetitionRequest)
(setf (get robot_local_control_msgs::MagneticPickPetition :response) robot_local_control_msgs::MagneticPickPetitionResponse)

(defmethod robot_local_control_msgs::MagneticPickPetitionRequest
  (:response () (instance robot_local_control_msgs::MagneticPickPetitionResponse :init)))

(setf (get robot_local_control_msgs::MagneticPickPetitionRequest :md5sum-) "c09f6d2fd58322a2c6781439e8e1f16b")
(setf (get robot_local_control_msgs::MagneticPickPetitionRequest :datatype-) "robot_local_control_msgs/MagneticPickPetitionRequest")
(setf (get robot_local_control_msgs::MagneticPickPetitionRequest :definition-)
      "MagneticPick procedure 

================================================================================
MSG: robot_local_control_msgs/MagneticPick
uint32 lane
uint32 cart_position
string turn_direction
bool allow_markers
string cart_id
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

(setf (get robot_local_control_msgs::MagneticPickPetitionResponse :md5sum-) "c09f6d2fd58322a2c6781439e8e1f16b")
(setf (get robot_local_control_msgs::MagneticPickPetitionResponse :datatype-) "robot_local_control_msgs/MagneticPickPetitionResponse")
(setf (get robot_local_control_msgs::MagneticPickPetitionResponse :definition-)
      "MagneticPick procedure 

================================================================================
MSG: robot_local_control_msgs/MagneticPick
uint32 lane
uint32 cart_position
string turn_direction
bool allow_markers
string cart_id
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



(provide :robot_local_control_msgs/MagneticPickPetition "c09f6d2fd58322a2c6781439e8e1f16b")


