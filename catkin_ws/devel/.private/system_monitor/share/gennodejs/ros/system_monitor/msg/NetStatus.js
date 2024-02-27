// Auto-generated. Do not edit!

// (in-package system_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Interface = require('./Interface.js');

//-----------------------------------------------------------

class NetStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.time = null;
      this.interfaces = null;
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
      if (initObj.hasOwnProperty('interfaces')) {
        this.interfaces = initObj.interfaces
      }
      else {
        this.interfaces = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NetStatus
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [interfaces]
    // Serialize the length for message field [interfaces]
    bufferOffset = _serializer.uint32(obj.interfaces.length, buffer, bufferOffset);
    obj.interfaces.forEach((val) => {
      bufferOffset = Interface.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NetStatus
    let len;
    let data = new NetStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [interfaces]
    // Deserialize array length for message field [interfaces]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.interfaces = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.interfaces[i] = Interface.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    object.interfaces.forEach((val) => {
      length += Interface.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/NetStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee4c5e43ad900b8ca9900b78fe4a10d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string status
    float32 time
    system_monitor/Interface[] interfaces
    ================================================================================
    MSG: system_monitor/Interface
    string name
    string state
    #input/output speed in MB/s
    float32 input
    float32 output
    int32 mtu
    #Data received/transmitted in MB
    float32 received
    float32 transmitted
    int32 collisions
    int32 rxError
    int32 txError
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NetStatus(null);
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

    if (msg.interfaces !== undefined) {
      resolved.interfaces = new Array(msg.interfaces.length);
      for (let i = 0; i < resolved.interfaces.length; ++i) {
        resolved.interfaces[i] = Interface.Resolve(msg.interfaces[i]);
      }
    }
    else {
      resolved.interfaces = []
    }

    return resolved;
    }
};

module.exports = NetStatus;
