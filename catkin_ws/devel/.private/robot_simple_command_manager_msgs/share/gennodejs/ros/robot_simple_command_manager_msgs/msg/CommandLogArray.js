// Auto-generated. Do not edit!

// (in-package robot_simple_command_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CommandLog = require('./CommandLog.js');

//-----------------------------------------------------------

class CommandLogArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.log_commands = null;
    }
    else {
      if (initObj.hasOwnProperty('log_commands')) {
        this.log_commands = initObj.log_commands
      }
      else {
        this.log_commands = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandLogArray
    // Serialize message field [log_commands]
    // Serialize the length for message field [log_commands]
    bufferOffset = _serializer.uint32(obj.log_commands.length, buffer, bufferOffset);
    obj.log_commands.forEach((val) => {
      bufferOffset = CommandLog.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandLogArray
    let len;
    let data = new CommandLogArray(null);
    // Deserialize message field [log_commands]
    // Deserialize array length for message field [log_commands]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.log_commands = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.log_commands[i] = CommandLog.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.log_commands.forEach((val) => {
      length += CommandLog.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_simple_command_manager_msgs/CommandLogArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5753f43e634712e7e70f05cdca4c3ba4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CommandLog[] log_commands
    ================================================================================
    MSG: robot_simple_command_manager_msgs/CommandLog
    string node_name
    string process_name
    string command
    string status
    string result
    bool error
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommandLogArray(null);
    if (msg.log_commands !== undefined) {
      resolved.log_commands = new Array(msg.log_commands.length);
      for (let i = 0; i < resolved.log_commands.length; ++i) {
        resolved.log_commands[i] = CommandLog.Resolve(msg.log_commands[i]);
      }
    }
    else {
      resolved.log_commands = []
    }

    return resolved;
    }
};

module.exports = CommandLogArray;
