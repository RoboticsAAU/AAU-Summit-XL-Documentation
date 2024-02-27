;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::LocalizationStatus)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'LocalizationStatus (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LocalizationStatus.msg.html


(intern "*LOCALIZATION_TYPE_NONE*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(shadow '*LOCALIZATION_TYPE_NONE* (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(defconstant robot_local_control_msgs::LocalizationStatus::*LOCALIZATION_TYPE_NONE* "none")
(intern "*LOCALIZATION_TYPE_1*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(shadow '*LOCALIZATION_TYPE_1* (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(defconstant robot_local_control_msgs::LocalizationStatus::*LOCALIZATION_TYPE_1* "1")
(intern "*LOCALIZATION_TYPE_2*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(shadow '*LOCALIZATION_TYPE_2* (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(defconstant robot_local_control_msgs::LocalizationStatus::*LOCALIZATION_TYPE_2* "2")
(intern "*LOCALIZATION_TYPE_3*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(shadow '*LOCALIZATION_TYPE_3* (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(defconstant robot_local_control_msgs::LocalizationStatus::*LOCALIZATION_TYPE_3* "3")
(intern "*LOCALIZATION_TYPE_4*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(shadow '*LOCALIZATION_TYPE_4* (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(defconstant robot_local_control_msgs::LocalizationStatus::*LOCALIZATION_TYPE_4* "4")
(intern "*LOCALIZATION_STATE_INIT*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(shadow '*LOCALIZATION_STATE_INIT* (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(defconstant robot_local_control_msgs::LocalizationStatus::*LOCALIZATION_STATE_INIT* "init")
(intern "*LOCALIZATION_STATE_READY*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(shadow '*LOCALIZATION_STATE_READY* (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(defconstant robot_local_control_msgs::LocalizationStatus::*LOCALIZATION_STATE_READY* "ready")
(intern "*LOCALIZATION_STATE_EMERGENCY*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(shadow '*LOCALIZATION_STATE_EMERGENCY* (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(defconstant robot_local_control_msgs::LocalizationStatus::*LOCALIZATION_STATE_EMERGENCY* "emergency")
(intern "*LOCALIZATION_STATE_FAILURE*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(shadow '*LOCALIZATION_STATE_FAILURE* (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(defconstant robot_local_control_msgs::LocalizationStatus::*LOCALIZATION_STATE_FAILURE* "failure")
(intern "*LOCALIZATION_STATE_UNKNOWN*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(shadow '*LOCALIZATION_STATE_UNKNOWN* (find-package "ROBOT_LOCAL_CONTROL_MSGS::LOCALIZATIONSTATUS"))
(defconstant robot_local_control_msgs::LocalizationStatus::*LOCALIZATION_STATE_UNKNOWN* "unknown")
(defclass robot_local_control_msgs::LocalizationStatus
  :super ros::object
  :slots (_pose _reliable _environment _type _state ))

(defmethod robot_local_control_msgs::LocalizationStatus
  (:init
   (&key
    ((:pose __pose) (instance robot_local_control_msgs::Pose2DStamped :init))
    ((:reliable __reliable) nil)
    ((:environment __environment) "")
    ((:type __type) "")
    ((:state __state) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _reliable __reliable)
   (setq _environment (string __environment))
   (setq _type (string __type))
   (setq _state (string __state))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:reliable
   (&optional __reliable)
   (if __reliable (setq _reliable __reliable)) _reliable)
  (:environment
   (&optional __environment)
   (if __environment (setq _environment __environment)) _environment)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; robot_local_control_msgs/Pose2DStamped _pose
    (send _pose :serialization-length)
    ;; bool _reliable
    1
    ;; string _environment
    4 (length _environment)
    ;; string _type
    4 (length _type)
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/Pose2DStamped _pose
       (send _pose :serialize s)
     ;; bool _reliable
       (if _reliable (write-byte -1 s) (write-byte 0 s))
     ;; string _environment
       (write-long (length _environment) s) (princ _environment s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/Pose2DStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _reliable
     (setq _reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _environment
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _environment (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::LocalizationStatus :md5sum-) "070ab2c758290f3163c0493c24c6a324")
(setf (get robot_local_control_msgs::LocalizationStatus :datatype-) "robot_local_control_msgs/LocalizationStatus")
(setf (get robot_local_control_msgs::LocalizationStatus :definition-)
      "# Type of localization systems used
string LOCALIZATION_TYPE_NONE=none
# amcl
string LOCALIZATION_TYPE_1=1
# gps
string LOCALIZATION_TYPE_2=2
# cartogphr
string LOCALIZATION_TYPE_3=3
# gmapping
string LOCALIZATION_TYPE_4=4

# state of the navigation node running
string LOCALIZATION_STATE_INIT=init
string LOCALIZATION_STATE_READY=ready
string LOCALIZATION_STATE_EMERGENCY=emergency
string LOCALIZATION_STATE_FAILURE=failure
string LOCALIZATION_STATE_UNKNOWN=unknown

# Pose of the robot based on the current localization algorithm
Pose2DStamped pose

# reliability
bool reliable

# Localization environment 
string environment

# Type of localization technology
string type

# INIT, READY, EMERGENCY, FAILURE
string state

================================================================================
MSG: robot_local_control_msgs/Pose2DStamped
Header header
geometry_msgs/Pose2D pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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

")



(provide :robot_local_control_msgs/LocalizationStatus "070ab2c758290f3163c0493c24c6a324")


