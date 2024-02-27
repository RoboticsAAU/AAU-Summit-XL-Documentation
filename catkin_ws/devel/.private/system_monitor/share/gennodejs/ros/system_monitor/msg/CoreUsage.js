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

class CoreUsage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.status = null;
      this.speed = null;
      this.user = null;
      this.nice = null;
      this.system = null;
      this.idle = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('user')) {
        this.user = initObj.user
      }
      else {
        this.user = 0.0;
      }
      if (initObj.hasOwnProperty('nice')) {
        this.nice = initObj.nice
      }
      else {
        this.nice = 0.0;
      }
      if (initObj.hasOwnProperty('system')) {
        this.system = initObj.system
      }
      else {
        this.system = 0.0;
      }
      if (initObj.hasOwnProperty('idle')) {
        this.idle = initObj.idle
      }
      else {
        this.idle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CoreUsage
    // Serialize message field [id]
    bufferOffset = _serializer.int8(obj.id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [user]
    bufferOffset = _serializer.float32(obj.user, buffer, bufferOffset);
    // Serialize message field [nice]
    bufferOffset = _serializer.float32(obj.nice, buffer, bufferOffset);
    // Serialize message field [system]
    bufferOffset = _serializer.float32(obj.system, buffer, bufferOffset);
    // Serialize message field [idle]
    bufferOffset = _serializer.float32(obj.idle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CoreUsage
    let len;
    let data = new CoreUsage(null);
    // Deserialize message field [id]
    data.id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [user]
    data.user = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [nice]
    data.nice = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [system]
    data.system = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [idle]
    data.idle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/CoreUsage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d2b3978c7b592446e308ddd6c7d1cba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CoreUsage(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.user !== undefined) {
      resolved.user = msg.user;
    }
    else {
      resolved.user = 0.0
    }

    if (msg.nice !== undefined) {
      resolved.nice = msg.nice;
    }
    else {
      resolved.nice = 0.0
    }

    if (msg.system !== undefined) {
      resolved.system = msg.system;
    }
    else {
      resolved.system = 0.0
    }

    if (msg.idle !== undefined) {
      resolved.idle = msg.idle;
    }
    else {
      resolved.idle = 0.0
    }

    return resolved;
    }
};

module.exports = CoreUsage;
