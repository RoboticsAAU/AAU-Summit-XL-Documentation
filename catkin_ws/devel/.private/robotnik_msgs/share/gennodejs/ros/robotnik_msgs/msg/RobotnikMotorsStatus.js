// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorStatus = require('./MotorStatus.js');

//-----------------------------------------------------------

class RobotnikMotorsStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.can_id = null;
      this.motor_status = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('can_id')) {
        this.can_id = initObj.can_id
      }
      else {
        this.can_id = [];
      }
      if (initObj.hasOwnProperty('motor_status')) {
        this.motor_status = initObj.motor_status
      }
      else {
        this.motor_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotnikMotorsStatus
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [can_id]
    bufferOffset = _arraySerializer.int32(obj.can_id, buffer, bufferOffset, null);
    // Serialize message field [motor_status]
    // Serialize the length for message field [motor_status]
    bufferOffset = _serializer.uint32(obj.motor_status.length, buffer, bufferOffset);
    obj.motor_status.forEach((val) => {
      bufferOffset = MotorStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotnikMotorsStatus
    let len;
    let data = new RobotnikMotorsStatus(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [can_id]
    data.can_id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor_status]
    // Deserialize array length for message field [motor_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.motor_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motor_status[i] = MotorStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.can_id.length;
    object.motor_status.forEach((val) => {
      length += MotorStatus.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/RobotnikMotorsStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40f5305ac2c33d213d54d21bf9ba7fc9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Name of each motor drive
    string[] name
    # CAN ID of each motor drive
    int32[] can_id
    # Status of the motor drive
    robotnik_msgs/MotorStatus[] motor_status
    
    
    ================================================================================
    MSG: robotnik_msgs/MotorStatus
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
    const resolved = new RobotnikMotorsStatus(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.can_id !== undefined) {
      resolved.can_id = msg.can_id;
    }
    else {
      resolved.can_id = []
    }

    if (msg.motor_status !== undefined) {
      resolved.motor_status = new Array(msg.motor_status.length);
      for (let i = 0; i < resolved.motor_status.length; ++i) {
        resolved.motor_status[i] = MotorStatus.Resolve(msg.motor_status[i]);
      }
    }
    else {
      resolved.motor_status = []
    }

    return resolved;
    }
};

module.exports = RobotnikMotorsStatus;
