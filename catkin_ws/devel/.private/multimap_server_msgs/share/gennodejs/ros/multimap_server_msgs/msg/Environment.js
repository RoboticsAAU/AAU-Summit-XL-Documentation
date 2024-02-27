// Auto-generated. Do not edit!

// (in-package multimap_server_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Environment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.global_frame = null;
      this.map_name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('global_frame')) {
        this.global_frame = initObj.global_frame
      }
      else {
        this.global_frame = '';
      }
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Environment
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [global_frame]
    bufferOffset = _serializer.string(obj.global_frame, buffer, bufferOffset);
    // Serialize message field [map_name]
    bufferOffset = _arraySerializer.string(obj.map_name, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Environment
    let len;
    let data = new Environment(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [global_frame]
    data.global_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_name]
    data.map_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.global_frame.length;
    object.map_name.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multimap_server_msgs/Environment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa9611ef212559f86614fff37385ab6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Environment(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.global_frame !== undefined) {
      resolved.global_frame = msg.global_frame;
    }
    else {
      resolved.global_frame = ''
    }

    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = []
    }

    return resolved;
    }
};

module.exports = Environment;
