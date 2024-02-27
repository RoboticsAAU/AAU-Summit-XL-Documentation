// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Dock = require('../msg/Dock.js');

//-----------------------------------------------------------

let procedures_msgs = _finder('procedures_msgs');

//-----------------------------------------------------------

class DockPetitionRequest {
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
        this.procedure = new Dock();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DockPetitionRequest
    // Serialize message field [procedure]
    bufferOffset = Dock.serialize(obj.procedure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockPetitionRequest
    let len;
    let data = new DockPetitionRequest(null);
    // Deserialize message field [procedure]
    data.procedure = Dock.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Dock.getMessageSize(object.procedure);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_local_control_msgs/DockPetitionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '147b62b1428b1817326bd7e5aa2b90b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Dock procedure 
    
    ================================================================================
    MSG: robot_local_control_msgs/Dock
    string dock_frame
    string robot_dock_frame
    geometry_msgs/Pose2D dock_offset
    geometry_msgs/Twist maximum_velocity
    
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DockPetitionRequest(null);
    if (msg.procedure !== undefined) {
      resolved.procedure = Dock.Resolve(msg.procedure)
    }
    else {
      resolved.procedure = new Dock()
    }

    return resolved;
    }
};

class DockPetitionResponse {
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
    // Serializes a message object of type DockPetitionResponse
    // Serialize message field [state]
    bufferOffset = procedures_msgs.msg.ProcedureState.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = procedures_msgs.msg.ProcedureResult.serialize(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockPetitionResponse
    let len;
    let data = new DockPetitionResponse(null);
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
    return 'robot_local_control_msgs/DockPetitionResponse';
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
    const resolved = new DockPetitionResponse(null);
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
  Request: DockPetitionRequest,
  Response: DockPetitionResponse,
  md5sum() { return '527d1f8c4574e5ce72e1bde802a40e8c'; },
  datatype() { return 'robot_local_control_msgs/DockPetition'; }
};
