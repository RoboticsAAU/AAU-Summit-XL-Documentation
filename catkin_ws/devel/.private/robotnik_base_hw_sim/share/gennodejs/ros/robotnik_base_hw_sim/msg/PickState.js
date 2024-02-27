// Auto-generated. Do not edit!

// (in-package robotnik_base_hw_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PickState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.robot_link = null;
      this.object_link = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('robot_link')) {
        this.robot_link = initObj.robot_link
      }
      else {
        this.robot_link = '';
      }
      if (initObj.hasOwnProperty('object_link')) {
        this.object_link = initObj.object_link
      }
      else {
        this.object_link = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickState
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [robot_link]
    bufferOffset = _serializer.string(obj.robot_link, buffer, bufferOffset);
    // Serialize message field [object_link]
    bufferOffset = _serializer.string(obj.object_link, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickState
    let len;
    let data = new PickState(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_link]
    data.robot_link = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [object_link]
    data.object_link = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.robot_link.length;
    length += object.object_link.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_base_hw_sim/PickState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32d0a87c73c7ac6e9560c3de9aff0951';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PickState(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.robot_link !== undefined) {
      resolved.robot_link = msg.robot_link;
    }
    else {
      resolved.robot_link = ''
    }

    if (msg.object_link !== undefined) {
      resolved.object_link = msg.object_link;
    }
    else {
      resolved.object_link = ''
    }

    return resolved;
    }
};

module.exports = PickState;
