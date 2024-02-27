// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionCommand = require('../msg/MissionCommand.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionCommandPetitionRequest {
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
        this.command = new MissionCommand();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionCommandPetitionRequest
    // Serialize message field [command]
    bufferOffset = MissionCommand.serialize(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionCommandPetitionRequest
    let len;
    let data = new MissionCommandPetitionRequest(null);
    // Deserialize message field [command]
    data.command = MissionCommand.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MissionCommand.getMessageSize(object.command);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_local_control_msgs/MissionCommandPetitionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0974609f2dac5dfd138a7ae7e5461fb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MissionCommand command
    
    ================================================================================
    MSG: robot_local_control_msgs/MissionCommand
    # XXX: DO NOT USE THIS MESSAGE
    # available commands
    string GOTO_POSE=goto_pose
    string GOTO_TAG=goto_tag
    string GOTO_NODE=goto_node
    
    # id set from the subsystem calling the service
    int32 id
    # command from the available commands
    string command
    
    MissionParamInt[] int_params
    MissionParamFloat[] float_params
    MissionParamString[] string_params
    MissionParamBool[] bool_params
    
    
    
    
    ================================================================================
    MSG: robot_local_control_msgs/MissionParamInt
    # param name
    string name
    # param value
    int32 value
    
    
    ================================================================================
    MSG: robot_local_control_msgs/MissionParamFloat
    # param name
    string name
    # param value
    float32 value
    
    
    ================================================================================
    MSG: robot_local_control_msgs/MissionParamString
    # param name
    string name
    # param value
    string value
    
    
    ================================================================================
    MSG: robot_local_control_msgs/MissionParamBool
    # param name
    string name
    # param value
    bool value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionCommandPetitionRequest(null);
    if (msg.command !== undefined) {
      resolved.command = MissionCommand.Resolve(msg.command)
    }
    else {
      resolved.command = new MissionCommand()
    }

    return resolved;
    }
};

class MissionCommandPetitionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
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
    // Serializes a message object of type MissionCommandPetitionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionCommandPetitionResponse
    let len;
    let data = new MissionCommandPetitionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_local_control_msgs/MissionCommandPetitionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionCommandPetitionResponse(null);
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
  Request: MissionCommandPetitionRequest,
  Response: MissionCommandPetitionResponse,
  md5sum() { return '09baf2a641d8c856ea25723a419f07b4'; },
  datatype() { return 'robot_local_control_msgs/MissionCommandPetition'; }
};
