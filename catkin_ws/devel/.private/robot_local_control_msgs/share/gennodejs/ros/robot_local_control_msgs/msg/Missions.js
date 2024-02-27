// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionStatus = require('./MissionStatus.js');

//-----------------------------------------------------------

class Missions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current = null;
      this.last = null;
    }
    else {
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = new MissionStatus();
      }
      if (initObj.hasOwnProperty('last')) {
        this.last = initObj.last
      }
      else {
        this.last = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Missions
    // Serialize message field [current]
    bufferOffset = MissionStatus.serialize(obj.current, buffer, bufferOffset);
    // Serialize message field [last]
    // Serialize the length for message field [last]
    bufferOffset = _serializer.uint32(obj.last.length, buffer, bufferOffset);
    obj.last.forEach((val) => {
      bufferOffset = MissionStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Missions
    let len;
    let data = new Missions(null);
    // Deserialize message field [current]
    data.current = MissionStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [last]
    // Deserialize array length for message field [last]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.last = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.last[i] = MissionStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MissionStatus.getMessageSize(object.current);
    object.last.forEach((val) => {
      length += MissionStatus.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/Missions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce8a7c135707fc7974e11a568a86af9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # current mission
    MissionStatus current
    # list of old missions
    MissionStatus[] last
    
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
    const resolved = new Missions(null);
    if (msg.current !== undefined) {
      resolved.current = MissionStatus.Resolve(msg.current)
    }
    else {
      resolved.current = new MissionStatus()
    }

    if (msg.last !== undefined) {
      resolved.last = new Array(msg.last.length);
      for (let i = 0; i < resolved.last.length; ++i) {
        resolved.last[i] = MissionStatus.Resolve(msg.last[i]);
      }
    }
    else {
      resolved.last = []
    }

    return resolved;
    }
};

module.exports = Missions;
