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

class StatusCodes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatusCodes
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatusCodes
    let len;
    let data = new StatusCodes(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_simple_command_manager_msgs/StatusCodes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4c26888d420c5a0f01c58b3c577e13c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 ACTIVE    =  1
    int16 CANCELLED =  2
    int16 SUCCEEDED =  3
    int16 FAILED    =  4
    int16 REJECTED  =  5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatusCodes(null);
    return resolved;
    }
};

// Constants for message
StatusCodes.Constants = {
  ACTIVE: 1,
  CANCELLED: 2,
  SUCCEEDED: 3,
  FAILED: 4,
  REJECTED: 5,
}

module.exports = StatusCodes;
