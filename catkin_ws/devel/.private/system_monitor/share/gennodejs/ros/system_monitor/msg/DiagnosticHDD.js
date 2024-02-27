// Auto-generated. Do not edit!

// (in-package system_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HDDStatus = require('./HDDStatus.js');

//-----------------------------------------------------------

class DiagnosticHDD {
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
        this.status = new HDDStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiagnosticHDD
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [hardware_id]
    bufferOffset = _serializer.string(obj.hardware_id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = HDDStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiagnosticHDD
    let len;
    let data = new DiagnosticHDD(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hardware_id]
    data.hardware_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = HDDStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.message.length;
    length += object.hardware_id.length;
    length += HDDStatus.getMessageSize(object.status);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/DiagnosticHDD';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90b65e631e647c3f69d6475dcbed9297';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    # Possible values for message: 'OK', 'Warning','Error'
    string message
    string hardware_id
    system_monitor/HDDStatus status
    
    ================================================================================
    MSG: system_monitor/HDDStatus
    string status
    float32 time
    string space_reading
    system_monitor/Disk[] disks
    
    ================================================================================
    MSG: system_monitor/Disk
    int8 id
    string name
    string status
    string mount_point
    #Size of the disk in G
    float32 size
    float32 available
    #% of total size used
    float32 use
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiagnosticHDD(null);
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
      resolved.status = HDDStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new HDDStatus()
    }

    return resolved;
    }
};

module.exports = DiagnosticHDD;
