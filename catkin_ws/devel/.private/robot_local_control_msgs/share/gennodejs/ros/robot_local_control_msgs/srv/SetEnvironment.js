// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetEnvironmentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.environment = null;
    }
    else {
      if (initObj.hasOwnProperty('environment')) {
        this.environment = initObj.environment
      }
      else {
        this.environment = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetEnvironmentRequest
    // Serialize message field [environment]
    bufferOffset = _serializer.string(obj.environment, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEnvironmentRequest
    let len;
    let data = new SetEnvironmentRequest(null);
    // Deserialize message field [environment]
    data.environment = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.environment.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_local_control_msgs/SetEnvironmentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70802a554778fff9dda739539d9b31b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string environment
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEnvironmentRequest(null);
    if (msg.environment !== undefined) {
      resolved.environment = msg.environment;
    }
    else {
      resolved.environment = ''
    }

    return resolved;
    }
};

class SetEnvironmentResponse {
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
    // Serializes a message object of type SetEnvironmentResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetEnvironmentResponse
    let len;
    let data = new SetEnvironmentResponse(null);
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
    return 'robot_local_control_msgs/SetEnvironmentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   # indicate successful run of triggered service
    string message # informational, e.g. for error messages
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetEnvironmentResponse(null);
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
  Request: SetEnvironmentRequest,
  Response: SetEnvironmentResponse,
  md5sum() { return '4aa42c943cdd0b5692dc2dbb91c546f2'; },
  datatype() { return 'robot_local_control_msgs/SetEnvironment'; }
};
