;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::FindMagneticGuidePetition)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'FindMagneticGuidePetition (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::FINDMAGNETICGUIDEPETITION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::FINDMAGNETICGUIDEPETITION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::FINDMAGNETICGUIDEPETITIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::FINDMAGNETICGUIDEPETITIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::FINDMAGNETICGUIDEPETITIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::FINDMAGNETICGUIDEPETITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "PROCEDURES_MSGS"))
  (ros::roseus-add-msgs "procedures_msgs"))


(defclass robot_local_control_msgs::FindMagneticGuidePetitionRequest
  :super ros::object
  :slots (_procedure ))

(defmethod robot_local_control_msgs::FindMagneticGuidePetitionRequest
  (:init
   (&key
    ((:procedure __procedure) (instance robot_local_control_msgs::FindMagneticGuide :init))
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
    ;; robot_local_control_msgs/FindMagneticGuide _procedure
    (send _procedure :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/FindMagneticGuide _procedure
       (send _procedure :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/FindMagneticGuide _procedure
     (send _procedure :deserialize buf ptr-) (incf ptr- (send _procedure :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::FindMagneticGuidePetitionResponse
  :super ros::object
  :slots (_state _result ))

(defmethod robot_local_control_msgs::FindMagneticGuidePetitionResponse
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

(defclass robot_local_control_msgs::FindMagneticGuidePetition
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::FindMagneticGuidePetition :md5sum-) "c389f8e9c0c15b3be21d4778fb3ad5bf")
(setf (get robot_local_control_msgs::FindMagneticGuidePetition :datatype-) "robot_local_control_msgs/FindMagneticGuidePetition")
(setf (get robot_local_control_msgs::FindMagneticGuidePetition :request) robot_local_control_msgs::FindMagneticGuidePetitionRequest)
(setf (get robot_local_control_msgs::FindMagneticGuidePetition :response) robot_local_control_msgs::FindMagneticGuidePetitionResponse)

(defmethod robot_local_control_msgs::FindMagneticGuidePetitionRequest
  (:response () (instance robot_local_control_msgs::FindMagneticGuidePetitionResponse :init)))

(setf (get robot_local_control_msgs::FindMagneticGuidePetitionRequest :md5sum-) "c389f8e9c0c15b3be21d4778fb3ad5bf")
(setf (get robot_local_control_msgs::FindMagneticGuidePetitionRequest :datatype-) "robot_local_control_msgs/FindMagneticGuidePetitionRequest")
(setf (get robot_local_control_msgs::FindMagneticGuidePetitionRequest :definition-)
      "FindMagneticGuide procedure 

================================================================================
MSG: robot_local_control_msgs/FindMagneticGuide
#maximum distance to search the guide
string turn_direction
float32 in_distance
uint32 lane
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

(setf (get robot_local_control_msgs::FindMagneticGuidePetitionResponse :md5sum-) "c389f8e9c0c15b3be21d4778fb3ad5bf")
(setf (get robot_local_control_msgs::FindMagneticGuidePetitionResponse :datatype-) "robot_local_control_msgs/FindMagneticGuidePetitionResponse")
(setf (get robot_local_control_msgs::FindMagneticGuidePetitionResponse :definition-)
      "FindMagneticGuide procedure 

================================================================================
MSG: robot_local_control_msgs/FindMagneticGuide
#maximum distance to search the guide
string turn_direction
float32 in_distance
uint32 lane
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



(provide :robot_local_control_msgs/FindMagneticGuidePetition "c389f8e9c0c15b3be21d4778fb3ad5bf")


