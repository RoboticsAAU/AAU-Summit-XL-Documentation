// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Status = require('../msg/Status.js');

//-----------------------------------------------------------

let procedures_msgs = _finder('procedures_msgs');

//-----------------------------------------------------------

class StatusPetitionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.procedure = null;
    }
    else {
      if (initObj.hasOwnProperty('procedure')) {
        this.procedure = initObj.procedure
      }
      else {
        this.procedure = new Status();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatusPetitionRequest
    // Serialize message field [procedure]
    bufferOffset = Status.serialize(obj.procedure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatusPetitionRequest
    let len;
    let data = new StatusPetitionRequest(null);
    // Deserialize message field [procedure]
    data.procedure = Status.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Status.getMessageSize(object.procedure);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_local_control_msgs/StatusPetitionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c860c7645c0ca22128261887994fb99';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Status procedure
    
    ================================================================================
    MSG: robot_local_control_msgs/Status
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
    const resolved = new StatusPetitionRequest(null);
    if (msg.procedure !== undefined) {
      resolved.procedure = Status.Resolve(msg.procedure)
    }
    else {
      resolved.procedure = new Status()
    }

    return resolved;
    }
};

class StatusPetitionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new procedures_msgs.msg.ProcedureState();
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new procedures_msgs.msg.ProcedureResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatusPetitionResponse
    // Serialize message field [state]
    bufferOffset = procedures_msgs.msg.ProcedureState.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = procedures_msgs.msg.ProcedureResult.serialize(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatusPetitionResponse
    let len;
    let data = new StatusPetitionResponse(null);
    // Deserialize message field [state]
    data.state = procedures_msgs.msg.ProcedureState.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = procedures_msgs.msg.ProcedureResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += procedures_msgs.msg.ProcedureState.getMessageSize(object.state);
    length += procedures_msgs.msg.ProcedureResult.getMessageSize(object.result);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_local_control_msgs/StatusPetitionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '353bf68fa257f91b3fa7d7541df3d5c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatusPetitionResponse(null);
    if (msg.state !== undefined) {
      resolved.state = procedures_msgs.msg.ProcedureState.Resolve(msg.state)
    }
    else {
      resolved.state = new procedures_msgs.msg.ProcedureState()
    }

    if (msg.result !== undefined) {
      resolved.result = procedures_msgs.msg.ProcedureResult.Resolve(msg.result)
    }
    else {
      resolved.result = new procedures_msgs.msg.ProcedureResult()
    }

    return resolved;
    }
};

module.exports = {
  Request: StatusPetitionRequest,
  Response: StatusPetitionResponse,
  md5sum() { return 'aa14b613097697fed7a13ea046decefa'; },
  datatype() { return 'robot_local_control_msgs/StatusPetition'; }
};