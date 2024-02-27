// Auto-generated. Do not edit!

// (in-package system_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Memory = require('./Memory.js');

//-----------------------------------------------------------

class MEMStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.memories = null;
      this.totalM = null;
      this.usedM = null;
      this.freeM = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('memories')) {
        this.memories = initObj.memories
      }
      else {
        this.memories = [];
      }
      if (initObj.hasOwnProperty('totalM')) {
        this.totalM = initObj.totalM
      }
      else {
        this.totalM = 0;
      }
      if (initObj.hasOwnProperty('usedM')) {
        this.usedM = initObj.usedM
      }
      else {
        this.usedM = 0;
      }
      if (initObj.hasOwnProperty('freeM')) {
        this.freeM = initObj.freeM
      }
      else {
        this.freeM = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MEMStatus
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [memories]
    // Serialize the length for message field [memories]
    bufferOffset = _serializer.uint32(obj.memories.length, buffer, bufferOffset);
    obj.memories.forEach((val) => {
      bufferOffset = Memory.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [totalM]
    bufferOffset = _serializer.int32(obj.totalM, buffer, bufferOffset);
    // Serialize message field [usedM]
    bufferOffset = _serializer.int32(obj.usedM, buffer, bufferOffset);
    // Serialize message field [freeM]
    bufferOffset = _serializer.int32(obj.freeM, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MEMStatus
    let len;
    let data = new MEMStatus(null);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [memories]
    // Deserialize array length for message field [memories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.memories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.memories[i] = Memory.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [totalM]
    data.totalM = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [usedM]
    data.usedM = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [freeM]
    data.freeM = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.memories.forEach((val) => {
      length += Memory.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/MEMStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87aa3708fd29c92a6112f09fa739ebe9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 time
    system_monitor/Memory[] memories
    #Memory space in M
    int32 totalM
    int32 usedM
    int32 freeM
    ================================================================================
    MSG: system_monitor/Memory
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
    const resolved = new MEMStatus(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.memories !== undefined) {
      resolved.memories = new Array(msg.memories.length);
      for (let i = 0; i < resolved.memories.length; ++i) {
        resolved.memories[i] = Memory.Resolve(msg.memories[i]);
      }
    }
    else {
      resolved.memories = []
    }

    if (msg.totalM !== undefined) {
      resolved.totalM = msg.totalM;
    }
    else {
      resolved.totalM = 0
    }

    if (msg.usedM !== undefined) {
      resolved.usedM = msg.usedM;
    }
    else {
      resolved.usedM = 0
    }

    if (msg.freeM !== undefined) {
      resolved.freeM = msg.freeM;
    }
    else {
      resolved.freeM = 0
    }

    return resolved;
    }
};

module.exports = MEMStatus;
