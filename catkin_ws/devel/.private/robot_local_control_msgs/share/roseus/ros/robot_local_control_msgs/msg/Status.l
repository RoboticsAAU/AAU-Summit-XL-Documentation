;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::Status)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'Status (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html


(intern "*ROBOT_STATE_INIT*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*ROBOT_STATE_INIT* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*ROBOT_STATE_INIT* "init")
(intern "*ROBOT_STATE_STANDBY*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*ROBOT_STATE_STANDBY* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*ROBOT_STATE_STANDBY* "standby")
(intern "*ROBOT_STATE_READY*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*ROBOT_STATE_READY* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*ROBOT_STATE_READY* "ready")
(intern "*ROBOT_STATE_EMERGENCY*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*ROBOT_STATE_EMERGENCY* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*ROBOT_STATE_EMERGENCY* "emergency")
(intern "*ROBOT_STATE_FAILURE*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*ROBOT_STATE_FAILURE* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*ROBOT_STATE_FAILURE* "failure")
(intern "*CONTROL_STATE_UNKNOWN*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*CONTROL_STATE_UNKNOWN* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*CONTROL_STATE_UNKNOWN* "unknown")
(intern "*CONTROL_STATE_AUTO*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*CONTROL_STATE_AUTO* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*CONTROL_STATE_AUTO* "auto")
(intern "*CONTROL_STATE_MANUAL*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*CONTROL_STATE_MANUAL* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*CONTROL_STATE_MANUAL* "manual")
(intern "*CONTROL_STATE_FOLLOW*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*CONTROL_STATE_FOLLOW* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*CONTROL_STATE_FOLLOW* "follow")
(intern "*OPERATION_STATE_IDLE*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*OPERATION_STATE_IDLE* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*OPERATION_STATE_IDLE* "idle")
(intern "*OPERATION_STATE_CALIBRATION*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*OPERATION_STATE_CALIBRATION* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*OPERATION_STATE_CALIBRATION* "calibrating")
(intern "*OPERATION_STATE_MOVING*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*OPERATION_STATE_MOVING* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*OPERATION_STATE_MOVING* "moving")
(intern "*OPERATION_STATE_ELEVATION_RAISE*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*OPERATION_STATE_ELEVATION_RAISE* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*OPERATION_STATE_ELEVATION_RAISE* "raising_elevator")
(intern "*OPERATION_STATE_ELEVATION_LOWER*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*OPERATION_STATE_ELEVATION_LOWER* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*OPERATION_STATE_ELEVATION_LOWER* "lowering_elevator")
(intern "*OPERATION_STATE_BATTERY_CHARGE*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(shadow '*OPERATION_STATE_BATTERY_CHARGE* (find-package "ROBOT_LOCAL_CONTROL_MSGS::STATUS"))
(defconstant robot_local_control_msgs::Status::*OPERATION_STATE_BATTERY_CHARGE* "charging")
(defclass robot_local_control_msgs::Status
  :super ros::object
  :slots (_robot_id _robot_state _control_state _operation_state _localization_status _navigation_status _robot_status _signal_manager ))

(defmethod robot_local_control_msgs::Status
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:robot_state __robot_state) "")
    ((:control_state __control_state) "")
    ((:operation_state __operation_state) "")
    ((:localization_status __localization_status) (instance robot_local_control_msgs::LocalizationStatus :init))
    ((:navigation_status __navigation_status) (instance robot_local_control_msgs::NavigationStatus :init))
    ((:robot_status __robot_status) (instance robot_local_control_msgs::RobotStatus :init))
    ((:signal_manager __signal_manager) (instance robot_local_control_msgs::SignalManager :init))
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _robot_state (string __robot_state))
   (setq _control_state (string __control_state))
   (setq _operation_state (string __operation_state))
   (setq _localization_status __localization_status)
   (setq _navigation_status __navigation_status)
   (setq _robot_status __robot_status)
   (setq _signal_manager __signal_manager)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:robot_state
   (&optional __robot_state)
   (if __robot_state (setq _robot_state __robot_state)) _robot_state)
  (:control_state
   (&optional __control_state)
   (if __control_state (setq _control_state __control_state)) _control_state)
  (:operation_state
   (&optional __operation_state)
   (if __operation_state (setq _operation_state __operation_state)) _operation_state)
  (:localization_status
   (&rest __localization_status)
   (if (keywordp (car __localization_status))
       (send* _localization_status __localization_status)
     (progn
       (if __localization_status (setq _localization_status (car __localization_status)))
       _localization_status)))
  (:navigation_status
   (&rest __navigation_status)
   (if (keywordp (car __navigation_status))
       (send* _navigation_status __navigation_status)
     (progn
       (if __navigation_status (setq _navigation_status (car __navigation_status)))
       _navigation_status)))
  (:robot_status
   (&rest __robot_status)
   (if (keywordp (car __robot_status))
       (send* _robot_status __robot_status)
     (progn
       (if __robot_status (setq _robot_status (car __robot_status)))
       _robot_status)))
  (:signal_manager
   (&rest __signal_manager)
   (if (keywordp (car __signal_manager))
       (send* _signal_manager __signal_manager)
     (progn
       (if __signal_manager (setq _signal_manager (car __signal_manager)))
       _signal_manager)))
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _robot_state
    4 (length _robot_state)
    ;; string _control_state
    4 (length _control_state)
    ;; string _operation_state
    4 (length _operation_state)
    ;; robot_local_control_msgs/LocalizationStatus _localization_status
    (send _localization_status :serialization-length)
    ;; robot_local_control_msgs/NavigationStatus _navigation_status
    (send _navigation_status :serialization-length)
    ;; robot_local_control_msgs/RobotStatus _robot_status
    (send _robot_status :serialization-length)
    ;; robot_local_control_msgs/SignalManager _signal_manager
    (send _signal_manager :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _robot_state
       (write-long (length _robot_state) s) (princ _robot_state s)
     ;; string _control_state
       (write-long (length _control_state) s) (princ _control_state s)
     ;; string _operation_state
       (write-long (length _operation_state) s) (princ _operation_state s)
     ;; robot_local_control_msgs/LocalizationStatus _localization_status
       (send _localization_status :serialize s)
     ;; robot_local_control_msgs/NavigationStatus _navigation_status
       (send _navigation_status :serialize s)
     ;; robot_local_control_msgs/RobotStatus _robot_status
       (send _robot_status :serialize s)
     ;; robot_local_control_msgs/SignalManager _signal_manager
       (send _signal_manager :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _control_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _operation_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operation_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robot_local_control_msgs/LocalizationStatus _localization_status
     (send _localization_status :deserialize buf ptr-) (incf ptr- (send _localization_status :serialization-length))
   ;; robot_local_control_msgs/NavigationStatus _navigation_status
     (send _navigation_status :deserialize buf ptr-) (incf ptr- (send _navigation_status :serialization-length))
   ;; robot_local_control_msgs/RobotStatus _robot_status
     (send _robot_status :deserialize buf ptr-) (incf ptr- (send _robot_status :serialization-length))
   ;; robot_local_control_msgs/SignalManager _signal_manager
     (send _signal_manager :deserialize buf ptr-) (incf ptr- (send _signal_manager :serialization-length))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::Status :md5sum-) "9bca84f741e3aaa1c4bf0c982726b9dd")
(setf (get robot_local_control_msgs::Status :datatype-) "robot_local_control_msgs/Status")
(setf (get robot_local_control_msgs::Status :definition-)
      "# GLOBAL ROBOT STATE
# init: the robot is initializing
# standby: the robot is ready to receive orders. Power saving behaviours can be applied
# ready: the robot is ready to work or working
# emergency: the robot cannot work/operate correctly temporary. It can imply a recovery procedure or an external action from the operator
# failure: the robot is not working. It needs the operator intervention and probably restart/reboot the robot
string ROBOT_STATE_INIT=init
string ROBOT_STATE_STANDBY=standby
string ROBOT_STATE_READY=ready
string ROBOT_STATE_EMERGENCY=emergency
string ROBOT_STATE_FAILURE=failure


# CONTROL STATES OF THE ROBOT
# auto: the robot is moving autonomously
# manual: the robot is being tele-operated by an operator
# follow: the robot is following a person
string CONTROL_STATE_UNKNOWN=unknown
string CONTROL_STATE_AUTO=auto
string CONTROL_STATE_MANUAL=manual
string CONTROL_STATE_FOLLOW=follow


# OPERATIONAL STATES
# Defines what's doing the robot
# idle: the robot is doing nothing
# calibrating: the robot is calibrating
# moving: the robot is moving
# raising: the elevator is raising
# lowering: the elevator is lowering
# charging: the robot is charging the battery
string OPERATION_STATE_IDLE=idle
string OPERATION_STATE_CALIBRATION=calibrating
string OPERATION_STATE_MOVING=moving
string OPERATION_STATE_ELEVATION_RAISE=raising_elevator
string OPERATION_STATE_ELEVATION_LOWER=lowering_elevator
string OPERATION_STATE_BATTERY_CHARGE=charging


###############################################################################################

# Human readable ID
string robot_id

# GLOBAL/Overall state of the component or robot
# INIT, STANDBY, READY, EMERGENCY, FAILURE
string robot_state

# ROBOT OPERATION MODE
# AUTO, MANUAL, FOLLOW
string control_state

# idle, calibrating, moving, raising_elevator,...
string operation_state

# Robot position (Define custom pose type)
# RobotPose pose
# type: gps, amcl, gmapping
LocalizationStatus localization_status

# Navigation Status
# move_base, purepursuit, docking
NavigationStatus navigation_status

# Robot status: batt, lights, acoustic signal
# odometry
RobotStatus robot_status

# Signal manager: array with the signal of each sensor
SignalManager signal_manager



# clasificarlo por tipos (action, localization, sensors,controllers...)
# string[] state_procedures

================================================================================
MSG: robot_local_control_msgs/LocalizationStatus
# Type of localization systems used
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

================================================================================
MSG: robot_local_control_msgs/NavigationStatus
# type of navigation package/algorithm currently used
string NAVIGATION_TYPE_NONE=none
# move_base
string NAVIGATION_TYPE_1=1
# purepursuit
string NAVIGATION_TYPE_2=2
# Dock
string NAVIGATION_TYPE_3=3 

# state of the navigation node running
string NAVIGATION_STATE_INIT=init
string NAVIGATION_STATE_STANDBY=standby
string NAVIGATION_STATE_READY=ready
string NAVIGATION_STATE_EMERGENCY=emergency
string NAVIGATION_STATE_FAILURE=failure

# Navigation algorithm being used
string type

# INIT, READY, EMERGENCY, FAILURE
string state

================================================================================
MSG: robot_local_control_msgs/RobotStatus
# robot battery
robotnik_msgs/BatteryStatus battery

# Robot emergency stop
bool emergency_stop

# lights
# acoustic signal
# bool acoustic_signal

# Robot internal odometry
Pose2DStamped pose
Twist2D velocity

# Safety status
robotnik_msgs/SafetyModuleStatus safety_status

# Battery Docking status
robotnik_msgs/BatteryDockingStatus battery_docking_status

ControllerStatus[] controllers

SensorStatus[] sensors
robotnik_msgs/ElevatorStatus elevator

================================================================================
MSG: robotnik_msgs/BatteryStatus
float32 voltage			# in volts
float32 current			# in amperes
float32 level			# in %
uint32 time_remaining		# in minutes
uint32 time_charging            # in minutes 
bool is_charging                # true when connected

================================================================================
MSG: robot_local_control_msgs/Twist2D
float64 linear_x
float64 linear_y
float64 angular_z

================================================================================
MSG: robotnik_msgs/SafetyModuleStatus
# robot safety mode
string SAFE=safe
string OVERRIDABLE=overridable
string EMERGENCY=emergency
string LASER_MUTE=laser_mute

string safety_mode
bool charging
bool emergency_stop        # if e-stop is pressed
bool safety_stop           # if system is stopped due to safety system
bool safety_overrided      # if safety system is overrided
bool lasers_on_standby     # if lasers don't have power
float64 current_speed       # current speed measured by safety system
float64 speed_at_safety_stop  # speed measured at last safety stop by safety system

robotnik_msgs/LaserMode lasers_mode
robotnik_msgs/LaserStatus[] lasers_status

================================================================================
MSG: robotnik_msgs/LaserMode
string STANDARD=standard
string DOCKING_STATION=docking_station
string CART=cart
string CART_DOCKING_CART=cart_docking_cart
string DOCKING_CART=docking_cart
string REDUCED=reduced
string INVALID=invalid

string name

================================================================================
MSG: robotnik_msgs/LaserStatus
string name
bool detecting_obstacles
bool contaminated
bool free_warning
# one input per each warning zone.
# first areas are closer to the robot (i.e. more restrictive)
bool[] warning_zones 

================================================================================
MSG: robotnik_msgs/BatteryDockingStatus
# Modes of operation:
# no docking station contacts
string MODE_DISABLED=disabled
# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw
string MODE_AUTO_HW=automatic_hw
# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw
string MODE_AUTO_SW=automatic_sw
# Unattended relay detection & and manual activation of the charging relay
string MODE_MANUAL_SW=manual_sw

string operation_mode
	
bool contact_relay_status	# shows if there's contact with the charger
bool charger_relay_status   # shows if the relay for the charge is active or not

================================================================================
MSG: robot_local_control_msgs/ControllerStatus
# Human readable name
string name

# Type of controller
string type

# INIT, READY, EMERGENCY, FAILURE
string state

================================================================================
MSG: robot_local_control_msgs/SensorStatus
# Human readable name
string name

# Type of sensor
string type

# INIT, READY, EMERGENCY, FAILURE
string state

================================================================================
MSG: robotnik_msgs/ElevatorStatus
# state
string RAISING=raising
string LOWERING=lowering
string IDLE=idle
string ERROR_G_IO=error_getting_io
string ERROR_S_IO=error_setting_io
string ERROR_TIMEOUT=error_timeout_in_action
# position
string UP=up
string DOWN=down
string UNKNOWN=unknown
# IDLE, RAISING, LOWERING
string state
# UP, DOWN, UNKNOWN
string position
float32 height

================================================================================
MSG: robot_local_control_msgs/SignalManager
# INIT, READY, EMERGENCY, FAILURE
string state
# The state of the global signal
string signal_state
# The state of each signal_manager node
robotnik_signal_msgs/SignalStatus[] signals_status
================================================================================
MSG: robotnik_signal_msgs/SignalStatus
# signal_names
string SIGNAL_CHARGING=charging
string SIGNAL_SAFETY_STANDBY=safety_standby
string SIGNAL_EMERGENCY_STOP=emergency_stop
string SIGNAL_SAFETY_OBSTACLE_DETECTED=safety_obstacle_detected
string SIGNAL_LOW_BATTERY=low_battery
string SIGNAL_BASE_CONTROLLER_ERROR=base_controller_error
string SIGNAL_ARM_CONTROLLER_ERROR=arm_controller_error
string SIGNAL_SENSOR_ERROR=sensor_error
string SIGNAL_ROBOT_IDLE=robot_idle
string SIGNAL_ROBOT_MOVING=robot_moving
string SIGNAL_RAISING_ELEVATOR=raising_elevator
string SIGNAL_LOWERING_ELEVATOR=lowering_elevator

string node_name
string[] active_signals
")



(provide :robot_local_control_msgs/Status "9bca84f741e3aaa1c4bf0c982726b9dd")


