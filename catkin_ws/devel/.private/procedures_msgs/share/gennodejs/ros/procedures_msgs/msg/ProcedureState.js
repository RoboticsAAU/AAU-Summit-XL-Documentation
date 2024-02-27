// Auto-generated. Do not edit!

// (in-package procedures_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ProcedureHeader = require('./ProcedureHeader.js');

//-----------------------------------------------------------

class ProcedureState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.current_state = null;
      this.last_event = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new ProcedureHeader();
      }
      if (initObj.hasOwnProperty('current_state')) {
        this.current_state = initObj.current_state
      }
      else {
        this.current_state = '';
      }
      if (initObj.hasOwnProperty('last_event')) {
        this.last_event = initObj.last_event
      }
      else {
        this.last_event = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcedureState
    // Serialize message field [header]
    bufferOffset = ProcedureHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [current_state]
    bufferOffset = _serializer.string(obj.current_state, buffer, bufferOffset);
    // Serialize message field [last_event]
    bufferOffset = _serializer.string(obj.last_event, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcedureState
    let len;
    let data = new ProcedureState(null);
    // Deserialize message field [header]
    data.header = ProcedureHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_state]
    data.current_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [last_event]
    data.last_event = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ProcedureHeader.getMessageSize(object.header);
    length += object.current_state.length;
    length += object.last_event.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'procedures_msgs/ProcedureState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6979cad7e83ce5406a65ccecf3686f85';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # STATE allowed values. Defined as STRING because it is easier to identify them in a raw message
    string QUEUED=queued
    string RUNNING=running
    string PAUSED=paused
    string FINISHED=finished
    
    # EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message
    # events triggered from outside
    string ADDED=added
    string START=start
    string STOP=stop
    string CANCEL=cancel
    string PAUSE=pause
    string RESUME=resume
    # self triggered events
    string FINISH=finish
    string ABORT=abort
    
    # additionally, both state and event can be UNKNOW
    string UNKNOWN=unknown
    
    ProcedureHeader header
    string current_state
    string last_event
    
    ================================================================================
    MSG: procedures_msgs/ProcedureHeader
    # id: identifies the procedure in the robot context.
    # user should do not set this, but the proceduremanager
    # TODO: may be replaced with uuid_msgs/UniqueID.
    int32 id
    # priority: priority of the current procedure. used in case procedure preemption is allowed
    int32 priority
    # stamp: timestamp when procedure was started.
    # may be used by the procedure manager.
    time stamp
    # name: human readable identificator.
    # set by the user, can be empty
    # not used by the procedure manager to identify the procedure
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcedureState(null);
    if (msg.header !== undefined) {
      resolved.header = ProcedureHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new ProcedureHeader()
    }

    if (msg.current_state !== undefined) {
      resolved.current_state = msg.current_state;
    }
    else {
      resolved.current_state = ''
    }

    if (msg.last_event !== undefined) {
      resolved.last_event = msg.last_event;
    }
    else {
      resolved.last_event = ''
    }

    return resolved;
    }
};

// Constants for message
ProcedureState.Constants = {
  QUEUED: 'queued',
  RUNNING: 'running',
  PAUSED: 'paused',
  FINISHED: 'finished',
  ADDED: 'added',
  START: 'start',
  STOP: 'stop',
  CANCEL: 'cancel',
  PAUSE: 'pause',
  RESUME: 'resume',
  FINISH: 'finish',
  ABORT: 'abort',
  UNKNOWN: 'unknown',
}

module.exports = ProcedureState;
