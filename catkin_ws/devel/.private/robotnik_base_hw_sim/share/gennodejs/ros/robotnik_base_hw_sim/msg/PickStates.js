// Auto-generated. Do not edit!

// (in-package robotnik_base_hw_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PickState = require('./PickState.js');

//-----------------------------------------------------------

class PickStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.picks = null;
    }
    else {
      if (initObj.hasOwnProperty('picks')) {
        this.picks = initObj.picks
      }
      else {
        this.picks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickStates
    // Serialize message field [picks]
    // Serialize the length for message field [picks]
    bufferOffset = _serializer.uint32(obj.picks.length, buffer, bufferOffset);
    obj.picks.forEach((val) => {
      bufferOffset = PickState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickStates
    let len;
    let data = new PickStates(null);
    // Deserialize message field [picks]
    // Deserialize array length for message field [picks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.picks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.picks[i] = PickState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.picks.forEach((val) => {
      length += PickState.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_base_hw_sim/PickStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5959bc2f0ba4465d7d86c50b3f3f894';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # List of current picks
    PickState[] picks
    ================================================================================
    MSG: robotnik_base_hw_sim/PickState
    string id
    string robot_link
    string object_link
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PickStates(null);
    if (msg.picks !== undefined) {
      resolved.picks = new Array(msg.picks.length);
      for (let i = 0; i < resolved.picks.length; ++i) {
        resolved.picks[i] = PickState.Resolve(msg.picks[i]);
      }
    }
    else {
      resolved.picks = []
    }

    return resolved;
    }
};

module.exports = PickStates;
