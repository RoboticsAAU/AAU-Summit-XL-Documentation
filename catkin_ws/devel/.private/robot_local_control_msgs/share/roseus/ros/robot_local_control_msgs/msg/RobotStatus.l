;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::RobotStatus)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'RobotStatus (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::ROBOTSTATUS")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html
(if (not (find-package "ROBOTNIK_MSGS"))
  (ros::roseus-add-msgs "robotnik_msgs"))


(defclass robot_local_control_msgs::RobotStatus
  :super ros::object
  :slots (_battery _emergency_stop _pose _velocity _safety_status _battery_docking_status _controllers _sensors _elevator ))

(defmethod robot_local_control_msgs::RobotStatus
  (:init
   (&key
    ((:battery __battery) (instance robotnik_msgs::BatteryStatus :init))
    ((:emergency_stop __emergency_stop) nil)
    ((:pose __pose) (instance robot_local_control_msgs::Pose2DStamped :init))
    ((:velocity __velocity) (instance robot_local_control_msgs::Twist2D :init))
    ((:safety_status __safety_status) (instance robotnik_msgs::SafetyModuleStatus :init))
    ((:battery_docking_status __battery_docking_status) (instance robotnik_msgs::BatteryDockingStatus :init))
    ((:controllers __controllers) (let (r) (dotimes (i 0) (push (instance robot_local_control_msgs::ControllerStatus :init) r)) r))
    ((:sensors __sensors) (let (r) (dotimes (i 0) (push (instance robot_local_control_msgs::SensorStatus :init) r)) r))
    ((:elevator __elevator) (instance robotnik_msgs::ElevatorStatus :init))
    )
   (send-super :init)
   (setq _battery __battery)
   (setq _emergency_stop __emergency_stop)
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _safety_status __safety_status)
   (setq _battery_docking_status __battery_docking_status)
   (setq _controllers __controllers)
   (setq _sensors __sensors)
   (setq _elevator __elevator)
   self)
  (:battery
   (&rest __battery)
   (if (keywordp (car __battery))
       (send* _battery __battery)
     (progn
       (if __battery (setq _battery (car __battery)))
       _battery)))
  (:emergency_stop
   (&optional __emergency_stop)
   (if __emergency_stop (setq _emergency_stop __emergency_stop)) _emergency_stop)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:safety_status
   (&rest __safety_status)
   (if (keywordp (car __safety_status))
       (send* _safety_status __safety_status)
     (progn
       (if __safety_status (setq _safety_status (car __safety_status)))
       _safety_status)))
  (:battery_docking_status
   (&rest __battery_docking_status)
   (if (keywordp (car __battery_docking_status))
       (send* _battery_docking_status __battery_docking_status)
     (progn
       (if __battery_docking_status (setq _battery_docking_status (car __battery_docking_status)))
       _battery_docking_status)))
  (:controllers
   (&rest __controllers)
   (if (keywordp (car __controllers))
       (send* _controllers __controllers)
     (progn
       (if __controllers (setq _controllers (car __controllers)))
       _controllers)))
  (:sensors
   (&rest __sensors)
   (if (keywordp (car __sensors))
       (send* _sensors __sensors)
     (progn
       (if __sensors (setq _sensors (car __sensors)))
       _sensors)))
  (:elevator
   (&rest __elevator)
   (if (keywordp (car __elevator))
       (send* _elevator __elevator)
     (progn
       (if __elevator (setq _elevator (car __elevator)))
       _elevator)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/BatteryStatus _battery
    (send _battery :serialization-length)
    ;; bool _emergency_stop
    1
    ;; robot_local_control_msgs/Pose2DStamped _pose
    (send _pose :serialization-length)
    ;; robot_local_control_msgs/Twist2D _velocity
    (send _velocity :serialization-length)
    ;; robotnik_msgs/SafetyModuleStatus _safety_status
    (send _safety_status :serialization-length)
    ;; robotnik_msgs/BatteryDockingStatus _battery_docking_status
    (send _battery_docking_status :serialization-length)
    ;; robot_local_control_msgs/ControllerStatus[] _controllers
    (apply #'+ (send-all _controllers :serialization-length)) 4
    ;; robot_local_control_msgs/SensorStatus[] _sensors
    (apply #'+ (send-all _sensors :serialization-length)) 4
    ;; robotnik_msgs/ElevatorStatus _elevator
    (send _elevator :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/BatteryStatus _battery
       (send _battery :serialize s)
     ;; bool _emergency_stop
       (if _emergency_stop (write-byte -1 s) (write-byte 0 s))
     ;; robot_local_control_msgs/Pose2DStamped _pose
       (send _pose :serialize s)
     ;; robot_local_control_msgs/Twist2D _velocity
       (send _velocity :serialize s)
     ;; robotnik_msgs/SafetyModuleStatus _safety_status
       (send _safety_status :serialize s)
     ;; robotnik_msgs/BatteryDockingStatus _battery_docking_status
       (send _battery_docking_status :serialize s)
     ;; robot_local_control_msgs/ControllerStatus[] _controllers
     (write-long (length _controllers) s)
     (dolist (elem _controllers)
       (send elem :serialize s)
       )
     ;; robot_local_control_msgs/SensorStatus[] _sensors
     (write-long (length _sensors) s)
     (dolist (elem _sensors)
       (send elem :serialize s)
       )
     ;; robotnik_msgs/ElevatorStatus _elevator
       (send _elevator :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/BatteryStatus _battery
     (send _battery :deserialize buf ptr-) (incf ptr- (send _battery :serialization-length))
   ;; bool _emergency_stop
     (setq _emergency_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; robot_local_control_msgs/Pose2DStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; robot_local_control_msgs/Twist2D _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; robotnik_msgs/SafetyModuleStatus _safety_status
     (send _safety_status :deserialize buf ptr-) (incf ptr- (send _safety_status :serialization-length))
   ;; robotnik_msgs/BatteryDockingStatus _battery_docking_status
     (send _battery_docking_status :deserialize buf ptr-) (incf ptr- (send _battery_docking_status :serialization-length))
   ;; robot_local_control_msgs/ControllerStatus[] _controllers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _controllers (let (r) (dotimes (i n) (push (instance robot_local_control_msgs::ControllerStatus :init) r)) r))
     (dolist (elem- _controllers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robot_local_control_msgs/SensorStatus[] _sensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensors (let (r) (dotimes (i n) (push (instance robot_local_control_msgs::SensorStatus :init) r)) r))
     (dolist (elem- _sensors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robotnik_msgs/ElevatorStatus _elevator
     (send _elevator :deserialize buf ptr-) (incf ptr- (send _elevator :serialization-length))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::RobotStatus :md5sum-) "8d5bc9a08e5159ee68da8f752c6d8f5c")
(setf (get robot_local_control_msgs::RobotStatus :datatype-) "robot_local_control_msgs/RobotStatus")
(setf (get robot_local_control_msgs::RobotStatus :definition-)
      "# robot battery
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

")



(provide :robot_local_control_msgs/RobotStatus "8d5bc9a08e5159ee68da8f752c6d8f5c")


