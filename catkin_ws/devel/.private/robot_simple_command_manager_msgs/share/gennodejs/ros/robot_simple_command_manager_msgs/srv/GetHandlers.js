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


//-----------------------------------------------------------

class GetHandlersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetHandlersRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHandlersRequest
    let len;
    let data = new GetHandlersRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_simple_command_manager_msgs/GetHandlersRequest';
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
    const resolved = new GetHandlersRequest(null);
    return resolved;
    }
};

class GetHandlersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.handlers = null;
    }
    else {
      if (initObj.hasOwnProperty('handlers')) {
        this.handlers = initObj.handlers
      }
      else {
        this.handlers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetHandlersResponse
    // Serialize message field [handlers]
    bufferOffset = _arraySerializer.string(obj.handlers, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHandlersResponse
    let len;
    let data = new GetHandlersResponse(null);
    // Deserialize message field [handlers]
    data.handlers = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.handlers.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_simple_command_manager_msgs/GetHandlersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd8c5aa023d5f8392d90b9573cfc34a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] handlers
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetHandlersResponse(null);
    if (msg.handlers !== undefined) {
      resolved.handlers = msg.handlers;
    }
    else {
      resolved.handlers = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetHandlersRequest,
  Response: GetHandlersResponse,
  md5sum() { return 'dd8c5aa023d5f8392d90b9573cfc34a5'; },
  datatype() { return 'robot_simple_command_manager_msgs/GetHandlers'; }
};
