// Auto-generated. Do not edit!

// (in-package robot_simple_command_manager_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EventScheduler = require('../msg/EventScheduler.js');

//-----------------------------------------------------------

let ReturnMessage = require('../msg/ReturnMessage.js');

//-----------------------------------------------------------

class AddScheduleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.event = null;
    }
    else {
      if (initObj.hasOwnProperty('event')) {
        this.event = initObj.event
      }
      else {
        this.event = new EventScheduler();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddScheduleRequest
    // Serialize message field [event]
    bufferOffset = EventScheduler.serialize(obj.event, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddScheduleRequest
    let len;
    let data = new AddScheduleRequest(null);
    // Deserialize message field [event]
    data.event = EventScheduler.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EventScheduler.getMessageSize(object.event);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_simple_command_manager_msgs/AddScheduleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd98ad416fa8d002cde0281e58b5337a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robot_simple_command_manager_msgs/EventScheduler event
    
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
    const resolved = new AddScheduleRequest(null);
    if (msg.event !== undefined) {
      resolved.event = EventScheduler.Resolve(msg.event)
    }
    else {
      resolved.event = new EventScheduler()
    }

    return resolved;
    }
};

class AddScheduleResponse {
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
    // Serializes a message object of type AddScheduleResponse
    // Serialize message field [ret]
    bufferOffset = ReturnMessage.serialize(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddScheduleResponse
    let len;
    let data = new AddScheduleResponse(null);
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
    return 'robot_simple_command_manager_msgs/AddScheduleResponse';
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
    const resolved = new AddScheduleResponse(null);
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
  Request: AddScheduleRequest,
  Response: AddScheduleResponse,
  md5sum() { return 'b7a10e19aed6c1fa97294e8f10d01f3b'; },
  datatype() { return 'robot_simple_command_manager_msgs/AddSchedule'; }
};
