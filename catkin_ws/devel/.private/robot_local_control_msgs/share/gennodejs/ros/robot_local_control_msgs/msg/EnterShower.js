// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EnterShower {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.from = null;
      this.door = null;
    }
    else {
      if (initObj.hasOwnProperty('from')) {
        this.from = initObj.from
      }
      else {
        this.from = '';
      }
      if (initObj.hasOwnProperty('door')) {
        this.door = initObj.door
      }
      else {
        this.door = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnterShower
    // Serialize message field [from]
    bufferOffset = _serializer.string(obj.from, buffer, bufferOffset);
    // Serialize message field [door]
    bufferOffset = _serializer.string(obj.door, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnterShower
    let len;
    let data = new EnterShower(null);
    // Deserialize message field [from]
    data.from = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [door]
    data.door = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.from.length;
    length += object.door.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/EnterShower';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cc80ebefcfb199be1c6890e9744d51c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # valid values: warehouse, production
    string from
    # valid values: left, right, as seen from warehouse side
    string door
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnterShower(null);
    if (msg.from !== undefined) {
      resolved.from = msg.from;
    }
    else {
      resolved.from = ''
    }

    if (msg.door !== undefined) {
      resolved.door = msg.door;
    }
    else {
      resolved.door = ''
    }

    return resolved;
    }
};

module.exports = EnterShower;
