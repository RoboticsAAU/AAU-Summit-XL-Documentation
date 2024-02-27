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

class SaveMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_service = null;
      this.map_filename = null;
      this.use_default_thresholds = null;
      this.threshold_occupied = null;
      this.threshold_free = null;
    }
    else {
      if (initObj.hasOwnProperty('map_service')) {
        this.map_service = initObj.map_service
      }
      else {
        this.map_service = '';
      }
      if (initObj.hasOwnProperty('map_filename')) {
        this.map_filename = initObj.map_filename
      }
      else {
        this.map_filename = '';
      }
      if (initObj.hasOwnProperty('use_default_thresholds')) {
        this.use_default_thresholds = initObj.use_default_thresholds
      }
      else {
        this.use_default_thresholds = false;
      }
      if (initObj.hasOwnProperty('threshold_occupied')) {
        this.threshold_occupied = initObj.threshold_occupied
      }
      else {
        this.threshold_occupied = 0.0;
      }
      if (initObj.hasOwnProperty('threshold_free')) {
        this.threshold_free = initObj.threshold_free
      }
      else {
        this.threshold_free = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveMapRequest
    // Serialize message field [map_service]
    bufferOffset = _serializer.string(obj.map_service, buffer, bufferOffset);
    // Serialize message field [map_filename]
    bufferOffset = _serializer.string(obj.map_filename, buffer, bufferOffset);
    // Serialize message field [use_default_thresholds]
    bufferOffset = _serializer.bool(obj.use_default_thresholds, buffer, bufferOffset);
    // Serialize message field [threshold_occupied]
    bufferOffset = _serializer.float32(obj.threshold_occupied, buffer, bufferOffset);
    // Serialize message field [threshold_free]
    bufferOffset = _serializer.float32(obj.threshold_free, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMapRequest
    let len;
    let data = new SaveMapRequest(null);
    // Deserialize message field [map_service]
    data.map_service = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_filename]
    data.map_filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [use_default_thresholds]
    data.use_default_thresholds = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [threshold_occupied]
    data.threshold_occupied = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [threshold_free]
    data.threshold_free = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_service.length;
    length += object.map_filename.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimap_server_msgs/SaveMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebd6613153c831dbee1815192e8a95a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_service
    string map_filename
    bool use_default_thresholds
    float32 threshold_occupied
    float32 threshold_free
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveMapRequest(null);
    if (msg.map_service !== undefined) {
      resolved.map_service = msg.map_service;
    }
    else {
      resolved.map_service = ''
    }

    if (msg.map_filename !== undefined) {
      resolved.map_filename = msg.map_filename;
    }
    else {
      resolved.map_filename = ''
    }

    if (msg.use_default_thresholds !== undefined) {
      resolved.use_default_thresholds = msg.use_default_thresholds;
    }
    else {
      resolved.use_default_thresholds = false
    }

    if (msg.threshold_occupied !== undefined) {
      resolved.threshold_occupied = msg.threshold_occupied;
    }
    else {
      resolved.threshold_occupied = 0.0
    }

    if (msg.threshold_free !== undefined) {
      resolved.threshold_free = msg.threshold_free;
    }
    else {
      resolved.threshold_free = 0.0
    }

    return resolved;
    }
};

class SaveMapResponse {
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
    // Serializes a message object of type SaveMapResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMapResponse
    let len;
    let data = new SaveMapResponse(null);
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
    return 'multimap_server_msgs/SaveMapResponse';
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
    const resolved = new SaveMapResponse(null);
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
  Request: SaveMapRequest,
  Response: SaveMapResponse,
  md5sum() { return 'f25d1deb37e0c563df0c08bd04f45a79'; },
  datatype() { return 'multimap_server_msgs/SaveMap'; }
};
