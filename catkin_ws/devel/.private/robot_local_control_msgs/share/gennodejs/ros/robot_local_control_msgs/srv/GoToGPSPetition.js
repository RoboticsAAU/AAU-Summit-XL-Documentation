// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GoToGPS = require('../msg/GoToGPS.js');

//-----------------------------------------------------------

let procedures_msgs = _finder('procedures_msgs');

//-----------------------------------------------------------

class GoToGPSPetitionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.procedure = null;
    }
    else {
      if (initObj.hasOwnProperty('procedure')) {
        this.procedure = initObj.procedure
      }
      else {
        this.procedure = new GoToGPS();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToGPSPetitionRequest
    // Serialize message field [procedure]
    bufferOffset = GoToGPS.serialize(obj.procedure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToGPSPetitionRequest
    let len;
    let data = new GoToGPSPetitionRequest(null);
    // Deserialize message field [procedure]
    data.procedure = GoToGPS.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GoToGPS.getMessageSize(object.procedure);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_local_control_msgs/GoToGPSPetitionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '267336bf6760cacb34fa92cbcd5578c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    GoToGPS procedure
    
    ================================================================================
    MSG: robot_local_control_msgs/GoToGPS
    string frame_id
    
    PointGPS[] goals
    
    # Sets the max velocity through the path
    float32 max_velocity
    
    ================================================================================
    MSG: robot_local_control_msgs/PointGPS
    float64 latitude
    float64 longitude
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToGPSPetitionRequest(null);
    if (msg.procedure !== undefined) {
      resolved.procedure = GoToGPS.Resolve(msg.procedure)
    }
    else {
      resolved.procedure = new GoToGPS()
    }

    return resolved;
    }
};

class GoToGPSPetitionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new procedures_msgs.msg.ProcedureState();
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new procedures_msgs.msg.ProcedureResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToGPSPetitionResponse
    // Serialize message field [state]
    bufferOffset = procedures_msgs.msg.ProcedureState.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = procedures_msgs.msg.ProcedureResult.serialize(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToGPSPetitionResponse
    let len;
    let data = new GoToGPSPetitionResponse(null);
    // Deserialize message field [state]
    data.state = procedures_msgs.msg.ProcedureState.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = procedures_msgs.msg.ProcedureResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += procedures_msgs.msg.ProcedureState.getMessageSize(object.state);
    length += procedures_msgs.msg.ProcedureResult.getMessageSize(object.result);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_local_control_msgs/GoToGPSPetitionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '353bf68fa257f91b3fa7d7541df3d5c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    procedures_msgs/ProcedureState state
    procedures_msgs/ProcedureResult result
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToGPSPetitionResponse(null);
    if (msg.state !== undefined) {
      resolved.state = procedures_msgs.msg.ProcedureState.Resolve(msg.state)
    }
    else {
      resolved.state = new procedures_msgs.msg.ProcedureState()
    }

    if (msg.result !== undefined) {
      resolved.result = procedures_msgs.msg.ProcedureResult.Resolve(msg.result)
    }
    else {
      resolved.result = new procedures_msgs.msg.ProcedureResult()
    }

    return resolved;
    }
};

module.exports = {
  Request: GoToGPSPetitionRequest,
  Response: GoToGPSPetitionResponse,
  md5sum() { return '493763d0ee8512a18755f2d8534fe437'; },
  datatype() { return 'robot_local_control_msgs/GoToGPSPetition'; }
};
