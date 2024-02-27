; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude Status.msg.html

(cl:defclass <Status> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (robot_state
    :reader robot_state
    :initarg :robot_state
    :type cl:string
    :initform "")
   (control_state
    :reader control_state
    :initarg :control_state
    :type cl:string
    :initform "")
   (operation_state
    :reader operation_state
    :initarg :operation_state
    :type cl:string
    :initform "")
   (localization_status
    :reader localization_status
    :initarg :localization_status
    :type robot_local_control_msgs-msg:LocalizationStatus
    :initform (cl:make-instance 'robot_local_control_msgs-msg:LocalizationStatus))
   (navigation_status
    :reader navigation_status
    :initarg :navigation_status
    :type robot_local_control_msgs-msg:NavigationStatus
    :initform (cl:make-instance 'robot_local_control_msgs-msg:NavigationStatus))
   (robot_status
    :reader robot_status
    :initarg :robot_status
    :type robot_local_control_msgs-msg:RobotStatus
    :initform (cl:make-instance 'robot_local_control_msgs-msg:RobotStatus))
   (signal_manager
    :reader signal_manager
    :initarg :signal_manager
    :type robot_local_control_msgs-msg:SignalManager
    :initform (cl:make-instance 'robot_local_control_msgs-msg:SignalManager)))
)

(cl:defclass Status (<Status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<Status> is deprecated: use robot_local_control_msgs-msg:Status instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:robot_id-val is deprecated.  Use robot_local_control_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:robot_state-val is deprecated.  Use robot_local_control_msgs-msg:robot_state instead.")
  (robot_state m))

(cl:ensure-generic-function 'control_state-val :lambda-list '(m))
(cl:defmethod control_state-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:control_state-val is deprecated.  Use robot_local_control_msgs-msg:control_state instead.")
  (control_state m))

(cl:ensure-generic-function 'operation_state-val :lambda-list '(m))
(cl:defmethod operation_state-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:operation_state-val is deprecated.  Use robot_local_control_msgs-msg:operation_state instead.")
  (operation_state m))

(cl:ensure-generic-function 'localization_status-val :lambda-list '(m))
(cl:defmethod localization_status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:localization_status-val is deprecated.  Use robot_local_control_msgs-msg:localization_status instead.")
  (localization_status m))

(cl:ensure-generic-function 'navigation_status-val :lambda-list '(m))
(cl:defmethod navigation_status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:navigation_status-val is deprecated.  Use robot_local_control_msgs-msg:navigation_status instead.")
  (navigation_status m))

(cl:ensure-generic-function 'robot_status-val :lambda-list '(m))
(cl:defmethod robot_status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:robot_status-val is deprecated.  Use robot_local_control_msgs-msg:robot_status instead.")
  (robot_status m))

(cl:ensure-generic-function 'signal_manager-val :lambda-list '(m))
(cl:defmethod signal_manager-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:signal_manager-val is deprecated.  Use robot_local_control_msgs-msg:signal_manager instead.")
  (signal_manager m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Status>)))
    "Constants for message type '<Status>"
  '((:ROBOT_STATE_INIT . init)
    (:ROBOT_STATE_STANDBY . standby)
    (:ROBOT_STATE_READY . ready)
    (:ROBOT_STATE_EMERGENCY . emergency)
    (:ROBOT_STATE_FAILURE . failure)
    (:CONTROL_STATE_UNKNOWN . unknown)
    (:CONTROL_STATE_AUTO . auto)
    (:CONTROL_STATE_MANUAL . manual)
    (:CONTROL_STATE_FOLLOW . follow)
    (:OPERATION_STATE_IDLE . idle)
    (:OPERATION_STATE_CALIBRATION . calibrating)
    (:OPERATION_STATE_MOVING . moving)
    (:OPERATION_STATE_ELEVATION_RAISE . raising_elevator)
    (:OPERATION_STATE_ELEVATION_LOWER . lowering_elevator)
    (:OPERATION_STATE_BATTERY_CHARGE . charging))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Status)))
    "Constants for message type 'Status"
  '((:ROBOT_STATE_INIT . init)
    (:ROBOT_STATE_STANDBY . standby)
    (:ROBOT_STATE_READY . ready)
    (:ROBOT_STATE_EMERGENCY . emergency)
    (:ROBOT_STATE_FAILURE . failure)
    (:CONTROL_STATE_UNKNOWN . unknown)
    (:CONTROL_STATE_AUTO . auto)
    (:CONTROL_STATE_MANUAL . manual)
    (:CONTROL_STATE_FOLLOW . follow)
    (:OPERATION_STATE_IDLE . idle)
    (:OPERATION_STATE_CALIBRATION . calibrating)
    (:OPERATION_STATE_MOVING . moving)
    (:OPERATION_STATE_ELEVATION_RAISE . raising_elevator)
    (:OPERATION_STATE_ELEVATION_LOWER . lowering_elevator)
    (:OPERATION_STATE_BATTERY_CHARGE . charging))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Status>) ostream)
  "Serializes a message object of type '<Status>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'operation_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'operation_state))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'localization_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navigation_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'signal_manager) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Status>) istream)
  "Deserializes a message object of type '<Status>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'control_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'operation_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'localization_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navigation_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'signal_manager) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Status>)))
  "Returns string type for a message object of type '<Status>"
  "robot_local_control_msgs/Status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Status)))
  "Returns string type for a message object of type 'Status"
  "robot_local_control_msgs/Status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Status>)))
  "Returns md5sum for a message object of type '<Status>"
  "9bca84f741e3aaa1c4bf0c982726b9dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Status)))
  "Returns md5sum for a message object of type 'Status"
  "9bca84f741e3aaa1c4bf0c982726b9dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Status>)))
  "Returns full string definition for message of type '<Status>"
  (cl:format cl:nil "# GLOBAL ROBOT STATE~%# init: the robot is initializing~%# standby: the robot is ready to receive orders. Power saving behaviours can be applied~%# ready: the robot is ready to work or working~%# emergency: the robot cannot work/operate correctly temporary. It can imply a recovery procedure or an external action from the operator~%# failure: the robot is not working. It needs the operator intervention and probably restart/reboot the robot~%string ROBOT_STATE_INIT=init~%string ROBOT_STATE_STANDBY=standby~%string ROBOT_STATE_READY=ready~%string ROBOT_STATE_EMERGENCY=emergency~%string ROBOT_STATE_FAILURE=failure~%~%~%# CONTROL STATES OF THE ROBOT~%# auto: the robot is moving autonomously~%# manual: the robot is being tele-operated by an operator~%# follow: the robot is following a person~%string CONTROL_STATE_UNKNOWN=unknown~%string CONTROL_STATE_AUTO=auto~%string CONTROL_STATE_MANUAL=manual~%string CONTROL_STATE_FOLLOW=follow~%~%~%# OPERATIONAL STATES~%# Defines what's doing the robot~%# idle: the robot is doing nothing~%# calibrating: the robot is calibrating~%# moving: the robot is moving~%# raising: the elevator is raising~%# lowering: the elevator is lowering~%# charging: the robot is charging the battery~%string OPERATION_STATE_IDLE=idle~%string OPERATION_STATE_CALIBRATION=calibrating~%string OPERATION_STATE_MOVING=moving~%string OPERATION_STATE_ELEVATION_RAISE=raising_elevator~%string OPERATION_STATE_ELEVATION_LOWER=lowering_elevator~%string OPERATION_STATE_BATTERY_CHARGE=charging~%~%~%###############################################################################################~%~%# Human readable ID~%string robot_id~%~%# GLOBAL/Overall state of the component or robot~%# INIT, STANDBY, READY, EMERGENCY, FAILURE~%string robot_state~%~%# ROBOT OPERATION MODE~%# AUTO, MANUAL, FOLLOW~%string control_state~%~%# idle, calibrating, moving, raising_elevator,...~%string operation_state~%~%# Robot position (Define custom pose type)~%# RobotPose pose~%# type: gps, amcl, gmapping~%LocalizationStatus localization_status~%~%# Navigation Status~%# move_base, purepursuit, docking~%NavigationStatus navigation_status~%~%# Robot status: batt, lights, acoustic signal~%# odometry~%RobotStatus robot_status~%~%# Signal manager: array with the signal of each sensor~%SignalManager signal_manager~%~%~%~%# clasificarlo por tipos (action, localization, sensors,controllers...)~%# string[] state_procedures~%~%================================================================================~%MSG: robot_local_control_msgs/LocalizationStatus~%# Type of localization systems used~%string LOCALIZATION_TYPE_NONE=none~%# amcl~%string LOCALIZATION_TYPE_1=1~%# gps~%string LOCALIZATION_TYPE_2=2~%# cartogphr~%string LOCALIZATION_TYPE_3=3~%# gmapping~%string LOCALIZATION_TYPE_4=4~%~%# state of the navigation node running~%string LOCALIZATION_STATE_INIT=init~%string LOCALIZATION_STATE_READY=ready~%string LOCALIZATION_STATE_EMERGENCY=emergency~%string LOCALIZATION_STATE_FAILURE=failure~%string LOCALIZATION_STATE_UNKNOWN=unknown~%~%# Pose of the robot based on the current localization algorithm~%Pose2DStamped pose~%~%# reliability~%bool reliable~%~%# Localization environment ~%string environment~%~%# Type of localization technology~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robot_local_control_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: robot_local_control_msgs/NavigationStatus~%# type of navigation package/algorithm currently used~%string NAVIGATION_TYPE_NONE=none~%# move_base~%string NAVIGATION_TYPE_1=1~%# purepursuit~%string NAVIGATION_TYPE_2=2~%# Dock~%string NAVIGATION_TYPE_3=3 ~%~%# state of the navigation node running~%string NAVIGATION_STATE_INIT=init~%string NAVIGATION_STATE_STANDBY=standby~%string NAVIGATION_STATE_READY=ready~%string NAVIGATION_STATE_EMERGENCY=emergency~%string NAVIGATION_STATE_FAILURE=failure~%~%# Navigation algorithm being used~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robot_local_control_msgs/RobotStatus~%# robot battery~%robotnik_msgs/BatteryStatus battery~%~%# Robot emergency stop~%bool emergency_stop~%~%# lights~%# acoustic signal~%# bool acoustic_signal~%~%# Robot internal odometry~%Pose2DStamped pose~%Twist2D velocity~%~%# Safety status~%robotnik_msgs/SafetyModuleStatus safety_status~%~%# Battery Docking status~%robotnik_msgs/BatteryDockingStatus battery_docking_status~%~%ControllerStatus[] controllers~%~%SensorStatus[] sensors~%robotnik_msgs/ElevatorStatus elevator~%~%================================================================================~%MSG: robotnik_msgs/BatteryStatus~%float32 voltage			# in volts~%float32 current			# in amperes~%float32 level			# in %~%uint32 time_remaining		# in minutes~%uint32 time_charging            # in minutes ~%bool is_charging                # true when connected~%~%================================================================================~%MSG: robot_local_control_msgs/Twist2D~%float64 linear_x~%float64 linear_y~%float64 angular_z~%~%================================================================================~%MSG: robotnik_msgs/SafetyModuleStatus~%# robot safety mode~%string SAFE=safe~%string OVERRIDABLE=overridable~%string EMERGENCY=emergency~%string LASER_MUTE=laser_mute~%~%string safety_mode~%bool charging~%bool emergency_stop        # if e-stop is pressed~%bool safety_stop           # if system is stopped due to safety system~%bool safety_overrided      # if safety system is overrided~%bool lasers_on_standby     # if lasers don't have power~%float64 current_speed       # current speed measured by safety system~%float64 speed_at_safety_stop  # speed measured at last safety stop by safety system~%~%robotnik_msgs/LaserMode lasers_mode~%robotnik_msgs/LaserStatus[] lasers_status~%~%================================================================================~%MSG: robotnik_msgs/LaserMode~%string STANDARD=standard~%string DOCKING_STATION=docking_station~%string CART=cart~%string CART_DOCKING_CART=cart_docking_cart~%string DOCKING_CART=docking_cart~%string REDUCED=reduced~%string INVALID=invalid~%~%string name~%~%================================================================================~%MSG: robotnik_msgs/LaserStatus~%string name~%bool detecting_obstacles~%bool contaminated~%bool free_warning~%# one input per each warning zone.~%# first areas are closer to the robot (i.e. more restrictive)~%bool[] warning_zones ~%~%================================================================================~%MSG: robotnik_msgs/BatteryDockingStatus~%# Modes of operation:~%# no docking station contacts~%string MODE_DISABLED=disabled~%# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw~%string MODE_AUTO_HW=automatic_hw~%# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw~%string MODE_AUTO_SW=automatic_sw~%# Unattended relay detection & and manual activation of the charging relay~%string MODE_MANUAL_SW=manual_sw~%~%string operation_mode~%	~%bool contact_relay_status	# shows if there's contact with the charger~%bool charger_relay_status   # shows if the relay for the charge is active or not~%~%================================================================================~%MSG: robot_local_control_msgs/ControllerStatus~%# Human readable name~%string name~%~%# Type of controller~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robot_local_control_msgs/SensorStatus~%# Human readable name~%string name~%~%# Type of sensor~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robotnik_msgs/ElevatorStatus~%# state~%string RAISING=raising~%string LOWERING=lowering~%string IDLE=idle~%string ERROR_G_IO=error_getting_io~%string ERROR_S_IO=error_setting_io~%string ERROR_TIMEOUT=error_timeout_in_action~%# position~%string UP=up~%string DOWN=down~%string UNKNOWN=unknown~%# IDLE, RAISING, LOWERING~%string state~%# UP, DOWN, UNKNOWN~%string position~%float32 height~%~%================================================================================~%MSG: robot_local_control_msgs/SignalManager~%# INIT, READY, EMERGENCY, FAILURE~%string state~%# The state of the global signal~%string signal_state~%# The state of each signal_manager node~%robotnik_signal_msgs/SignalStatus[] signals_status~%================================================================================~%MSG: robotnik_signal_msgs/SignalStatus~%# signal_names~%string SIGNAL_CHARGING=charging~%string SIGNAL_SAFETY_STANDBY=safety_standby~%string SIGNAL_EMERGENCY_STOP=emergency_stop~%string SIGNAL_SAFETY_OBSTACLE_DETECTED=safety_obstacle_detected~%string SIGNAL_LOW_BATTERY=low_battery~%string SIGNAL_BASE_CONTROLLER_ERROR=base_controller_error~%string SIGNAL_ARM_CONTROLLER_ERROR=arm_controller_error~%string SIGNAL_SENSOR_ERROR=sensor_error~%string SIGNAL_ROBOT_IDLE=robot_idle~%string SIGNAL_ROBOT_MOVING=robot_moving~%string SIGNAL_RAISING_ELEVATOR=raising_elevator~%string SIGNAL_LOWERING_ELEVATOR=lowering_elevator~%~%string node_name~%string[] active_signals~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Status)))
  "Returns full string definition for message of type 'Status"
  (cl:format cl:nil "# GLOBAL ROBOT STATE~%# init: the robot is initializing~%# standby: the robot is ready to receive orders. Power saving behaviours can be applied~%# ready: the robot is ready to work or working~%# emergency: the robot cannot work/operate correctly temporary. It can imply a recovery procedure or an external action from the operator~%# failure: the robot is not working. It needs the operator intervention and probably restart/reboot the robot~%string ROBOT_STATE_INIT=init~%string ROBOT_STATE_STANDBY=standby~%string ROBOT_STATE_READY=ready~%string ROBOT_STATE_EMERGENCY=emergency~%string ROBOT_STATE_FAILURE=failure~%~%~%# CONTROL STATES OF THE ROBOT~%# auto: the robot is moving autonomously~%# manual: the robot is being tele-operated by an operator~%# follow: the robot is following a person~%string CONTROL_STATE_UNKNOWN=unknown~%string CONTROL_STATE_AUTO=auto~%string CONTROL_STATE_MANUAL=manual~%string CONTROL_STATE_FOLLOW=follow~%~%~%# OPERATIONAL STATES~%# Defines what's doing the robot~%# idle: the robot is doing nothing~%# calibrating: the robot is calibrating~%# moving: the robot is moving~%# raising: the elevator is raising~%# lowering: the elevator is lowering~%# charging: the robot is charging the battery~%string OPERATION_STATE_IDLE=idle~%string OPERATION_STATE_CALIBRATION=calibrating~%string OPERATION_STATE_MOVING=moving~%string OPERATION_STATE_ELEVATION_RAISE=raising_elevator~%string OPERATION_STATE_ELEVATION_LOWER=lowering_elevator~%string OPERATION_STATE_BATTERY_CHARGE=charging~%~%~%###############################################################################################~%~%# Human readable ID~%string robot_id~%~%# GLOBAL/Overall state of the component or robot~%# INIT, STANDBY, READY, EMERGENCY, FAILURE~%string robot_state~%~%# ROBOT OPERATION MODE~%# AUTO, MANUAL, FOLLOW~%string control_state~%~%# idle, calibrating, moving, raising_elevator,...~%string operation_state~%~%# Robot position (Define custom pose type)~%# RobotPose pose~%# type: gps, amcl, gmapping~%LocalizationStatus localization_status~%~%# Navigation Status~%# move_base, purepursuit, docking~%NavigationStatus navigation_status~%~%# Robot status: batt, lights, acoustic signal~%# odometry~%RobotStatus robot_status~%~%# Signal manager: array with the signal of each sensor~%SignalManager signal_manager~%~%~%~%# clasificarlo por tipos (action, localization, sensors,controllers...)~%# string[] state_procedures~%~%================================================================================~%MSG: robot_local_control_msgs/LocalizationStatus~%# Type of localization systems used~%string LOCALIZATION_TYPE_NONE=none~%# amcl~%string LOCALIZATION_TYPE_1=1~%# gps~%string LOCALIZATION_TYPE_2=2~%# cartogphr~%string LOCALIZATION_TYPE_3=3~%# gmapping~%string LOCALIZATION_TYPE_4=4~%~%# state of the navigation node running~%string LOCALIZATION_STATE_INIT=init~%string LOCALIZATION_STATE_READY=ready~%string LOCALIZATION_STATE_EMERGENCY=emergency~%string LOCALIZATION_STATE_FAILURE=failure~%string LOCALIZATION_STATE_UNKNOWN=unknown~%~%# Pose of the robot based on the current localization algorithm~%Pose2DStamped pose~%~%# reliability~%bool reliable~%~%# Localization environment ~%string environment~%~%# Type of localization technology~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robot_local_control_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: robot_local_control_msgs/NavigationStatus~%# type of navigation package/algorithm currently used~%string NAVIGATION_TYPE_NONE=none~%# move_base~%string NAVIGATION_TYPE_1=1~%# purepursuit~%string NAVIGATION_TYPE_2=2~%# Dock~%string NAVIGATION_TYPE_3=3 ~%~%# state of the navigation node running~%string NAVIGATION_STATE_INIT=init~%string NAVIGATION_STATE_STANDBY=standby~%string NAVIGATION_STATE_READY=ready~%string NAVIGATION_STATE_EMERGENCY=emergency~%string NAVIGATION_STATE_FAILURE=failure~%~%# Navigation algorithm being used~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robot_local_control_msgs/RobotStatus~%# robot battery~%robotnik_msgs/BatteryStatus battery~%~%# Robot emergency stop~%bool emergency_stop~%~%# lights~%# acoustic signal~%# bool acoustic_signal~%~%# Robot internal odometry~%Pose2DStamped pose~%Twist2D velocity~%~%# Safety status~%robotnik_msgs/SafetyModuleStatus safety_status~%~%# Battery Docking status~%robotnik_msgs/BatteryDockingStatus battery_docking_status~%~%ControllerStatus[] controllers~%~%SensorStatus[] sensors~%robotnik_msgs/ElevatorStatus elevator~%~%================================================================================~%MSG: robotnik_msgs/BatteryStatus~%float32 voltage			# in volts~%float32 current			# in amperes~%float32 level			# in %~%uint32 time_remaining		# in minutes~%uint32 time_charging            # in minutes ~%bool is_charging                # true when connected~%~%================================================================================~%MSG: robot_local_control_msgs/Twist2D~%float64 linear_x~%float64 linear_y~%float64 angular_z~%~%================================================================================~%MSG: robotnik_msgs/SafetyModuleStatus~%# robot safety mode~%string SAFE=safe~%string OVERRIDABLE=overridable~%string EMERGENCY=emergency~%string LASER_MUTE=laser_mute~%~%string safety_mode~%bool charging~%bool emergency_stop        # if e-stop is pressed~%bool safety_stop           # if system is stopped due to safety system~%bool safety_overrided      # if safety system is overrided~%bool lasers_on_standby     # if lasers don't have power~%float64 current_speed       # current speed measured by safety system~%float64 speed_at_safety_stop  # speed measured at last safety stop by safety system~%~%robotnik_msgs/LaserMode lasers_mode~%robotnik_msgs/LaserStatus[] lasers_status~%~%================================================================================~%MSG: robotnik_msgs/LaserMode~%string STANDARD=standard~%string DOCKING_STATION=docking_station~%string CART=cart~%string CART_DOCKING_CART=cart_docking_cart~%string DOCKING_CART=docking_cart~%string REDUCED=reduced~%string INVALID=invalid~%~%string name~%~%================================================================================~%MSG: robotnik_msgs/LaserStatus~%string name~%bool detecting_obstacles~%bool contaminated~%bool free_warning~%# one input per each warning zone.~%# first areas are closer to the robot (i.e. more restrictive)~%bool[] warning_zones ~%~%================================================================================~%MSG: robotnik_msgs/BatteryDockingStatus~%# Modes of operation:~%# no docking station contacts~%string MODE_DISABLED=disabled~%# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw~%string MODE_AUTO_HW=automatic_hw~%# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw~%string MODE_AUTO_SW=automatic_sw~%# Unattended relay detection & and manual activation of the charging relay~%string MODE_MANUAL_SW=manual_sw~%~%string operation_mode~%	~%bool contact_relay_status	# shows if there's contact with the charger~%bool charger_relay_status   # shows if the relay for the charge is active or not~%~%================================================================================~%MSG: robot_local_control_msgs/ControllerStatus~%# Human readable name~%string name~%~%# Type of controller~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robot_local_control_msgs/SensorStatus~%# Human readable name~%string name~%~%# Type of sensor~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robotnik_msgs/ElevatorStatus~%# state~%string RAISING=raising~%string LOWERING=lowering~%string IDLE=idle~%string ERROR_G_IO=error_getting_io~%string ERROR_S_IO=error_setting_io~%string ERROR_TIMEOUT=error_timeout_in_action~%# position~%string UP=up~%string DOWN=down~%string UNKNOWN=unknown~%# IDLE, RAISING, LOWERING~%string state~%# UP, DOWN, UNKNOWN~%string position~%float32 height~%~%================================================================================~%MSG: robot_local_control_msgs/SignalManager~%# INIT, READY, EMERGENCY, FAILURE~%string state~%# The state of the global signal~%string signal_state~%# The state of each signal_manager node~%robotnik_signal_msgs/SignalStatus[] signals_status~%================================================================================~%MSG: robotnik_signal_msgs/SignalStatus~%# signal_names~%string SIGNAL_CHARGING=charging~%string SIGNAL_SAFETY_STANDBY=safety_standby~%string SIGNAL_EMERGENCY_STOP=emergency_stop~%string SIGNAL_SAFETY_OBSTACLE_DETECTED=safety_obstacle_detected~%string SIGNAL_LOW_BATTERY=low_battery~%string SIGNAL_BASE_CONTROLLER_ERROR=base_controller_error~%string SIGNAL_ARM_CONTROLLER_ERROR=arm_controller_error~%string SIGNAL_SENSOR_ERROR=sensor_error~%string SIGNAL_ROBOT_IDLE=robot_idle~%string SIGNAL_ROBOT_MOVING=robot_moving~%string SIGNAL_RAISING_ELEVATOR=raising_elevator~%string SIGNAL_LOWERING_ELEVATOR=lowering_elevator~%~%string node_name~%string[] active_signals~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Status>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'robot_state))
     4 (cl:length (cl:slot-value msg 'control_state))
     4 (cl:length (cl:slot-value msg 'operation_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'localization_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navigation_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'signal_manager))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Status>))
  "Converts a ROS message object to a list"
  (cl:list 'Status
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':robot_state (robot_state msg))
    (cl:cons ':control_state (control_state msg))
    (cl:cons ':operation_state (operation_state msg))
    (cl:cons ':localization_status (localization_status msg))
    (cl:cons ':navigation_status (navigation_status msg))
    (cl:cons ':robot_status (robot_status msg))
    (cl:cons ':signal_manager (signal_manager msg))
))
