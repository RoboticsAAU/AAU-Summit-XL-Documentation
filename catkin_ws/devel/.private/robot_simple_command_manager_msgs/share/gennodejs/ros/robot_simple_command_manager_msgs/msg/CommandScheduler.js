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

class CommandScheduler {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.event = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('event')) {
        this.event = initObj.event
      }
      else {
        this.event = new EventScheduler();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandScheduler
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [event]
    bufferOffset = EventScheduler.serialize(obj.event, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandScheduler
    let len;
    let data = new CommandScheduler(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [event]
    data.event = EventScheduler.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += EventScheduler.getMessageSize(object.event);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_simple_command_manager_msgs/CommandScheduler';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa29fc47a3f6a75713a143d1c813a3e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
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
    const resolved = new CommandScheduler(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.event !== undefined) {
      resolved.event = EventScheduler.Resolve(msg.event)
    }
    else {
      resolved.event = new EventScheduler()
    }

    return resolved;
    }
};

module.exports = CommandScheduler;
