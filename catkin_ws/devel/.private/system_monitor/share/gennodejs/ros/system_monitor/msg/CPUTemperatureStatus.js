// Auto-generated. Do not edit!

// (in-package system_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CoreTemp = require('./CoreTemp.js');

//-----------------------------------------------------------

class CPUTemperatureStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.time = null;
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
      if (initObj.hasOwnProperty('cores')) {
        this.cores = initObj.cores
      }
      else {
        this.cores = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CPUTemperatureStatus
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [cores]
    // Serialize the length for message field [cores]
    bufferOffset = _serializer.uint32(obj.cores.length, buffer, bufferOffset);
    obj.cores.forEach((val) => {
      bufferOffset = CoreTemp.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CPUTemperatureStatus
    let len;
    let data = new CPUTemperatureStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cores]
    // Deserialize array length for message field [cores]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cores = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cores[i] = CoreTemp.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    length += 5 * object.cores.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/CPUTemperatureStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1225aebb87ce815e0a8186ef49cf99cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string status
    float32 time
    system_monitor/CoreTemp[] cores
    
    ================================================================================
    MSG: system_monitor/CoreTemp
    int8 id
    #Temperature of the core in DegC
    float32 temp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CPUTemperatureStatus(null);
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

    if (msg.cores !== undefined) {
      resolved.cores = new Array(msg.cores.length);
      for (let i = 0; i < resolved.cores.length; ++i) {
        resolved.cores[i] = CoreTemp.Resolve(msg.cores[i]);
      }
    }
    else {
      resolved.cores = []
    }

    return resolved;
    }
};

module.exports = CPUTemperatureStatus;
