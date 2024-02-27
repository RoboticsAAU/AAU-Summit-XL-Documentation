// Auto-generated. Do not edit!

// (in-package robotnik_signal_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SignalStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_name = null;
      this.active_signals = null;
    }
    else {
      if (initObj.hasOwnProperty('node_name')) {
        this.node_name = initObj.node_name
      }
      else {
        this.node_name = '';
      }
      if (initObj.hasOwnProperty('active_signals')) {
        this.active_signals = initObj.active_signals
      }
      else {
        this.active_signals = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SignalStatus
    // Serialize message field [node_name]
    bufferOffset = _serializer.string(obj.node_name, buffer, bufferOffset);
    // Serialize message field [active_signals]
    bufferOffset = _arraySerializer.string(obj.active_signals, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignalStatus
    let len;
    let data = new SignalStatus(null);
    // Deserialize message field [node_name]
    data.node_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [active_signals]
    data.active_signals = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.node_name.length;
    object.active_signals.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_signal_msgs/SignalStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2253a41510a77ba43532efb9d5ddd8ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # signal_names
    string SIGNAL_CHARGING=charging
    string SIGNAL_SAFETY_STANDBY=safety_standby
    string SIGNAL_EMERGENCY_STOP=emergency_stop
    string SIGNAL_SAFETY_OBSTACLE_DETECTED=safety_obstacle_detected
    string SIGNAL_LOW_BATTERY=low_battery
    string SIGNAL_BASE_CONTROLLER_ERROR=base_controller_error
    string SIGNAL_ARM_CONTROLLER_ERROR=arm_controller_error
    string SIGNAL_SENSOR_ERROR=sensor_error
    string SIGNAL_ROBOT_IDLE=robot_idle
    string SIGNAL_ROBOT_MOVING=robot_moving
    string SIGNAL_RAISING_ELEVATOR=raising_elevator
    string SIGNAL_LOWERING_ELEVATOR=lowering_elevator
    
    string node_name
    string[] active_signals
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SignalStatus(null);
    if (msg.node_name !== undefined) {
      resolved.node_name = msg.node_name;
    }
    else {
      resolved.node_name = ''
    }

    if (msg.active_signals !== undefined) {
      resolved.active_signals = msg.active_signals;
    }
    else {
      resolved.active_signals = []
    }

    return resolved;
    }
};

// Constants for message
SignalStatus.Constants = {
  SIGNAL_CHARGING: 'charging',
  SIGNAL_SAFETY_STANDBY: 'safety_standby',
  SIGNAL_EMERGENCY_STOP: 'emergency_stop',
  SIGNAL_SAFETY_OBSTACLE_DETECTED: 'safety_obstacle_detected',
  SIGNAL_LOW_BATTERY: 'low_battery',
  SIGNAL_BASE_CONTROLLER_ERROR: 'base_controller_error',
  SIGNAL_ARM_CONTROLLER_ERROR: 'arm_controller_error',
  SIGNAL_SENSOR_ERROR: 'sensor_error',
  SIGNAL_ROBOT_IDLE: 'robot_idle',
  SIGNAL_ROBOT_MOVING: 'robot_moving',
  SIGNAL_RAISING_ELEVATOR: 'raising_elevator',
  SIGNAL_LOWERING_ELEVATOR: 'lowering_elevator',
}

module.exports = SignalStatus;
