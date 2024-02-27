// Auto-generated. Do not edit!

// (in-package map_nav_manager.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robotnik_msgs = _finder('robotnik_msgs');

//-----------------------------------------------------------

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.substate = null;
      this.mapping = null;
      this.navigation = null;
      this.localization = null;
      this.map_server = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new robotnik_msgs.msg.State();
      }
      if (initObj.hasOwnProperty('substate')) {
        this.substate = initObj.substate
      }
      else {
        this.substate = '';
      }
      if (initObj.hasOwnProperty('mapping')) {
        this.mapping = initObj.mapping
      }
      else {
        this.mapping = false;
      }
      if (initObj.hasOwnProperty('navigation')) {
        this.navigation = initObj.navigation
      }
      else {
        this.navigation = false;
      }
      if (initObj.hasOwnProperty('localization')) {
        this.localization = initObj.localization
      }
      else {
        this.localization = false;
      }
      if (initObj.hasOwnProperty('map_server')) {
        this.map_server = initObj.map_server
      }
      else {
        this.map_server = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [state]
    bufferOffset = robotnik_msgs.msg.State.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [substate]
    bufferOffset = _serializer.string(obj.substate, buffer, bufferOffset);
    // Serialize message field [mapping]
    bufferOffset = _serializer.bool(obj.mapping, buffer, bufferOffset);
    // Serialize message field [navigation]
    bufferOffset = _serializer.bool(obj.navigation, buffer, bufferOffset);
    // Serialize message field [localization]
    bufferOffset = _serializer.bool(obj.localization, buffer, bufferOffset);
    // Serialize message field [map_server]
    bufferOffset = _serializer.bool(obj.map_server, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [state]
    data.state = robotnik_msgs.msg.State.deserialize(buffer, bufferOffset);
    // Deserialize message field [substate]
    data.substate = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mapping]
    data.mapping = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [navigation]
    data.navigation = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [localization]
    data.localization = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [map_server]
    data.map_server = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += robotnik_msgs.msg.State.getMessageSize(object.state);
    length += object.substate.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'map_nav_manager/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb3247a8a50c3079508d6ddd0c93c134';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/State state
    string substate
    bool mapping
    bool navigation
    bool localization
    bool map_server
    
    ================================================================================
    MSG: robotnik_msgs/State
    # constants
    int32 INIT_STATE = 100
    int32 STANDBY_STATE = 200
    int32 READY_STATE = 300
    int32 EMERGENCY_STATE = 400
    int32 FAILURE_STATE = 500
    int32 SHUTDOWN_STATE = 600
    int32 UNKOWN_STATE = 700
    
    # state of the component
    int32 state
    # desired control loop frecuency
    float32 desired_freq
    # real frecuency 
    float32 real_freq
    # Description of the state
    string state_description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State(null);
    if (msg.state !== undefined) {
      resolved.state = robotnik_msgs.msg.State.Resolve(msg.state)
    }
    else {
      resolved.state = new robotnik_msgs.msg.State()
    }

    if (msg.substate !== undefined) {
      resolved.substate = msg.substate;
    }
    else {
      resolved.substate = ''
    }

    if (msg.mapping !== undefined) {
      resolved.mapping = msg.mapping;
    }
    else {
      resolved.mapping = false
    }

    if (msg.navigation !== undefined) {
      resolved.navigation = msg.navigation;
    }
    else {
      resolved.navigation = false
    }

    if (msg.localization !== undefined) {
      resolved.localization = msg.localization;
    }
    else {
      resolved.localization = false
    }

    if (msg.map_server !== undefined) {
      resolved.map_server = msg.map_server;
    }
    else {
      resolved.map_server = false
    }

    return resolved;
    }
};

module.exports = State;
