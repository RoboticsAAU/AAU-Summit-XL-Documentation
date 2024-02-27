// Auto-generated. Do not edit!

// (in-package robot_simple_command_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CommandManagerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loaded_commands = null;
      this.paused_commands = null;
      this.command = null;
      this.code = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('loaded_commands')) {
        this.loaded_commands = initObj.loaded_commands
      }
      else {
        this.loaded_commands = [];
      }
      if (initObj.hasOwnProperty('paused_commands')) {
        this.paused_commands = initObj.paused_commands
      }
      else {
        this.paused_commands = [];
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = '';
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandManagerStatus
    // Serialize message field [loaded_commands]
    bufferOffset = _arraySerializer.string(obj.loaded_commands, buffer, bufferOffset, null);
    // Serialize message field [paused_commands]
    bufferOffset = _arraySerializer.string(obj.paused_commands, buffer, bufferOffset, null);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _serializer.string(obj.code, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandManagerStatus
    let len;
    let data = new CommandManagerStatus(null);
    // Deserialize message field [loaded_commands]
    data.loaded_commands = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [paused_commands]
    data.paused_commands = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.loaded_commands.forEach((val) => {
      length += 4 + val.length;
    });
    object.paused_commands.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.command.length;
    length += object.code.length;
    length += object.msg.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_simple_command_manager_msgs/CommandManagerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e13857c463eeda968a68cbe49d47f8d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] loaded_commands
    string[] paused_commands
    string command
    string code
    string msg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommandManagerStatus(null);
    if (msg.loaded_commands !== undefined) {
      resolved.loaded_commands = msg.loaded_commands;
    }
    else {
      resolved.loaded_commands = []
    }

    if (msg.paused_commands !== undefined) {
      resolved.paused_commands = msg.paused_commands;
    }
    else {
      resolved.paused_commands = []
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = ''
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = CommandManagerStatus;
