// Auto-generated. Do not edit!

// (in-package robot_simple_command_manager_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let CommandManagerArray = require('../msg/CommandManagerArray.js');

//-----------------------------------------------------------

class GetCommandManagerListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCommandManagerListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCommandManagerListRequest
    let len;
    let data = new GetCommandManagerListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_simple_command_manager_msgs/GetCommandManagerListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCommandManagerListRequest(null);
    return resolved;
    }
};

class GetCommandManagerListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.list = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('list')) {
        this.list = initObj.list
      }
      else {
        this.list = new CommandManagerArray();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCommandManagerListResponse
    // Serialize message field [list]
    bufferOffset = CommandManagerArray.serialize(obj.list, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCommandManagerListResponse
    let len;
    let data = new GetCommandManagerListResponse(null);
    // Deserialize message field [list]
    data.list = CommandManagerArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CommandManagerArray.getMessageSize(object.list);
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_simple_command_manager_msgs/GetCommandManagerListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'efa7801a29cc81feaf45e89c194507dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robot_simple_command_manager_msgs/CommandManagerArray list
    bool success
    string message
    
    
    ================================================================================
    MSG: robot_simple_command_manager_msgs/CommandManagerArray
    robot_simple_command_manager_msgs/CommandManager[] commands
    
    
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
    const resolved = new GetCommandManagerListResponse(null);
    if (msg.list !== undefined) {
      resolved.list = CommandManagerArray.Resolve(msg.list)
    }
    else {
      resolved.list = new CommandManagerArray()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCommandManagerListRequest,
  Response: GetCommandManagerListResponse,
  md5sum() { return 'efa7801a29cc81feaf45e89c194507dc'; },
  datatype() { return 'robot_simple_command_manager_msgs/GetCommandManagerList'; }
};
