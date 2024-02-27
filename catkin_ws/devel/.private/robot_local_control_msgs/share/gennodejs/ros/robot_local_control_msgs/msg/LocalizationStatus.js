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

//-----------------------------------------------------------

class LocalizationStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.reliable = null;
      this.environment = null;
      this.type = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Pose2DStamped();
      }
      if (initObj.hasOwnProperty('reliable')) {
        this.reliable = initObj.reliable
      }
      else {
        this.reliable = false;
      }
      if (initObj.hasOwnProperty('environment')) {
        this.environment = initObj.environment
      }
      else {
        this.environment = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalizationStatus
    // Serialize message field [pose]
    bufferOffset = Pose2DStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [reliable]
    bufferOffset = _serializer.bool(obj.reliable, buffer, bufferOffset);
    // Serialize message field [environment]
    bufferOffset = _serializer.string(obj.environment, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalizationStatus
    let len;
    let data = new LocalizationStatus(null);
    // Deserialize message field [pose]
    data.pose = Pose2DStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [reliable]
    data.reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [environment]
    data.environment = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Pose2DStamped.getMessageSize(object.pose);
    length += object.environment.length;
    length += object.type.length;
    length += object.state.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/LocalizationStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '070ab2c758290f3163c0493c24c6a324';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalizationStatus(null);
    if (msg.pose !== undefined) {
      resolved.pose = Pose2DStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new Pose2DStamped()
    }

    if (msg.reliable !== undefined) {
      resolved.reliable = msg.reliable;
    }
    else {
      resolved.reliable = false
    }

    if (msg.environment !== undefined) {
      resolved.environment = msg.environment;
    }
    else {
      resolved.environment = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    return resolved;
    }
};

// Constants for message
LocalizationStatus.Constants = {
  LOCALIZATION_TYPE_NONE: 'none',
  LOCALIZATION_TYPE_1: '1',
  LOCALIZATION_TYPE_2: '2',
  LOCALIZATION_TYPE_3: '3',
  LOCALIZATION_TYPE_4: '4',
  LOCALIZATION_STATE_INIT: 'init',
  LOCALIZATION_STATE_READY: 'ready',
  LOCALIZATION_STATE_EMERGENCY: 'emergency',
  LOCALIZATION_STATE_FAILURE: 'failure',
  LOCALIZATION_STATE_UNKNOWN: 'unknown',
}

module.exports = LocalizationStatus;
