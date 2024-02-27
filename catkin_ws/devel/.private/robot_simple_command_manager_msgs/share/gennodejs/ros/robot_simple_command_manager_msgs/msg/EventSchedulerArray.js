// Auto-generated. Do not edit!

// (in-package robot_simple_command_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EventScheduler = require('./EventScheduler.js');

//-----------------------------------------------------------

class EventSchedulerArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Events = null;
    }
    else {
      if (initObj.hasOwnProperty('Events')) {
        this.Events = initObj.Events
      }
      else {
        this.Events = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EventSchedulerArray
    // Serialize message field [Events]
    // Serialize the length for message field [Events]
    bufferOffset = _serializer.uint32(obj.Events.length, buffer, bufferOffset);
    obj.Events.forEach((val) => {
      bufferOffset = EventScheduler.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EventSchedulerArray
    let len;
    let data = new EventSchedulerArray(null);
    // Deserialize message field [Events]
    // Deserialize array length for message field [Events]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Events = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Events[i] = EventScheduler.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.Events.forEach((val) => {
      length += EventScheduler.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_simple_command_manager_msgs/EventSchedulerArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25a91bd6bc6eea637712c34f0a26b0c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new EventSchedulerArray(null);
    if (msg.Events !== undefined) {
      resolved.Events = new Array(msg.Events.length);
      for (let i = 0; i < resolved.Events.length; ++i) {
        resolved.Events[i] = EventScheduler.Resolve(msg.Events[i]);
      }
    }
    else {
      resolved.Events = []
    }

    return resolved;
    }
};

module.exports = EventSchedulerArray;
