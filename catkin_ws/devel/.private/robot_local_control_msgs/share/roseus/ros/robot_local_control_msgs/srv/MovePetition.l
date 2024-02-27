;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MovePetition)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MovePetition (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MOVEPETITION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MOVEPETITION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MOVEPETITIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MOVEPETITIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MOVEPETITIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MOVEPETITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "PROCEDURES_MSGS"))
  (ros::roseus-add-msgs "procedures_msgs"))


(defclass robot_local_control_msgs::MovePetitionRequest
  :super ros::object
  :slots (_procedure ))

(defmethod robot_local_control_msgs::MovePetitionRequest
  (:init
   (&key
    ((:procedure __procedure) (instance robot_local_control_msgs::Move :init))
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
    ;; robot_local_control_msgs/Move _procedure
    (send _procedure :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/Move _procedure
       (send _procedure :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/Move _procedure
     (send _procedure :deserialize buf ptr-) (incf ptr- (send _procedure :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::MovePetitionResponse
  :super ros::object
  :slots (_state _result ))

(defmethod robot_local_control_msgs::MovePetitionResponse
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

(defclass robot_local_control_msgs::MovePetition
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::MovePetition :md5sum-) "cc55af78eaab913b433b5360858c3990")
(setf (get robot_local_control_msgs::MovePetition :datatype-) "robot_local_control_msgs/MovePetition")
(setf (get robot_local_control_msgs::MovePetition :request) robot_local_control_msgs::MovePetitionRequest)
(setf (get robot_local_control_msgs::MovePetition :response) robot_local_control_msgs::MovePetitionResponse)

(defmethod robot_local_control_msgs::MovePetitionRequest
  (:response () (instance robot_local_control_msgs::MovePetitionResponse :init)))

(setf (get robot_local_control_msgs::MovePetitionRequest :md5sum-) "cc55af78eaab913b433b5360858c3990")
(setf (get robot_local_control_msgs::MovePetitionRequest :datatype-) "robot_local_control_msgs/MovePetitionRequest")
(setf (get robot_local_control_msgs::MovePetitionRequest :definition-)
      "Move procedure 

================================================================================
MSG: robot_local_control_msgs/Move
geometry_msgs/Pose2D goal
geometry_msgs/Twist maximum_velocity

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
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

(setf (get robot_local_control_msgs::MovePetitionResponse :md5sum-) "cc55af78eaab913b433b5360858c3990")
(setf (get robot_local_control_msgs::MovePetitionResponse :datatype-) "robot_local_control_msgs/MovePetitionResponse")
(setf (get robot_local_control_msgs::MovePetitionResponse :definition-)
      "Move procedure 

================================================================================
MSG: robot_local_control_msgs/Move
geometry_msgs/Pose2D goal
geometry_msgs/Twist maximum_velocity

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
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



(provide :robot_local_control_msgs/MovePetition "cc55af78eaab913b433b5360858c3990")


