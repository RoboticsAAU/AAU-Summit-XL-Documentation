;; Auto-generated. Do not edit!


(when (boundp 'procedures_msgs::ProcedureQuery)
  (if (not (find-package "PROCEDURES_MSGS"))
    (make-package "PROCEDURES_MSGS"))
  (shadow 'ProcedureQuery (find-package "PROCEDURES_MSGS")))
(unless (find-package "PROCEDURES_MSGS::PROCEDUREQUERY")
  (make-package "PROCEDURES_MSGS::PROCEDUREQUERY"))
(unless (find-package "PROCEDURES_MSGS::PROCEDUREQUERYREQUEST")
  (make-package "PROCEDURES_MSGS::PROCEDUREQUERYREQUEST"))
(unless (find-package "PROCEDURES_MSGS::PROCEDUREQUERYRESPONSE")
  (make-package "PROCEDURES_MSGS::PROCEDUREQUERYRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass procedures_msgs::ProcedureQueryRequest
  :super ros::object
  :slots (_header ))

(defmethod procedures_msgs::ProcedureQueryRequest
  (:init
   (&key
    ((:header __header) (instance procedures_msgs::ProcedureHeader :init))
    )
   (send-super :init)
   (setq _header __header)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serialization-length
   ()
   (+
    ;; procedures_msgs/ProcedureHeader _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; procedures_msgs/ProcedureHeader _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; procedures_msgs/ProcedureHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(defclass procedures_msgs::ProcedureQueryResponse
  :super ros::object
  :slots (_state _result _last_message ))

(defmethod procedures_msgs::ProcedureQueryResponse
  (:init
   (&key
    ((:state __state) (instance procedures_msgs::ProcedureState :init))
    ((:result __result) (instance procedures_msgs::ProcedureResult :init))
    ((:last_message __last_message) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _state __state)
   (setq _result __result)
   (setq _last_message __last_message)
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
  (:last_message
   (&rest __last_message)
   (if (keywordp (car __last_message))
       (send* _last_message __last_message)
     (progn
       (if __last_message (setq _last_message (car __last_message)))
       _last_message)))
  (:serialization-length
   ()
   (+
    ;; procedures_msgs/ProcedureState _state
    (send _state :serialization-length)
    ;; procedures_msgs/ProcedureResult _result
    (send _result :serialization-length)
    ;; std_msgs/String _last_message
    (send _last_message :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; procedures_msgs/ProcedureState _state
       (send _state :serialize s)
     ;; procedures_msgs/ProcedureResult _result
       (send _result :serialize s)
     ;; std_msgs/String _last_message
       (send _last_message :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; procedures_msgs/ProcedureState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; procedures_msgs/ProcedureResult _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;; std_msgs/String _last_message
     (send _last_message :deserialize buf ptr-) (incf ptr- (send _last_message :serialization-length))
   ;;
   self)
  )

(defclass procedures_msgs::ProcedureQuery
  :super ros::object
  :slots ())

(setf (get procedures_msgs::ProcedureQuery :md5sum-) "ed5e053c790e6fde7d83c20c942744f4")
(setf (get procedures_msgs::ProcedureQuery :datatype-) "procedures_msgs/ProcedureQuery")
(setf (get procedures_msgs::ProcedureQuery :request) procedures_msgs::ProcedureQueryRequest)
(setf (get procedures_msgs::ProcedureQuery :response) procedures_msgs::ProcedureQueryResponse)

(defmethod procedures_msgs::ProcedureQueryRequest
  (:response () (instance procedures_msgs::ProcedureQueryResponse :init)))

(setf (get procedures_msgs::ProcedureQueryRequest :md5sum-) "ed5e053c790e6fde7d83c20c942744f4")
(setf (get procedures_msgs::ProcedureQueryRequest :datatype-) "procedures_msgs/ProcedureQueryRequest")
(setf (get procedures_msgs::ProcedureQueryRequest :definition-)
      "ProcedureHeader header

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
---
ProcedureState state
ProcedureResult result
std_msgs/String last_message


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

================================================================================
MSG: std_msgs/String
string data
")

(setf (get procedures_msgs::ProcedureQueryResponse :md5sum-) "ed5e053c790e6fde7d83c20c942744f4")
(setf (get procedures_msgs::ProcedureQueryResponse :datatype-) "procedures_msgs/ProcedureQueryResponse")
(setf (get procedures_msgs::ProcedureQueryResponse :definition-)
      "ProcedureHeader header

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
---
ProcedureState state
ProcedureResult result
std_msgs/String last_message


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

================================================================================
MSG: std_msgs/String
string data
")



(provide :procedures_msgs/ProcedureQuery "ed5e053c790e6fde7d83c20c942744f4")


