// Auto-generated. Do not edit!

// (in-package multimap_server_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LoadEnvironmentsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.environments_url = null;
    }
    else {
      if (initObj.hasOwnProperty('environments_url')) {
        this.environments_url = initObj.environments_url
      }
      else {
        this.environments_url = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadEnvironmentsRequest
    // Serialize message field [environments_url]
    bufferOffset = _serializer.string(obj.environments_url, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadEnvironmentsRequest
    let len;
    let data = new LoadEnvironmentsRequest(null);
    // Deserialize message field [environments_url]
    data.environments_url = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.environments_url.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimap_server_msgs/LoadEnvironmentsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6019b8be6b9c6d48cc612a504327e4bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string environments_url
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadEnvironmentsRequest(null);
    if (msg.environments_url !== undefined) {
      resolved.environments_url = msg.environments_url;
    }
    else {
      resolved.environments_url = ''
    }

    return resolved;
    }
};

class LoadEnvironmentsResponse {
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
    // Serializes a message object of type LoadEnvironmentsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadEnvironmentsResponse
    let len;
    let data = new LoadEnvironmentsResponse(null);
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
    return 'multimap_server_msgs/LoadEnvironmentsResponse';
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
    const resolved = new LoadEnvironmentsResponse(null);
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
  Request: LoadEnvironmentsRequest,
  Response: LoadEnvironmentsResponse,
  md5sum() { return 'f9c07b944bb09f9a6818d9b28b6141ea'; },
  datatype() { return 'multimap_server_msgs/LoadEnvironments'; }
};
