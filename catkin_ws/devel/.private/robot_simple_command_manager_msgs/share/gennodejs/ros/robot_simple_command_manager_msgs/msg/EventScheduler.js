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

class EventScheduler {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.wk = null;
      this.date_start = null;
      this.date_end = null;
      this.hour = null;
      this.minute = null;
      this.repeat_hour = null;
      this.enabled = null;
      this.commands = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('wk')) {
        this.wk = initObj.wk
      }
      else {
        this.wk = [];
      }
      if (initObj.hasOwnProperty('date_start')) {
        this.date_start = initObj.date_start
      }
      else {
        this.date_start = '';
      }
      if (initObj.hasOwnProperty('date_end')) {
        this.date_end = initObj.date_end
      }
      else {
        this.date_end = '';
      }
      if (initObj.hasOwnProperty('hour')) {
        this.hour = initObj.hour
      }
      else {
        this.hour = 0;
      }
      if (initObj.hasOwnProperty('minute')) {
        this.minute = initObj.minute
      }
      else {
        this.minute = 0;
      }
      if (initObj.hasOwnProperty('repeat_hour')) {
        this.repeat_hour = initObj.repeat_hour
      }
      else {
        this.repeat_hour = 0;
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
      if (initObj.hasOwnProperty('commands')) {
        this.commands = initObj.commands
      }
      else {
        this.commands = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EventScheduler
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [wk]
    bufferOffset = _arraySerializer.int32(obj.wk, buffer, bufferOffset, null);
    // Serialize message field [date_start]
    bufferOffset = _serializer.string(obj.date_start, buffer, bufferOffset);
    // Serialize message field [date_end]
    bufferOffset = _serializer.string(obj.date_end, buffer, bufferOffset);
    // Serialize message field [hour]
    bufferOffset = _serializer.int32(obj.hour, buffer, bufferOffset);
    // Serialize message field [minute]
    bufferOffset = _serializer.int32(obj.minute, buffer, bufferOffset);
    // Serialize message field [repeat_hour]
    bufferOffset = _serializer.int32(obj.repeat_hour, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    // Serialize message field [commands]
    bufferOffset = _serializer.string(obj.commands, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EventScheduler
    let len;
    let data = new EventScheduler(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wk]
    data.wk = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [date_start]
    data.date_start = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [date_end]
    data.date_end = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hour]
    data.hour = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [minute]
    data.minute = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [repeat_hour]
    data.repeat_hour = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [commands]
    data.commands = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += 4 * object.wk.length;
    length += object.date_start.length;
    length += object.date_end.length;
    length += object.commands.length;
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_simple_command_manager_msgs/EventScheduler';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27881408b237c4e879319551ad0eebe8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new EventScheduler(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.wk !== undefined) {
      resolved.wk = msg.wk;
    }
    else {
      resolved.wk = []
    }

    if (msg.date_start !== undefined) {
      resolved.date_start = msg.date_start;
    }
    else {
      resolved.date_start = ''
    }

    if (msg.date_end !== undefined) {
      resolved.date_end = msg.date_end;
    }
    else {
      resolved.date_end = ''
    }

    if (msg.hour !== undefined) {
      resolved.hour = msg.hour;
    }
    else {
      resolved.hour = 0
    }

    if (msg.minute !== undefined) {
      resolved.minute = msg.minute;
    }
    else {
      resolved.minute = 0
    }

    if (msg.repeat_hour !== undefined) {
      resolved.repeat_hour = msg.repeat_hour;
    }
    else {
      resolved.repeat_hour = 0
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    if (msg.commands !== undefined) {
      resolved.commands = msg.commands;
    }
    else {
      resolved.commands = ''
    }

    return resolved;
    }
};

module.exports = EventScheduler;
