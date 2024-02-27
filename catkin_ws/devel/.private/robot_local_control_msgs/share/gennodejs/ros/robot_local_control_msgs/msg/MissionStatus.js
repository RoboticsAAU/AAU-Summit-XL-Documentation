// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MissionStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.description = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionStatus
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionStatus
    let len;
    let data = new MissionStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.description.length;
    length += object.state.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/MissionStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13930350bc85ee5ad0913d85d697f1b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MissionStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    return resolved;
    }
};

// Constants for message
MissionStatus.Constants = {
  UNKNOWN: 'unknown',
  RUNNING: 'running',
  PAUSED: 'paused',
  FINISHED: 'finished',
  CANCELLED: 'cancelled',
  ERROR: 'error',
  QUEUED: 'queued',
}

module.exports = MissionStatus;
