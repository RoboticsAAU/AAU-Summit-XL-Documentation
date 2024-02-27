// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose2DStamped = require('./Pose2DStamped.js');
let Twist2D = require('./Twist2D.js');
let ControllerStatus = require('./ControllerStatus.js');
let SensorStatus = require('./SensorStatus.js');
let robotnik_msgs = _finder('robotnik_msgs');

//-----------------------------------------------------------

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.battery = null;
      this.emergency_stop = null;
      this.pose = null;
      this.velocity = null;
      this.safety_status = null;
      this.battery_docking_status = null;
      this.controllers = null;
      this.sensors = null;
      this.elevator = null;
    }
    else {
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = new robotnik_msgs.msg.BatteryStatus();
      }
      if (initObj.hasOwnProperty('emergency_stop')) {
        this.emergency_stop = initObj.emergency_stop
      }
      else {
        this.emergency_stop = false;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Pose2DStamped();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Twist2D();
      }
      if (initObj.hasOwnProperty('safety_status')) {
        this.safety_status = initObj.safety_status
      }
      else {
        this.safety_status = new robotnik_msgs.msg.SafetyModuleStatus();
      }
      if (initObj.hasOwnProperty('battery_docking_status')) {
        this.battery_docking_status = initObj.battery_docking_status
      }
      else {
        this.battery_docking_status = new robotnik_msgs.msg.BatteryDockingStatus();
      }
      if (initObj.hasOwnProperty('controllers')) {
        this.controllers = initObj.controllers
      }
      else {
        this.controllers = [];
      }
      if (initObj.hasOwnProperty('sensors')) {
        this.sensors = initObj.sensors
      }
      else {
        this.sensors = [];
      }
      if (initObj.hasOwnProperty('elevator')) {
        this.elevator = initObj.elevator
      }
      else {
        this.elevator = new robotnik_msgs.msg.ElevatorStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [battery]
    bufferOffset = robotnik_msgs.msg.BatteryStatus.serialize(obj.battery, buffer, bufferOffset);
    // Serialize message field [emergency_stop]
    bufferOffset = _serializer.bool(obj.emergency_stop, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = Pose2DStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = Twist2D.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [safety_status]
    bufferOffset = robotnik_msgs.msg.SafetyModuleStatus.serialize(obj.safety_status, buffer, bufferOffset);
    // Serialize message field [battery_docking_status]
    bufferOffset = robotnik_msgs.msg.BatteryDockingStatus.serialize(obj.battery_docking_status, buffer, bufferOffset);
    // Serialize message field [controllers]
    // Serialize the length for message field [controllers]
    bufferOffset = _serializer.uint32(obj.controllers.length, buffer, bufferOffset);
    obj.controllers.forEach((val) => {
      bufferOffset = ControllerStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sensors]
    // Serialize the length for message field [sensors]
    bufferOffset = _serializer.uint32(obj.sensors.length, buffer, bufferOffset);
    obj.sensors.forEach((val) => {
      bufferOffset = SensorStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [elevator]
    bufferOffset = robotnik_msgs.msg.ElevatorStatus.serialize(obj.elevator, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [battery]
    data.battery = robotnik_msgs.msg.BatteryStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [emergency_stop]
    data.emergency_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = Pose2DStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = Twist2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [safety_status]
    data.safety_status = robotnik_msgs.msg.SafetyModuleStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [battery_docking_status]
    data.battery_docking_status = robotnik_msgs.msg.BatteryDockingStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [controllers]
    // Deserialize array length for message field [controllers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.controllers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.controllers[i] = ControllerStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sensors]
    // Deserialize array length for message field [sensors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sensors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sensors[i] = SensorStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [elevator]
    data.elevator = robotnik_msgs.msg.ElevatorStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Pose2DStamped.getMessageSize(object.pose);
    length += robotnik_msgs.msg.SafetyModuleStatus.getMessageSize(object.safety_status);
    length += robotnik_msgs.msg.BatteryDockingStatus.getMessageSize(object.battery_docking_status);
    object.controllers.forEach((val) => {
      length += ControllerStatus.getMessageSize(val);
    });
    object.sensors.forEach((val) => {
      length += SensorStatus.getMessageSize(val);
    });
    length += robotnik_msgs.msg.ElevatorStatus.getMessageSize(object.elevator);
    return length + 54;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d5bc9a08e5159ee68da8f752c6d8f5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStatus(null);
    if (msg.battery !== undefined) {
      resolved.battery = robotnik_msgs.msg.BatteryStatus.Resolve(msg.battery)
    }
    else {
      resolved.battery = new robotnik_msgs.msg.BatteryStatus()
    }

    if (msg.emergency_stop !== undefined) {
      resolved.emergency_stop = msg.emergency_stop;
    }
    else {
      resolved.emergency_stop = false
    }

    if (msg.pose !== undefined) {
      resolved.pose = Pose2DStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new Pose2DStamped()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = Twist2D.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new Twist2D()
    }

    if (msg.safety_status !== undefined) {
      resolved.safety_status = robotnik_msgs.msg.SafetyModuleStatus.Resolve(msg.safety_status)
    }
    else {
      resolved.safety_status = new robotnik_msgs.msg.SafetyModuleStatus()
    }

    if (msg.battery_docking_status !== undefined) {
      resolved.battery_docking_status = robotnik_msgs.msg.BatteryDockingStatus.Resolve(msg.battery_docking_status)
    }
    else {
      resolved.battery_docking_status = new robotnik_msgs.msg.BatteryDockingStatus()
    }

    if (msg.controllers !== undefined) {
      resolved.controllers = new Array(msg.controllers.length);
      for (let i = 0; i < resolved.controllers.length; ++i) {
        resolved.controllers[i] = ControllerStatus.Resolve(msg.controllers[i]);
      }
    }
    else {
      resolved.controllers = []
    }

    if (msg.sensors !== undefined) {
      resolved.sensors = new Array(msg.sensors.length);
      for (let i = 0; i < resolved.sensors.length; ++i) {
        resolved.sensors[i] = SensorStatus.Resolve(msg.sensors[i]);
      }
    }
    else {
      resolved.sensors = []
    }

    if (msg.elevator !== undefined) {
      resolved.elevator = robotnik_msgs.msg.ElevatorStatus.Resolve(msg.elevator)
    }
    else {
      resolved.elevator = new robotnik_msgs.msg.ElevatorStatus()
    }

    return resolved;
    }
};

module.exports = RobotStatus;
