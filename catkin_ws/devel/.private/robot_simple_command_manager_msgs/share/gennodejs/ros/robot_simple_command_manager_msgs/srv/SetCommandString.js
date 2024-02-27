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

let ReturnMessage = require('../msg/ReturnMessage.js');

//-----------------------------------------------------------

class SetCommandStringRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCommandStringRequest
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCommandStringRequest
    let len;
    let data = new SetCommandStringRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_simple_command_manager_msgs/SetCommandStringRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cba5e21e920a3a2b7b375cb65b64cdea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCommandStringRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    return resolved;
    }
};

class SetCommandStringResponse {
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
    // Serializes a message object of type SetCommandStringResponse
    // Serialize message field [ret]
    bufferOffset = ReturnMessage.serialize(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCommandStringResponse
    let len;
    let data = new SetCommandStringResponse(null);
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
    return 'robot_simple_command_manager_msgs/SetCommandStringResponse';
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
    const resolved = new SetCommandStringResponse(null);
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
  Request: SetCommandStringRequest,
  Response: SetCommandStringResponse,
  md5sum() { return 'a562ec88e0fa4ca847fa743945bf6490'; },
  datatype() { return 'robot_simple_command_manager_msgs/SetCommandString'; }
};
