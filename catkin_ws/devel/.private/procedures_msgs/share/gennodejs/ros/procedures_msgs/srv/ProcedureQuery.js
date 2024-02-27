// Auto-generated. Do not edit!

// (in-package procedures_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ProcedureHeader = require('../msg/ProcedureHeader.js');

//-----------------------------------------------------------

let ProcedureState = require('../msg/ProcedureState.js');
let ProcedureResult = require('../msg/ProcedureResult.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ProcedureQueryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new ProcedureHeader();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcedureQueryRequest
    // Serialize message field [header]
    bufferOffset = ProcedureHeader.serialize(obj.header, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcedureQueryRequest
    let len;
    let data = new ProcedureQueryRequest(null);
    // Deserialize message field [header]
    data.header = ProcedureHeader.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ProcedureHeader.getMessageSize(object.header);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'procedures_msgs/ProcedureQueryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8381e7649b6a363106c049611ab9ee2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ProcedureHeader header
    
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
    const resolved = new ProcedureQueryRequest(null);
    if (msg.header !== undefined) {
      resolved.header = ProcedureHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new ProcedureHeader()
    }

    return resolved;
    }
};

class ProcedureQueryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.result = null;
      this.last_message = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new ProcedureState();
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new ProcedureResult();
      }
      if (initObj.hasOwnProperty('last_message')) {
        this.last_message = initObj.last_message
      }
      else {
        this.last_message = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcedureQueryResponse
    // Serialize message field [state]
    bufferOffset = ProcedureState.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = ProcedureResult.serialize(obj.result, buffer, bufferOffset);
    // Serialize message field [last_message]
    bufferOffset = std_msgs.msg.String.serialize(obj.last_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcedureQueryResponse
    let len;
    let data = new ProcedureQueryResponse(null);
    // Deserialize message field [state]
    data.state = ProcedureState.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = ProcedureResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [last_message]
    data.last_message = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ProcedureState.getMessageSize(object.state);
    length += ProcedureResult.getMessageSize(object.result);
    length += std_msgs.msg.String.getMessageSize(object.last_message);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'procedures_msgs/ProcedureQueryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0b5cb62dae6c246f302469f03b777e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ProcedureState state
    ProcedureResult result
    std_msgs/String last_message
    
    
    ================================================================================
    MSG: procedures_msgs/ProcedureState
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
    
    ================================================================================
    MSG: procedures_msgs/ProcedureResult
    # RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message
    string OK=ok
    string ERROR=error
    
    string result
    string message
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcedureQueryResponse(null);
    if (msg.state !== undefined) {
      resolved.state = ProcedureState.Resolve(msg.state)
    }
    else {
      resolved.state = new ProcedureState()
    }

    if (msg.result !== undefined) {
      resolved.result = ProcedureResult.Resolve(msg.result)
    }
    else {
      resolved.result = new ProcedureResult()
    }

    if (msg.last_message !== undefined) {
      resolved.last_message = std_msgs.msg.String.Resolve(msg.last_message)
    }
    else {
      resolved.last_message = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: ProcedureQueryRequest,
  Response: ProcedureQueryResponse,
  md5sum() { return 'ed5e053c790e6fde7d83c20c942744f4'; },
  datatype() { return 'procedures_msgs/ProcedureQuery'; }
};
