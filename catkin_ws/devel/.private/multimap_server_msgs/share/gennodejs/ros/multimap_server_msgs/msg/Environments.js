// Auto-generated. Do not edit!

// (in-package multimap_server_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Environment = require('./Environment.js');

//-----------------------------------------------------------

class Environments {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.environments = null;
    }
    else {
      if (initObj.hasOwnProperty('environments')) {
        this.environments = initObj.environments
      }
      else {
        this.environments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Environments
    // Serialize message field [environments]
    // Serialize the length for message field [environments]
    bufferOffset = _serializer.uint32(obj.environments.length, buffer, bufferOffset);
    obj.environments.forEach((val) => {
      bufferOffset = Environment.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Environments
    let len;
    let data = new Environments(null);
    // Deserialize message field [environments]
    // Deserialize array length for message field [environments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.environments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.environments[i] = Environment.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.environments.forEach((val) => {
      length += Environment.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multimap_server_msgs/Environments';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a38a933443cfbee1aab1953a7c63dd5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Environment[] environments
    
    ================================================================================
    MSG: multimap_server_msgs/Environment
    string name
    string global_frame
    string[] map_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Environments(null);
    if (msg.environments !== undefined) {
      resolved.environments = new Array(msg.environments.length);
      for (let i = 0; i < resolved.environments.length; ++i) {
        resolved.environments[i] = Environment.Resolve(msg.environments[i]);
      }
    }
    else {
      resolved.environments = []
    }

    return resolved;
    }
};

module.exports = Environments;
