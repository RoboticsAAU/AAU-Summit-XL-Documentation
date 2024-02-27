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

class SequenceStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.commands = null;
      this.current_command = null;
      this.command_index = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('commands')) {
        this.commands = initObj.commands
      }
      else {
        this.commands = [];
      }
      if (initObj.hasOwnProperty('current_command')) {
        this.current_command = initObj.current_command
      }
      else {
        this.current_command = '';
      }
      if (initObj.hasOwnProperty('command_index')) {
        this.command_index = initObj.command_index
      }
      else {
        this.command_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SequenceStatus
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [commands]
    bufferOffset = _arraySerializer.string(obj.commands, buffer, bufferOffset, null);
    // Serialize message field [current_command]
    bufferOffset = _serializer.string(obj.current_command, buffer, bufferOffset);
    // Serialize message field [command_index]
    bufferOffset = _serializer.int16(obj.command_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SequenceStatus
    let len;
    let data = new SequenceStatus(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [commands]
    data.commands = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [current_command]
    data.current_command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command_index]
    data.command_index = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    object.commands.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.current_command.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_simple_command_manager_msgs/SequenceStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28564f5cd26c96ad764c97f43145fa4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name 
    string[] commands 
    string current_command 
    int16 command_index 
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SequenceStatus(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.commands !== undefined) {
      resolved.commands = msg.commands;
    }
    else {
      resolved.commands = []
    }

    if (msg.current_command !== undefined) {
      resolved.current_command = msg.current_command;
    }
    else {
      resolved.current_command = ''
    }

    if (msg.command_index !== undefined) {
      resolved.command_index = msg.command_index;
    }
    else {
      resolved.command_index = 0
    }

    return resolved;
    }
};

module.exports = SequenceStatus;
