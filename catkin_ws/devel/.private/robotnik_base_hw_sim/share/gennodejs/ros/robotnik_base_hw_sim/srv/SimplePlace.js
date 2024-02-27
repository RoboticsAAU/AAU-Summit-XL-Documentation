// Auto-generated. Do not edit!

// (in-package robotnik_base_hw_sim.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SimplePlaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_model = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_model')) {
        this.robot_model = initObj.robot_model
      }
      else {
        this.robot_model = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimplePlaceRequest
    // Serialize message field [robot_model]
    bufferOffset = _serializer.string(obj.robot_model, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimplePlaceRequest
    let len;
    let data = new SimplePlaceRequest(null);
    // Deserialize message field [robot_model]
    data.robot_model = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_model.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_base_hw_sim/SimplePlaceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc26dc9732c3c9b50ff2fc8e348c7543';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # gazebo robot model 
    string robot_model
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimplePlaceRequest(null);
    if (msg.robot_model !== undefined) {
      resolved.robot_model = msg.robot_model;
    }
    else {
      resolved.robot_model = ''
    }

    return resolved;
    }
};

class SimplePlaceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimplePlaceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimplePlaceResponse
    let len;
    let data = new SimplePlaceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_base_hw_sim/SimplePlaceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e835b04f93d0b30fd8cb71e0967a16db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string msg
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimplePlaceResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SimplePlaceRequest,
  Response: SimplePlaceResponse,
  md5sum() { return '95799f2d58893c79e6082b9161169c3b'; },
  datatype() { return 'robotnik_base_hw_sim/SimplePlace'; }
};
