; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude RobotStatus.msg.html

(cl:defclass <RobotStatus> (roslisp-msg-protocol:ros-message)
  ((battery
    :reader battery
    :initarg :battery
    :type robotnik_msgs-msg:BatteryStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:BatteryStatus))
   (emergency_stop
    :reader emergency_stop
    :initarg :emergency_stop
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type robot_local_control_msgs-msg:Pose2DStamped
    :initform (cl:make-instance 'robot_local_control_msgs-msg:Pose2DStamped))
   (velocity
    :reader velocity
    :initarg :velocity
    :type robot_local_control_msgs-msg:Twist2D
    :initform (cl:make-instance 'robot_local_control_msgs-msg:Twist2D))
   (safety_status
    :reader safety_status
    :initarg :safety_status
    :type robotnik_msgs-msg:SafetyModuleStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:SafetyModuleStatus))
   (battery_docking_status
    :reader battery_docking_status
    :initarg :battery_docking_status
    :type robotnik_msgs-msg:BatteryDockingStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:BatteryDockingStatus))
   (controllers
    :reader controllers
    :initarg :controllers
    :type (cl:vector robot_local_control_msgs-msg:ControllerStatus)
   :initform (cl:make-array 0 :element-type 'robot_local_control_msgs-msg:ControllerStatus :initial-element (cl:make-instance 'robot_local_control_msgs-msg:ControllerStatus)))
   (sensors
    :reader sensors
    :initarg :sensors
    :type (cl:vector robot_local_control_msgs-msg:SensorStatus)
   :initform (cl:make-array 0 :element-type 'robot_local_control_msgs-msg:SensorStatus :initial-element (cl:make-instance 'robot_local_control_msgs-msg:SensorStatus)))
   (elevator
    :reader elevator
    :initarg :elevator
    :type robotnik_msgs-msg:ElevatorStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:ElevatorStatus)))
)

(cl:defclass RobotStatus (<RobotStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<RobotStatus> is deprecated: use robot_local_control_msgs-msg:RobotStatus instead.")))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:battery-val is deprecated.  Use robot_local_control_msgs-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'emergency_stop-val :lambda-list '(m))
(cl:defmethod emergency_stop-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:emergency_stop-val is deprecated.  Use robot_local_control_msgs-msg:emergency_stop instead.")
  (emergency_stop m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:pose-val is deprecated.  Use robot_local_control_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:velocity-val is deprecated.  Use robot_local_control_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'safety_status-val :lambda-list '(m))
(cl:defmethod safety_status-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:safety_status-val is deprecated.  Use robot_local_control_msgs-msg:safety_status instead.")
  (safety_status m))

(cl:ensure-generic-function 'battery_docking_status-val :lambda-list '(m))
(cl:defmethod battery_docking_status-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:battery_docking_status-val is deprecated.  Use robot_local_control_msgs-msg:battery_docking_status instead.")
  (battery_docking_status m))

(cl:ensure-generic-function 'controllers-val :lambda-list '(m))
(cl:defmethod controllers-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:controllers-val is deprecated.  Use robot_local_control_msgs-msg:controllers instead.")
  (controllers m))

(cl:ensure-generic-function 'sensors-val :lambda-list '(m))
(cl:defmethod sensors-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:sensors-val is deprecated.  Use robot_local_control_msgs-msg:sensors instead.")
  (sensors m))

(cl:ensure-generic-function 'elevator-val :lambda-list '(m))
(cl:defmethod elevator-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:elevator-val is deprecated.  Use robot_local_control_msgs-msg:elevator instead.")
  (elevator m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStatus>) ostream)
  "Serializes a message object of type '<RobotStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'battery) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_stop) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'safety_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'battery_docking_status) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controllers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'controllers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sensors))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'elevator) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStatus>) istream)
  "Deserializes a message object of type '<RobotStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'battery) istream)
    (cl:setf (cl:slot-value msg 'emergency_stop) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'safety_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'battery_docking_status) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controllers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controllers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_local_control_msgs-msg:ControllerStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_local_control_msgs-msg:SensorStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'elevator) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStatus>)))
  "Returns string type for a message object of type '<RobotStatus>"
  "robot_local_control_msgs/RobotStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatus)))
  "Returns string type for a message object of type 'RobotStatus"
  "robot_local_control_msgs/RobotStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStatus>)))
  "Returns md5sum for a message object of type '<RobotStatus>"
  "8d5bc9a08e5159ee68da8f752c6d8f5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStatus)))
  "Returns md5sum for a message object of type 'RobotStatus"
  "8d5bc9a08e5159ee68da8f752c6d8f5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStatus>)))
  "Returns full string definition for message of type '<RobotStatus>"
  (cl:format cl:nil "# robot battery~%robotnik_msgs/BatteryStatus battery~%~%# Robot emergency stop~%bool emergency_stop~%~%# lights~%# acoustic signal~%# bool acoustic_signal~%~%# Robot internal odometry~%Pose2DStamped pose~%Twist2D velocity~%~%# Safety status~%robotnik_msgs/SafetyModuleStatus safety_status~%~%# Battery Docking status~%robotnik_msgs/BatteryDockingStatus battery_docking_status~%~%ControllerStatus[] controllers~%~%SensorStatus[] sensors~%robotnik_msgs/ElevatorStatus elevator~%~%================================================================================~%MSG: robotnik_msgs/BatteryStatus~%float32 voltage			# in volts~%float32 current			# in amperes~%float32 level			# in %~%uint32 time_remaining		# in minutes~%uint32 time_charging            # in minutes ~%bool is_charging                # true when connected~%~%================================================================================~%MSG: robot_local_control_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: robot_local_control_msgs/Twist2D~%float64 linear_x~%float64 linear_y~%float64 angular_z~%~%================================================================================~%MSG: robotnik_msgs/SafetyModuleStatus~%# robot safety mode~%string SAFE=safe~%string OVERRIDABLE=overridable~%string EMERGENCY=emergency~%string LASER_MUTE=laser_mute~%~%string safety_mode~%bool charging~%bool emergency_stop        # if e-stop is pressed~%bool safety_stop           # if system is stopped due to safety system~%bool safety_overrided      # if safety system is overrided~%bool lasers_on_standby     # if lasers don't have power~%float64 current_speed       # current speed measured by safety system~%float64 speed_at_safety_stop  # speed measured at last safety stop by safety system~%~%robotnik_msgs/LaserMode lasers_mode~%robotnik_msgs/LaserStatus[] lasers_status~%~%================================================================================~%MSG: robotnik_msgs/LaserMode~%string STANDARD=standard~%string DOCKING_STATION=docking_station~%string CART=cart~%string CART_DOCKING_CART=cart_docking_cart~%string DOCKING_CART=docking_cart~%string REDUCED=reduced~%string INVALID=invalid~%~%string name~%~%================================================================================~%MSG: robotnik_msgs/LaserStatus~%string name~%bool detecting_obstacles~%bool contaminated~%bool free_warning~%# one input per each warning zone.~%# first areas are closer to the robot (i.e. more restrictive)~%bool[] warning_zones ~%~%================================================================================~%MSG: robotnik_msgs/BatteryDockingStatus~%# Modes of operation:~%# no docking station contacts~%string MODE_DISABLED=disabled~%# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw~%string MODE_AUTO_HW=automatic_hw~%# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw~%string MODE_AUTO_SW=automatic_sw~%# Unattended relay detection & and manual activation of the charging relay~%string MODE_MANUAL_SW=manual_sw~%~%string operation_mode~%	~%bool contact_relay_status	# shows if there's contact with the charger~%bool charger_relay_status   # shows if the relay for the charge is active or not~%~%================================================================================~%MSG: robot_local_control_msgs/ControllerStatus~%# Human readable name~%string name~%~%# Type of controller~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robot_local_control_msgs/SensorStatus~%# Human readable name~%string name~%~%# Type of sensor~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robotnik_msgs/ElevatorStatus~%# state~%string RAISING=raising~%string LOWERING=lowering~%string IDLE=idle~%string ERROR_G_IO=error_getting_io~%string ERROR_S_IO=error_setting_io~%string ERROR_TIMEOUT=error_timeout_in_action~%# position~%string UP=up~%string DOWN=down~%string UNKNOWN=unknown~%# IDLE, RAISING, LOWERING~%string state~%# UP, DOWN, UNKNOWN~%string position~%float32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStatus)))
  "Returns full string definition for message of type 'RobotStatus"
  (cl:format cl:nil "# robot battery~%robotnik_msgs/BatteryStatus battery~%~%# Robot emergency stop~%bool emergency_stop~%~%# lights~%# acoustic signal~%# bool acoustic_signal~%~%# Robot internal odometry~%Pose2DStamped pose~%Twist2D velocity~%~%# Safety status~%robotnik_msgs/SafetyModuleStatus safety_status~%~%# Battery Docking status~%robotnik_msgs/BatteryDockingStatus battery_docking_status~%~%ControllerStatus[] controllers~%~%SensorStatus[] sensors~%robotnik_msgs/ElevatorStatus elevator~%~%================================================================================~%MSG: robotnik_msgs/BatteryStatus~%float32 voltage			# in volts~%float32 current			# in amperes~%float32 level			# in %~%uint32 time_remaining		# in minutes~%uint32 time_charging            # in minutes ~%bool is_charging                # true when connected~%~%================================================================================~%MSG: robot_local_control_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: robot_local_control_msgs/Twist2D~%float64 linear_x~%float64 linear_y~%float64 angular_z~%~%================================================================================~%MSG: robotnik_msgs/SafetyModuleStatus~%# robot safety mode~%string SAFE=safe~%string OVERRIDABLE=overridable~%string EMERGENCY=emergency~%string LASER_MUTE=laser_mute~%~%string safety_mode~%bool charging~%bool emergency_stop        # if e-stop is pressed~%bool safety_stop           # if system is stopped due to safety system~%bool safety_overrided      # if safety system is overrided~%bool lasers_on_standby     # if lasers don't have power~%float64 current_speed       # current speed measured by safety system~%float64 speed_at_safety_stop  # speed measured at last safety stop by safety system~%~%robotnik_msgs/LaserMode lasers_mode~%robotnik_msgs/LaserStatus[] lasers_status~%~%================================================================================~%MSG: robotnik_msgs/LaserMode~%string STANDARD=standard~%string DOCKING_STATION=docking_station~%string CART=cart~%string CART_DOCKING_CART=cart_docking_cart~%string DOCKING_CART=docking_cart~%string REDUCED=reduced~%string INVALID=invalid~%~%string name~%~%================================================================================~%MSG: robotnik_msgs/LaserStatus~%string name~%bool detecting_obstacles~%bool contaminated~%bool free_warning~%# one input per each warning zone.~%# first areas are closer to the robot (i.e. more restrictive)~%bool[] warning_zones ~%~%================================================================================~%MSG: robotnik_msgs/BatteryDockingStatus~%# Modes of operation:~%# no docking station contacts~%string MODE_DISABLED=disabled~%# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw~%string MODE_AUTO_HW=automatic_hw~%# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw~%string MODE_AUTO_SW=automatic_sw~%# Unattended relay detection & and manual activation of the charging relay~%string MODE_MANUAL_SW=manual_sw~%~%string operation_mode~%	~%bool contact_relay_status	# shows if there's contact with the charger~%bool charger_relay_status   # shows if the relay for the charge is active or not~%~%================================================================================~%MSG: robot_local_control_msgs/ControllerStatus~%# Human readable name~%string name~%~%# Type of controller~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robot_local_control_msgs/SensorStatus~%# Human readable name~%string name~%~%# Type of sensor~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robotnik_msgs/ElevatorStatus~%# state~%string RAISING=raising~%string LOWERING=lowering~%string IDLE=idle~%string ERROR_G_IO=error_getting_io~%string ERROR_S_IO=error_setting_io~%string ERROR_TIMEOUT=error_timeout_in_action~%# position~%string UP=up~%string DOWN=down~%string UNKNOWN=unknown~%# IDLE, RAISING, LOWERING~%string state~%# UP, DOWN, UNKNOWN~%string position~%float32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'battery))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'safety_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'battery_docking_status))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controllers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'elevator))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStatus
    (cl:cons ':battery (battery msg))
    (cl:cons ':emergency_stop (emergency_stop msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':safety_status (safety_status msg))
    (cl:cons ':battery_docking_status (battery_docking_status msg))
    (cl:cons ':controllers (controllers msg))
    (cl:cons ':sensors (sensors msg))
    (cl:cons ':elevator (elevator msg))
))
