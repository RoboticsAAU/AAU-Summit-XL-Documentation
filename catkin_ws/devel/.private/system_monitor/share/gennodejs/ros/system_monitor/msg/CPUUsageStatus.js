// Auto-generated. Do not edit!

// (in-package system_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CoreUsage = require('./CoreUsage.js');

//-----------------------------------------------------------

class CPUUsageStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.time = null;
      this.load_status = null;
      this.load_avg1 = null;
      this.load_avg5 = null;
      this.load_avg15 = null;
      this.cores = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('load_status')) {
        this.load_status = initObj.load_status
      }
      else {
        this.load_status = '';
      }
      if (initObj.hasOwnProperty('load_avg1')) {
        this.load_avg1 = initObj.load_avg1
      }
      else {
        this.load_avg1 = 0.0;
      }
      if (initObj.hasOwnProperty('load_avg5')) {
        this.load_avg5 = initObj.load_avg5
      }
      else {
        this.load_avg5 = 0.0;
      }
      if (initObj.hasOwnProperty('load_avg15')) {
        this.load_avg15 = initObj.load_avg15
      }
      else {
        this.load_avg15 = 0.0;
      }
      if (initObj.hasOwnProperty('cores')) {
        this.cores = initObj.cores
      }
      else {
        this.cores = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CPUUsageStatus
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [load_status]
    bufferOffset = _serializer.string(obj.load_status, buffer, bufferOffset);
    // Serialize message field [load_avg1]
    bufferOffset = _serializer.float32(obj.load_avg1, buffer, bufferOffset);
    // Serialize message field [load_avg5]
    bufferOffset = _serializer.float32(obj.load_avg5, buffer, bufferOffset);
    // Serialize message field [load_avg15]
    bufferOffset = _serializer.float32(obj.load_avg15, buffer, bufferOffset);
    // Serialize message field [cores]
    // Serialize the length for message field [cores]
    bufferOffset = _serializer.uint32(obj.cores.length, buffer, bufferOffset);
    obj.cores.forEach((val) => {
      bufferOffset = CoreUsage.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CPUUsageStatus
    let len;
    let data = new CPUUsageStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [load_status]
    data.load_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [load_avg1]
    data.load_avg1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [load_avg5]
    data.load_avg5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [load_avg15]
    data.load_avg15 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cores]
    // Deserialize array length for message field [cores]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cores = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cores[i] = CoreUsage.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    length += object.load_status.length;
    object.cores.forEach((val) => {
      length += CoreUsage.getMessageSize(val);
    });
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/CPUUsageStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3d0188421c1391749e86c170c349143';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string status
    float32 time
    string load_status
    #Load average in %
    float32 load_avg1
    float32 load_avg5
    float32 load_avg15
    system_monitor/CoreUsage[] cores
    
    ================================================================================
    MSG: system_monitor/CoreUsage
    int8 id
    string status
    #Speed of the core in MHz
    float32 speed
    # % of the core used by user/system/...
    float32 user
    float32 nice
    float32 system
    float32 idle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CPUUsageStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.load_status !== undefined) {
      resolved.load_status = msg.load_status;
    }
    else {
      resolved.load_status = ''
    }

    if (msg.load_avg1 !== undefined) {
      resolved.load_avg1 = msg.load_avg1;
    }
    else {
      resolved.load_avg1 = 0.0
    }

    if (msg.load_avg5 !== undefined) {
      resolved.load_avg5 = msg.load_avg5;
    }
    else {
      resolved.load_avg5 = 0.0
    }

    if (msg.load_avg15 !== undefined) {
      resolved.load_avg15 = msg.load_avg15;
    }
    else {
      resolved.load_avg15 = 0.0
    }

    if (msg.cores !== undefined) {
      resolved.cores = new Array(msg.cores.length);
      for (let i = 0; i < resolved.cores.length; ++i) {
        resolved.cores[i] = CoreUsage.Resolve(msg.cores[i]);
      }
    }
    else {
      resolved.cores = []
    }

    return resolved;
    }
};

module.exports = CPUUsageStatus;
