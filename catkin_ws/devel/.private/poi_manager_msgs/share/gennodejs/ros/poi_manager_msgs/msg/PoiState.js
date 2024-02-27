// Auto-generated. Do not edit!

// (in-package poi_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robotnik_msgs = _finder('robotnik_msgs');

//-----------------------------------------------------------

class PoiState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new robotnik_msgs.msg.State();
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoiState
    // Serialize message field [state]
    bufferOffset = robotnik_msgs.msg.State.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoiState
    let len;
    let data = new PoiState(null);
    // Deserialize message field [state]
    data.state = robotnik_msgs.msg.State.deserialize(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += robotnik_msgs.msg.State.getMessageSize(object.state);
    length += object.action.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'poi_manager_msgs/PoiState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '101b52bedf2e3b0a4131fc9efb64a91c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string IDLE=idle
    string GOTO=goto
    
    robotnik_msgs/State state
    string action
    
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
    const resolved = new PoiState(null);
    if (msg.state !== undefined) {
      resolved.state = robotnik_msgs.msg.State.Resolve(msg.state)
    }
    else {
      resolved.state = new robotnik_msgs.msg.State()
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    return resolved;
    }
};

// Constants for message
PoiState.Constants = {
  IDLE: 'idle',
  GOTO: 'goto',
}

module.exports = PoiState;
