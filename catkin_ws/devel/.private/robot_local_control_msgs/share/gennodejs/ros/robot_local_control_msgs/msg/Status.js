// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocalizationStatus = require('./LocalizationStatus.js');
let NavigationStatus = require('./NavigationStatus.js');
let RobotStatus = require('./RobotStatus.js');
let SignalManager = require('./SignalManager.js');

//-----------------------------------------------------------

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.robot_state = null;
      this.control_state = null;
      this.operation_state = null;
      this.localization_status = null;
      this.navigation_status = null;
      this.robot_status = null;
      this.signal_manager = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = '';
      }
      if (initObj.hasOwnProperty('robot_state')) {
        this.robot_state = initObj.robot_state
      }
      else {
        this.robot_state = '';
      }
      if (initObj.hasOwnProperty('control_state')) {
        this.control_state = initObj.control_state
      }
      else {
        this.control_state = '';
      }
      if (initObj.hasOwnProperty('operation_state')) {
        this.operation_state = initObj.operation_state
      }
      else {
        this.operation_state = '';
      }
      if (initObj.hasOwnProperty('localization_status')) {
        this.localization_status = initObj.localization_status
      }
      else {
        this.localization_status = new LocalizationStatus();
      }
      if (initObj.hasOwnProperty('navigation_status')) {
        this.navigation_status = initObj.navigation_status
      }
      else {
        this.navigation_status = new NavigationStatus();
      }
      if (initObj.hasOwnProperty('robot_status')) {
        this.robot_status = initObj.robot_status
      }
      else {
        this.robot_status = new RobotStatus();
      }
      if (initObj.hasOwnProperty('signal_manager')) {
        this.signal_manager = initObj.signal_manager
      }
      else {
        this.signal_manager = new SignalManager();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [robot_id]
    bufferOffset = _serializer.string(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [robot_state]
    bufferOffset = _serializer.string(obj.robot_state, buffer, bufferOffset);
    // Serialize message field [control_state]
    bufferOffset = _serializer.string(obj.control_state, buffer, bufferOffset);
    // Serialize message field [operation_state]
    bufferOffset = _serializer.string(obj.operation_state, buffer, bufferOffset);
    // Serialize message field [localization_status]
    bufferOffset = LocalizationStatus.serialize(obj.localization_status, buffer, bufferOffset);
    // Serialize message field [navigation_status]
    bufferOffset = NavigationStatus.serialize(obj.navigation_status, buffer, bufferOffset);
    // Serialize message field [robot_status]
    bufferOffset = RobotStatus.serialize(obj.robot_status, buffer, bufferOffset);
    // Serialize message field [signal_manager]
    bufferOffset = SignalManager.serialize(obj.signal_manager, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_state]
    data.robot_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [control_state]
    data.control_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operation_state]
    data.operation_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [localization_status]
    data.localization_status = LocalizationStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [navigation_status]
    data.navigation_status = NavigationStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_status]
    data.robot_status = RobotStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [signal_manager]
    data.signal_manager = SignalManager.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_id.length;
    length += object.robot_state.length;
    length += object.control_state.length;
    length += object.operation_state.length;
    length += LocalizationStatus.getMessageSize(object.localization_status);
    length += NavigationStatus.getMessageSize(object.navigation_status);
    length += RobotStatus.getMessageSize(object.robot_status);
    length += SignalManager.getMessageSize(object.signal_manager);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bca84f741e3aaa1c4bf0c982726b9dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # GLOBAL ROBOT STATE
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Status(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = ''
    }

    if (msg.robot_state !== undefined) {
      resolved.robot_state = msg.robot_state;
    }
    else {
      resolved.robot_state = ''
    }

    if (msg.control_state !== undefined) {
      resolved.control_state = msg.control_state;
    }
    else {
      resolved.control_state = ''
    }

    if (msg.operation_state !== undefined) {
      resolved.operation_state = msg.operation_state;
    }
    else {
      resolved.operation_state = ''
    }

    if (msg.localization_status !== undefined) {
      resolved.localization_status = LocalizationStatus.Resolve(msg.localization_status)
    }
    else {
      resolved.localization_status = new LocalizationStatus()
    }

    if (msg.navigation_status !== undefined) {
      resolved.navigation_status = NavigationStatus.Resolve(msg.navigation_status)
    }
    else {
      resolved.navigation_status = new NavigationStatus()
    }

    if (msg.robot_status !== undefined) {
      resolved.robot_status = RobotStatus.Resolve(msg.robot_status)
    }
    else {
      resolved.robot_status = new RobotStatus()
    }

    if (msg.signal_manager !== undefined) {
      resolved.signal_manager = SignalManager.Resolve(msg.signal_manager)
    }
    else {
      resolved.signal_manager = new SignalManager()
    }

    return resolved;
    }
};

// Constants for message
Status.Constants = {
  ROBOT_STATE_INIT: 'init',
  ROBOT_STATE_STANDBY: 'standby',
  ROBOT_STATE_READY: 'ready',
  ROBOT_STATE_EMERGENCY: 'emergency',
  ROBOT_STATE_FAILURE: 'failure',
  CONTROL_STATE_UNKNOWN: 'unknown',
  CONTROL_STATE_AUTO: 'auto',
  CONTROL_STATE_MANUAL: 'manual',
  CONTROL_STATE_FOLLOW: 'follow',
  OPERATION_STATE_IDLE: 'idle',
  OPERATION_STATE_CALIBRATION: 'calibrating',
  OPERATION_STATE_MOVING: 'moving',
  OPERATION_STATE_ELEVATION_RAISE: 'raising_elevator',
  OPERATION_STATE_ELEVATION_LOWER: 'lowering_elevator',
  OPERATION_STATE_BATTERY_CHARGE: 'charging',
}

module.exports = Status;
