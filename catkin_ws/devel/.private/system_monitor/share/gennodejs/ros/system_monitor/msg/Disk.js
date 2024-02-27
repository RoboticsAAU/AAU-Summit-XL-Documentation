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

class Disk {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.name = null;
      this.status = null;
      this.mount_point = null;
      this.size = null;
      this.available = null;
      this.use = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('mount_point')) {
        this.mount_point = initObj.mount_point
      }
      else {
        this.mount_point = '';
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0.0;
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0.0;
      }
      if (initObj.hasOwnProperty('use')) {
        this.use = initObj.use
      }
      else {
        this.use = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Disk
    // Serialize message field [id]
    bufferOffset = _serializer.int8(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [mount_point]
    bufferOffset = _serializer.string(obj.mount_point, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.float32(obj.size, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _serializer.float32(obj.available, buffer, bufferOffset);
    // Serialize message field [use]
    bufferOffset = _serializer.float32(obj.use, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Disk
    let len;
    let data = new Disk(null);
    // Deserialize message field [id]
    data.id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mount_point]
    data.mount_point = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [use]
    data.use = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.status.length;
    length += object.mount_point.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/Disk';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc25b0e895c10714a4772bbf00a5fe43';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Disk(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.mount_point !== undefined) {
      resolved.mount_point = msg.mount_point;
    }
    else {
      resolved.mount_point = ''
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0.0
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0.0
    }

    if (msg.use !== undefined) {
      resolved.use = msg.use;
    }
    else {
      resolved.use = 0.0
    }

    return resolved;
    }
};

module.exports = Disk;
