// Auto-generated. Do not edit!

// (in-package system_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Disk = require('./Disk.js');

//-----------------------------------------------------------

class HDDStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.time = null;
      this.space_reading = null;
      this.disks = null;
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
      if (initObj.hasOwnProperty('space_reading')) {
        this.space_reading = initObj.space_reading
      }
      else {
        this.space_reading = '';
      }
      if (initObj.hasOwnProperty('disks')) {
        this.disks = initObj.disks
      }
      else {
        this.disks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HDDStatus
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [space_reading]
    bufferOffset = _serializer.string(obj.space_reading, buffer, bufferOffset);
    // Serialize message field [disks]
    // Serialize the length for message field [disks]
    bufferOffset = _serializer.uint32(obj.disks.length, buffer, bufferOffset);
    obj.disks.forEach((val) => {
      bufferOffset = Disk.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HDDStatus
    let len;
    let data = new HDDStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [space_reading]
    data.space_reading = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [disks]
    // Deserialize array length for message field [disks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.disks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.disks[i] = Disk.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    length += object.space_reading.length;
    object.disks.forEach((val) => {
      length += Disk.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/HDDStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9464edca9fb3861e03bc3ae40d6d8bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new HDDStatus(null);
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

    if (msg.space_reading !== undefined) {
      resolved.space_reading = msg.space_reading;
    }
    else {
      resolved.space_reading = ''
    }

    if (msg.disks !== undefined) {
      resolved.disks = new Array(msg.disks.length);
      for (let i = 0; i < resolved.disks.length; ++i) {
        resolved.disks[i] = Disk.Resolve(msg.disks[i]);
      }
    }
    else {
      resolved.disks = []
    }

    return resolved;
    }
};

module.exports = HDDStatus;
