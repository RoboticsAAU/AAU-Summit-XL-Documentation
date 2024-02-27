// Auto-generated. Do not edit!

// (in-package robotnik_rms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_status = null;
      this.description = null;
      this.message = null;
      this.mission_queue = null;
    }
    else {
      if (initObj.hasOwnProperty('current_status')) {
        this.current_status = initObj.current_status
      }
      else {
        this.current_status = 0;
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('mission_queue')) {
        this.mission_queue = initObj.mission_queue
      }
      else {
        this.mission_queue = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type status
    // Serialize message field [current_status]
    bufferOffset = _serializer.int32(obj.current_status, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [mission_queue]
    bufferOffset = _arraySerializer.string(obj.mission_queue, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type status
    let len;
    let data = new status(null);
    // Deserialize message field [current_status]
    data.current_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mission_queue]
    data.mission_queue = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.description.length;
    length += object.message.length;
    object.mission_queue.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_rms_msgs/status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5509b20dd1c7bf7cdd887ab3ce4eec0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 CURRENT_STATUS_ERROR = -1
    int32 CURRENT_STATUS_PREIDLE = 0
    int32 CURRENT_STATUS_IDLE = 1
    int32 CURRENT_STATUS_CHARGING_MISSION = 2
    int32 CURRENT_STATUS_EXECUTING_MISSION = 3
    int32 CURRENT_STATUS_PAUSE_MISSION=4
    int32 CURRENT_STATUS_CANCEL_MISSION=5
    
    int32 current_status
    string description
    string message
    string[] mission_queue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new status(null);
    if (msg.current_status !== undefined) {
      resolved.current_status = msg.current_status;
    }
    else {
      resolved.current_status = 0
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.mission_queue !== undefined) {
      resolved.mission_queue = msg.mission_queue;
    }
    else {
      resolved.mission_queue = []
    }

    return resolved;
    }
};

// Constants for message
status.Constants = {
  CURRENT_STATUS_ERROR: -1,
  CURRENT_STATUS_PREIDLE: 0,
  CURRENT_STATUS_IDLE: 1,
  CURRENT_STATUS_CHARGING_MISSION: 2,
  CURRENT_STATUS_EXECUTING_MISSION: 3,
  CURRENT_STATUS_PAUSE_MISSION: 4,
  CURRENT_STATUS_CANCEL_MISSION: 5,
}

module.exports = status;
