// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionParamInt = require('./MissionParamInt.js');
let MissionParamFloat = require('./MissionParamFloat.js');
let MissionParamString = require('./MissionParamString.js');
let MissionParamBool = require('./MissionParamBool.js');

//-----------------------------------------------------------

class MissionCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.command = null;
      this.int_params = null;
      this.float_params = null;
      this.string_params = null;
      this.bool_params = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('int_params')) {
        this.int_params = initObj.int_params
      }
      else {
        this.int_params = [];
      }
      if (initObj.hasOwnProperty('float_params')) {
        this.float_params = initObj.float_params
      }
      else {
        this.float_params = [];
      }
      if (initObj.hasOwnProperty('string_params')) {
        this.string_params = initObj.string_params
      }
      else {
        this.string_params = [];
      }
      if (initObj.hasOwnProperty('bool_params')) {
        this.bool_params = initObj.bool_params
      }
      else {
        this.bool_params = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionCommand
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [int_params]
    // Serialize the length for message field [int_params]
    bufferOffset = _serializer.uint32(obj.int_params.length, buffer, bufferOffset);
    obj.int_params.forEach((val) => {
      bufferOffset = MissionParamInt.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [float_params]
    // Serialize the length for message field [float_params]
    bufferOffset = _serializer.uint32(obj.float_params.length, buffer, bufferOffset);
    obj.float_params.forEach((val) => {
      bufferOffset = MissionParamFloat.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [string_params]
    // Serialize the length for message field [string_params]
    bufferOffset = _serializer.uint32(obj.string_params.length, buffer, bufferOffset);
    obj.string_params.forEach((val) => {
      bufferOffset = MissionParamString.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bool_params]
    // Serialize the length for message field [bool_params]
    bufferOffset = _serializer.uint32(obj.bool_params.length, buffer, bufferOffset);
    obj.bool_params.forEach((val) => {
      bufferOffset = MissionParamBool.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionCommand
    let len;
    let data = new MissionCommand(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [int_params]
    // Deserialize array length for message field [int_params]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.int_params = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.int_params[i] = MissionParamInt.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [float_params]
    // Deserialize array length for message field [float_params]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.float_params = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.float_params[i] = MissionParamFloat.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [string_params]
    // Deserialize array length for message field [string_params]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.string_params = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.string_params[i] = MissionParamString.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bool_params]
    // Deserialize array length for message field [bool_params]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bool_params = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bool_params[i] = MissionParamBool.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    object.int_params.forEach((val) => {
      length += MissionParamInt.getMessageSize(val);
    });
    object.float_params.forEach((val) => {
      length += MissionParamFloat.getMessageSize(val);
    });
    object.string_params.forEach((val) => {
      length += MissionParamString.getMessageSize(val);
    });
    object.bool_params.forEach((val) => {
      length += MissionParamBool.getMessageSize(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/MissionCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c34ea7f130e34df4f5f94460596dd71a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MissionCommand(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.int_params !== undefined) {
      resolved.int_params = new Array(msg.int_params.length);
      for (let i = 0; i < resolved.int_params.length; ++i) {
        resolved.int_params[i] = MissionParamInt.Resolve(msg.int_params[i]);
      }
    }
    else {
      resolved.int_params = []
    }

    if (msg.float_params !== undefined) {
      resolved.float_params = new Array(msg.float_params.length);
      for (let i = 0; i < resolved.float_params.length; ++i) {
        resolved.float_params[i] = MissionParamFloat.Resolve(msg.float_params[i]);
      }
    }
    else {
      resolved.float_params = []
    }

    if (msg.string_params !== undefined) {
      resolved.string_params = new Array(msg.string_params.length);
      for (let i = 0; i < resolved.string_params.length; ++i) {
        resolved.string_params[i] = MissionParamString.Resolve(msg.string_params[i]);
      }
    }
    else {
      resolved.string_params = []
    }

    if (msg.bool_params !== undefined) {
      resolved.bool_params = new Array(msg.bool_params.length);
      for (let i = 0; i < resolved.bool_params.length; ++i) {
        resolved.bool_params[i] = MissionParamBool.Resolve(msg.bool_params[i]);
      }
    }
    else {
      resolved.bool_params = []
    }

    return resolved;
    }
};

// Constants for message
MissionCommand.Constants = {
  GOTO_POSE: 'goto_pose',
  GOTO_TAG: 'goto_tag',
  GOTO_NODE: 'goto_node',
}

module.exports = MissionCommand;
