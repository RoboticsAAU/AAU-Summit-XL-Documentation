// Auto-generated. Do not edit!

// (in-package robotnik_rms_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let mission = require('../msg/mission.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class missionManagerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission = null;
    }
    else {
      if (initObj.hasOwnProperty('mission')) {
        this.mission = initObj.mission
      }
      else {
        this.mission = new mission();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type missionManagerRequest
    // Serialize message field [mission]
    bufferOffset = mission.serialize(obj.mission, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type missionManagerRequest
    let len;
    let data = new missionManagerRequest(null);
    // Deserialize message field [mission]
    data.mission = mission.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += mission.getMessageSize(object.mission);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_rms_msgs/missionManagerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '633c22ceb2678fe5f5b80bfd64bfc6cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_rms_msgs/mission mission
    
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
    const resolved = new missionManagerRequest(null);
    if (msg.mission !== undefined) {
      resolved.mission = mission.Resolve(msg.mission)
    }
    else {
      resolved.mission = new mission()
    }

    return resolved;
    }
};

class missionManagerResponse {
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
    // Serializes a message object of type missionManagerResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type missionManagerResponse
    let len;
    let data = new missionManagerResponse(null);
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
    return 'robotnik_rms_msgs/missionManagerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new missionManagerResponse(null);
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
  Request: missionManagerRequest,
  Response: missionManagerResponse,
  md5sum() { return 'eed017ea040ecaef8187ff321acee5e0'; },
  datatype() { return 'robotnik_rms_msgs/missionManager'; }
};
