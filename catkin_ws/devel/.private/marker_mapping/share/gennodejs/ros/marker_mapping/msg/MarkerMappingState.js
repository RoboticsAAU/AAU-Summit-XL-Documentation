// Auto-generated. Do not edit!

// (in-package marker_mapping.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robotnik_msgs = _finder('robotnik_msgs');

//-----------------------------------------------------------

class MarkerMappingState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.ids_recorded = null;
      this.ids_detected = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new robotnik_msgs.msg.State();
      }
      if (initObj.hasOwnProperty('ids_recorded')) {
        this.ids_recorded = initObj.ids_recorded
      }
      else {
        this.ids_recorded = [];
      }
      if (initObj.hasOwnProperty('ids_detected')) {
        this.ids_detected = initObj.ids_detected
      }
      else {
        this.ids_detected = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MarkerMappingState
    // Serialize message field [state]
    bufferOffset = robotnik_msgs.msg.State.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [ids_recorded]
    bufferOffset = _arraySerializer.int32(obj.ids_recorded, buffer, bufferOffset, null);
    // Serialize message field [ids_detected]
    bufferOffset = _arraySerializer.int32(obj.ids_detected, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MarkerMappingState
    let len;
    let data = new MarkerMappingState(null);
    // Deserialize message field [state]
    data.state = robotnik_msgs.msg.State.deserialize(buffer, bufferOffset);
    // Deserialize message field [ids_recorded]
    data.ids_recorded = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [ids_detected]
    data.ids_detected = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += robotnik_msgs.msg.State.getMessageSize(object.state);
    length += 4 * object.ids_recorded.length;
    length += 4 * object.ids_detected.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marker_mapping/MarkerMappingState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb3fc0eea314f2b16a963d2e0c2d2b3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/State state
    int32[] ids_recorded
    int32[] ids_detected
    
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
    const resolved = new MarkerMappingState(null);
    if (msg.state !== undefined) {
      resolved.state = robotnik_msgs.msg.State.Resolve(msg.state)
    }
    else {
      resolved.state = new robotnik_msgs.msg.State()
    }

    if (msg.ids_recorded !== undefined) {
      resolved.ids_recorded = msg.ids_recorded;
    }
    else {
      resolved.ids_recorded = []
    }

    if (msg.ids_detected !== undefined) {
      resolved.ids_detected = msg.ids_detected;
    }
    else {
      resolved.ids_detected = []
    }

    return resolved;
    }
};

module.exports = MarkerMappingState;
