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

class PlaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_model = null;
      this.robot_model = null;
    }
    else {
      if (initObj.hasOwnProperty('object_model')) {
        this.object_model = initObj.object_model
      }
      else {
        this.object_model = '';
      }
      if (initObj.hasOwnProperty('robot_model')) {
        this.robot_model = initObj.robot_model
      }
      else {
        this.robot_model = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlaceRequest
    // Serialize message field [object_model]
    bufferOffset = _serializer.string(obj.object_model, buffer, bufferOffset);
    // Serialize message field [robot_model]
    bufferOffset = _serializer.string(obj.robot_model, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaceRequest
    let len;
    let data = new PlaceRequest(null);
    // Deserialize message field [object_model]
    data.object_model = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_model]
    data.robot_model = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object_model.length;
    length += object.robot_model.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_base_hw_sim/PlaceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22df349a66b37e5f83555d506069110d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # attach object link into robot link
    # Links and models are refered to Gazebo
    string object_model
    string robot_model
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlaceRequest(null);
    if (msg.object_model !== undefined) {
      resolved.object_model = msg.object_model;
    }
    else {
      resolved.object_model = ''
    }

    if (msg.robot_model !== undefined) {
      resolved.robot_model = msg.robot_model;
    }
    else {
      resolved.robot_model = ''
    }

    return resolved;
    }
};

class PlaceResponse {
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
    // Serializes a message object of type PlaceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaceResponse
    let len;
    let data = new PlaceResponse(null);
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
    return 'robotnik_base_hw_sim/PlaceResponse';
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
    const resolved = new PlaceResponse(null);
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
  Request: PlaceRequest,
  Response: PlaceResponse,
  md5sum() { return '07bbfe2a52b1b081057b9ea660d0c474'; },
  datatype() { return 'robotnik_base_hw_sim/Place'; }
};
