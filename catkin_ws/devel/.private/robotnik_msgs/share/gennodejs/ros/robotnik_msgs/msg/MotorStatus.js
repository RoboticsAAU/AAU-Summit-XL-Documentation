// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.status = null;
      this.communicationstatus = null;
      this.statusword = null;
      this.driveflags = null;
      this.activestatusword = null;
      this.activedriveflags = null;
      this.digitaloutputs = null;
      this.digitalinputs = null;
      this.averagecurrent = null;
      this.analoginputs = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('communicationstatus')) {
        this.communicationstatus = initObj.communicationstatus
      }
      else {
        this.communicationstatus = '';
      }
      if (initObj.hasOwnProperty('statusword')) {
        this.statusword = initObj.statusword
      }
      else {
        this.statusword = '';
      }
      if (initObj.hasOwnProperty('driveflags')) {
        this.driveflags = initObj.driveflags
      }
      else {
        this.driveflags = '';
      }
      if (initObj.hasOwnProperty('activestatusword')) {
        this.activestatusword = initObj.activestatusword
      }
      else {
        this.activestatusword = [];
      }
      if (initObj.hasOwnProperty('activedriveflags')) {
        this.activedriveflags = initObj.activedriveflags
      }
      else {
        this.activedriveflags = [];
      }
      if (initObj.hasOwnProperty('digitaloutputs')) {
        this.digitaloutputs = initObj.digitaloutputs
      }
      else {
        this.digitaloutputs = 0;
      }
      if (initObj.hasOwnProperty('digitalinputs')) {
        this.digitalinputs = initObj.digitalinputs
      }
      else {
        this.digitalinputs = 0;
      }
      if (initObj.hasOwnProperty('averagecurrent')) {
        this.averagecurrent = initObj.averagecurrent
      }
      else {
        this.averagecurrent = 0.0;
      }
      if (initObj.hasOwnProperty('analoginputs')) {
        this.analoginputs = initObj.analoginputs
      }
      else {
        this.analoginputs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorStatus
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [communicationstatus]
    bufferOffset = _serializer.string(obj.communicationstatus, buffer, bufferOffset);
    // Serialize message field [statusword]
    bufferOffset = _serializer.string(obj.statusword, buffer, bufferOffset);
    // Serialize message field [driveflags]
    bufferOffset = _serializer.string(obj.driveflags, buffer, bufferOffset);
    // Serialize message field [activestatusword]
    bufferOffset = _arraySerializer.string(obj.activestatusword, buffer, bufferOffset, null);
    // Serialize message field [activedriveflags]
    bufferOffset = _arraySerializer.string(obj.activedriveflags, buffer, bufferOffset, null);
    // Serialize message field [digitaloutputs]
    bufferOffset = _serializer.int32(obj.digitaloutputs, buffer, bufferOffset);
    // Serialize message field [digitalinputs]
    bufferOffset = _serializer.int32(obj.digitalinputs, buffer, bufferOffset);
    // Serialize message field [averagecurrent]
    bufferOffset = _serializer.float32(obj.averagecurrent, buffer, bufferOffset);
    // Serialize message field [analoginputs]
    bufferOffset = _arraySerializer.float32(obj.analoginputs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorStatus
    let len;
    let data = new MotorStatus(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [communicationstatus]
    data.communicationstatus = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [statusword]
    data.statusword = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [driveflags]
    data.driveflags = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [activestatusword]
    data.activestatusword = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [activedriveflags]
    data.activedriveflags = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [digitaloutputs]
    data.digitaloutputs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [digitalinputs]
    data.digitalinputs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [averagecurrent]
    data.averagecurrent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [analoginputs]
    data.analoginputs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    length += object.status.length;
    length += object.communicationstatus.length;
    length += object.statusword.length;
    length += object.driveflags.length;
    object.activestatusword.forEach((val) => {
      length += 4 + val.length;
    });
    object.activedriveflags.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.analoginputs.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/MotorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bee7a4674a1d69703bedee2437db3d94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string state
    string status
    string communicationstatus
    string statusword
    string driveflags
    string[] activestatusword
    string[] activedriveflags
    int32 digitaloutputs
    int32 digitalinputs
    float32 averagecurrent
    float32[] analoginputs
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorStatus(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.communicationstatus !== undefined) {
      resolved.communicationstatus = msg.communicationstatus;
    }
    else {
      resolved.communicationstatus = ''
    }

    if (msg.statusword !== undefined) {
      resolved.statusword = msg.statusword;
    }
    else {
      resolved.statusword = ''
    }

    if (msg.driveflags !== undefined) {
      resolved.driveflags = msg.driveflags;
    }
    else {
      resolved.driveflags = ''
    }

    if (msg.activestatusword !== undefined) {
      resolved.activestatusword = msg.activestatusword;
    }
    else {
      resolved.activestatusword = []
    }

    if (msg.activedriveflags !== undefined) {
      resolved.activedriveflags = msg.activedriveflags;
    }
    else {
      resolved.activedriveflags = []
    }

    if (msg.digitaloutputs !== undefined) {
      resolved.digitaloutputs = msg.digitaloutputs;
    }
    else {
      resolved.digitaloutputs = 0
    }

    if (msg.digitalinputs !== undefined) {
      resolved.digitalinputs = msg.digitalinputs;
    }
    else {
      resolved.digitalinputs = 0
    }

    if (msg.averagecurrent !== undefined) {
      resolved.averagecurrent = msg.averagecurrent;
    }
    else {
      resolved.averagecurrent = 0.0
    }

    if (msg.analoginputs !== undefined) {
      resolved.analoginputs = msg.analoginputs;
    }
    else {
      resolved.analoginputs = []
    }

    return resolved;
    }
};

module.exports = MotorStatus;
