// Auto-generated. Do not edit!

// (in-package system_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Memory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.total = null;
      this.used = null;
      this.free = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('total')) {
        this.total = initObj.total
      }
      else {
        this.total = 0;
      }
      if (initObj.hasOwnProperty('used')) {
        this.used = initObj.used
      }
      else {
        this.used = 0;
      }
      if (initObj.hasOwnProperty('free')) {
        this.free = initObj.free
      }
      else {
        this.free = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Memory
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [total]
    bufferOffset = _serializer.int32(obj.total, buffer, bufferOffset);
    // Serialize message field [used]
    bufferOffset = _serializer.int32(obj.used, buffer, bufferOffset);
    // Serialize message field [free]
    bufferOffset = _serializer.int32(obj.free, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Memory
    let len;
    let data = new Memory(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [total]
    data.total = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [used]
    data.used = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [free]
    data.free = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/Memory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e76664714b587a3a9161519dc52642f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    #Memory space in M
    #Physical w/o buffers total is zero
    int32 total
    int32 used
    int32 free
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Memory(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.total !== undefined) {
      resolved.total = msg.total;
    }
    else {
      resolved.total = 0
    }

    if (msg.used !== undefined) {
      resolved.used = msg.used;
    }
    else {
      resolved.used = 0
    }

    if (msg.free !== undefined) {
      resolved.free = msg.free;
    }
    else {
      resolved.free = 0
    }

    return resolved;
    }
};

module.exports = Memory;
