// Auto-generated. Do not edit!

// (in-package robotnik_leds_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LedResetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.password = null;
      this.reset = null;
    }
    else {
      if (initObj.hasOwnProperty('password')) {
        this.password = initObj.password
      }
      else {
        this.password = '';
      }
      if (initObj.hasOwnProperty('reset')) {
        this.reset = initObj.reset
      }
      else {
        this.reset = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedResetRequest
    // Serialize message field [password]
    bufferOffset = _serializer.string(obj.password, buffer, bufferOffset);
    // Serialize message field [reset]
    bufferOffset = _serializer.bool(obj.reset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedResetRequest
    let len;
    let data = new LedResetRequest(null);
    // Deserialize message field [password]
    data.password = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reset]
    data.reset = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.password.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_leds_msgs/LedResetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38b5eca572637ea335996a677152f609';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string password  # Same password used on robotnik robots
    bool   reset     # Flag to reset the hardware board
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedResetRequest(null);
    if (msg.password !== undefined) {
      resolved.password = msg.password;
    }
    else {
      resolved.password = ''
    }

    if (msg.reset !== undefined) {
      resolved.reset = msg.reset;
    }
    else {
      resolved.reset = false
    }

    return resolved;
    }
};

class LedResetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedResetResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedResetResponse
    let len;
    let data = new LedResetResponse(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_leds_msgs/LedResetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f003d6bcc824cbd51361d66d8e4f76c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedResetResponse(null);
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
  Request: LedResetRequest,
  Response: LedResetResponse,
  md5sum() { return '6dc4366229cc625582e84d622d779bfb'; },
  datatype() { return 'robotnik_leds_msgs/LedReset'; }
};
