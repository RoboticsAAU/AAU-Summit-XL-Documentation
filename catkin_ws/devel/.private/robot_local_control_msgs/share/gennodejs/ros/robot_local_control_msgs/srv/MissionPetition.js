// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionStatus = require('../msg/MissionStatus.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionPetitionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('mission')) {
        this.mission = initObj.mission
      }
      else {
        this.mission = new MissionStatus();
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionPetitionRequest
    // Serialize message field [mission]
    bufferOffset = MissionStatus.serialize(obj.mission, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionPetitionRequest
    let len;
    let data = new MissionPetitionRequest(null);
    // Deserialize message field [mission]
    data.mission = MissionStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MissionStatus.getMessageSize(object.mission);
    length += object.action.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_local_control_msgs/MissionPetitionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1ca819f6ed33b10f8a97f226f528fb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Actions to tell mission component what to do
    # START, starts a mission
    # STOP, stops a mission
    
    string START=start
    string STOP=stop
    
    MissionStatus mission
    string action
    
    ================================================================================
    MSG: robot_local_control_msgs/MissionStatus
    # MISSION STATES
    # States inside a mission
    string UNKNOWN=unknown
    string RUNNING=running
    string PAUSED=paused
    string FINISHED=finished
    string CANCELLED=cancelled
    string ERROR=error
    string QUEUED=queued
    # running: mission is running
    # paused: mission is paused
    # finished: mission finished
    # canceled: mission has been canceled
    # error: an error occurred during the execution of the mission
    # queued: the mission is queued
    
    
    #
    int32 id
    
    # ID of the mision based on string format: GOTO [4,5,6]
    string description
    
    # running, paused, finished,...
    string state
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionPetitionRequest(null);
    if (msg.mission !== undefined) {
      resolved.mission = MissionStatus.Resolve(msg.mission)
    }
    else {
      resolved.mission = new MissionStatus()
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    return resolved;
    }
};

// Constants for message
MissionPetitionRequest.Constants = {
  START: 'start',
  STOP: 'stop',
}

class MissionPetitionResponse {
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
    // Serializes a message object of type MissionPetitionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionPetitionResponse
    let len;
    let data = new MissionPetitionResponse(null);
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
    return 'robot_local_control_msgs/MissionPetitionResponse';
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
    const resolved = new MissionPetitionResponse(null);
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
  Request: MissionPetitionRequest,
  Response: MissionPetitionResponse,
  md5sum() { return 'd23b48ec07b484e69921f98c567e661e'; },
  datatype() { return 'robot_local_control_msgs/MissionPetition'; }
};
