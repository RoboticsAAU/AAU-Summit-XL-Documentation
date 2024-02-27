// Auto-generated. Do not edit!

// (in-package robotnik_rms_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let mission = require('../msg/mission.js');

//-----------------------------------------------------------

class getMissionsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getMissionsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getMissionsRequest
    let len;
    let data = new getMissionsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_rms_msgs/getMissionsRequest';
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
    const resolved = new getMissionsRequest(null);
    return resolved;
    }
};

class getMissionsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.missions = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('missions')) {
        this.missions = initObj.missions
      }
      else {
        this.missions = [];
      }
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
    // Serializes a message object of type getMissionsResponse
    // Serialize message field [missions]
    // Serialize the length for message field [missions]
    bufferOffset = _serializer.uint32(obj.missions.length, buffer, bufferOffset);
    obj.missions.forEach((val) => {
      bufferOffset = mission.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getMissionsResponse
    let len;
    let data = new getMissionsResponse(null);
    // Deserialize message field [missions]
    // Deserialize array length for message field [missions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.missions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.missions[i] = mission.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.missions.forEach((val) => {
      length += mission.getMessageSize(val);
    });
    length += object.message.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_rms_msgs/getMissionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b76c60d5e61505e4ed284f030715b867';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_rms_msgs/mission[] missions
    bool success
    string message
    
    ================================================================================
    MSG: robotnik_rms_msgs/mission
    string name_mission
    int32 id_mission
    string description
    robotnik_rms_msgs/action[] actions
    
    ================================================================================
    MSG: robotnik_rms_msgs/action
    
    int32 type_action
    string id_action
    string name_action
    string description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new getMissionsResponse(null);
    if (msg.missions !== undefined) {
      resolved.missions = new Array(msg.missions.length);
      for (let i = 0; i < resolved.missions.length; ++i) {
        resolved.missions[i] = mission.Resolve(msg.missions[i]);
      }
    }
    else {
      resolved.missions = []
    }

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
  Request: getMissionsRequest,
  Response: getMissionsResponse,
  md5sum() { return 'b76c60d5e61505e4ed284f030715b867'; },
  datatype() { return 'robotnik_rms_msgs/getMissions'; }
};
