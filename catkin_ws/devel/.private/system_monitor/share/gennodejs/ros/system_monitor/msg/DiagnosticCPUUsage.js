// Auto-generated. Do not edit!

// (in-package system_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CPUUsageStatus = require('./CPUUsageStatus.js');

//-----------------------------------------------------------

class DiagnosticCPUUsage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.message = null;
      this.hardware_id = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('hardware_id')) {
        this.hardware_id = initObj.hardware_id
      }
      else {
        this.hardware_id = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new CPUUsageStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiagnosticCPUUsage
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [hardware_id]
    bufferOffset = _serializer.string(obj.hardware_id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = CPUUsageStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiagnosticCPUUsage
    let len;
    let data = new DiagnosticCPUUsage(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hardware_id]
    data.hardware_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = CPUUsageStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.message.length;
    length += object.hardware_id.length;
    length += CPUUsageStatus.getMessageSize(object.status);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/DiagnosticCPUUsage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '612aee1cee68c976c5b1d1ecf7006c25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    # Possible values for message: 'OK', 'Warning','Error'
    string message
    string hardware_id
    system_monitor/CPUUsageStatus status
    
    ================================================================================
    MSG: system_monitor/CPUUsageStatus
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
    const resolved = new DiagnosticCPUUsage(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.hardware_id !== undefined) {
      resolved.hardware_id = msg.hardware_id;
    }
    else {
      resolved.hardware_id = ''
    }

    if (msg.status !== undefined) {
      resolved.status = CPUUsageStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new CPUUsageStatus()
    }

    return resolved;
    }
};

module.exports = DiagnosticCPUUsage;
