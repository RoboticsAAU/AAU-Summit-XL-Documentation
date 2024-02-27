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

let EventSchedulerArray = require('../msg/EventSchedulerArray.js');

//-----------------------------------------------------------

class GetCommandSchedulerListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCommandSchedulerListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCommandSchedulerListRequest
    let len;
    let data = new GetCommandSchedulerListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_simple_command_manager_msgs/GetCommandSchedulerListRequest';
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
    const resolved = new GetCommandSchedulerListRequest(null);
    return resolved;
    }
};

class GetCommandSchedulerListResponse {
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
        this.list = new EventSchedulerArray();
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
    // Serializes a message object of type GetCommandSchedulerListResponse
    // Serialize message field [list]
    bufferOffset = EventSchedulerArray.serialize(obj.list, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCommandSchedulerListResponse
    let len;
    let data = new GetCommandSchedulerListResponse(null);
    // Deserialize message field [list]
    data.list = EventSchedulerArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EventSchedulerArray.getMessageSize(object.list);
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_simple_command_manager_msgs/GetCommandSchedulerListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eddf02e53400fb52131fc4d3a74bc6d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robot_simple_command_manager_msgs/EventSchedulerArray list
    bool success
    string message
    
    
    ================================================================================
    MSG: robot_simple_command_manager_msgs/EventSchedulerArray
    robot_simple_command_manager_msgs/EventScheduler[] Events
    
    ================================================================================
    MSG: robot_simple_command_manager_msgs/EventScheduler
    string id
    int32[] wk
    string date_start
    string date_end
    int32 hour
    int32 minute
    int32 repeat_hour
    bool enabled
    string commands
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCommandSchedulerListResponse(null);
    if (msg.list !== undefined) {
      resolved.list = EventSchedulerArray.Resolve(msg.list)
    }
    else {
      resolved.list = new EventSchedulerArray()
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
  Request: GetCommandSchedulerListRequest,
  Response: GetCommandSchedulerListResponse,
  md5sum() { return 'eddf02e53400fb52131fc4d3a74bc6d4'; },
  datatype() { return 'robot_simple_command_manager_msgs/GetCommandSchedulerList'; }
};
