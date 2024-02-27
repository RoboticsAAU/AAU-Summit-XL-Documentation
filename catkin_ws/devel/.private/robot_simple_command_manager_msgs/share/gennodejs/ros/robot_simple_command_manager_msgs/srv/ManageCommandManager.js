// Auto-generated. Do not edit!

// (in-package robot_simple_command_manager_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CommandManager = require('../msg/CommandManager.js');

//-----------------------------------------------------------

let ReturnMessage = require('../msg/ReturnMessage.js');

//-----------------------------------------------------------

class ManageCommandManagerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Command = null;
    }
    else {
      if (initObj.hasOwnProperty('Command')) {
        this.Command = initObj.Command
      }
      else {
        this.Command = new CommandManager();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManageCommandManagerRequest
    // Serialize message field [Command]
    bufferOffset = CommandManager.serialize(obj.Command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageCommandManagerRequest
    let len;
    let data = new ManageCommandManagerRequest(null);
    // Deserialize message field [Command]
    data.Command = CommandManager.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CommandManager.getMessageSize(object.Command);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_simple_command_manager_msgs/ManageCommandManagerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0aff2781779c8df6d103de12b54046a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robot_simple_command_manager_msgs/CommandManager Command
    
    ================================================================================
    MSG: robot_simple_command_manager_msgs/CommandManager
    string id
    string command
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManageCommandManagerRequest(null);
    if (msg.Command !== undefined) {
      resolved.Command = CommandManager.Resolve(msg.Command)
    }
    else {
      resolved.Command = new CommandManager()
    }

    return resolved;
    }
};

class ManageCommandManagerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = new ReturnMessage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManageCommandManagerResponse
    // Serialize message field [ret]
    bufferOffset = ReturnMessage.serialize(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageCommandManagerResponse
    let len;
    let data = new ManageCommandManagerResponse(null);
    // Deserialize message field [ret]
    data.ret = ReturnMessage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ReturnMessage.getMessageSize(object.ret);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_simple_command_manager_msgs/ManageCommandManagerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cc59476b1732f75af5b4512acb5adbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robot_simple_command_manager_msgs/ReturnMessage ret
    
    ================================================================================
    MSG: robot_simple_command_manager_msgs/ReturnMessage
    bool success
    string message
    int16 code
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManageCommandManagerResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = ReturnMessage.Resolve(msg.ret)
    }
    else {
      resolved.ret = new ReturnMessage()
    }

    return resolved;
    }
};

module.exports = {
  Request: ManageCommandManagerRequest,
  Response: ManageCommandManagerResponse,
  md5sum() { return '71fe46a5c46f88e680dc57f023e7822c'; },
  datatype() { return 'robot_simple_command_manager_msgs/ManageCommandManager'; }
};
