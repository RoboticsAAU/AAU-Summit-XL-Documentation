// Auto-generated. Do not edit!

// (in-package robotnik_signal_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SignalStatus = require('./SignalStatus.js');

//-----------------------------------------------------------

class SignalStatusArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signals_status = null;
    }
    else {
      if (initObj.hasOwnProperty('signals_status')) {
        this.signals_status = initObj.signals_status
      }
      else {
        this.signals_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SignalStatusArray
    // Serialize message field [signals_status]
    // Serialize the length for message field [signals_status]
    bufferOffset = _serializer.uint32(obj.signals_status.length, buffer, bufferOffset);
    obj.signals_status.forEach((val) => {
      bufferOffset = SignalStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignalStatusArray
    let len;
    let data = new SignalStatusArray(null);
    // Deserialize message field [signals_status]
    // Deserialize array length for message field [signals_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.signals_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.signals_status[i] = SignalStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.signals_status.forEach((val) => {
      length += SignalStatus.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_signal_msgs/SignalStatusArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81ce5948f89ed4887bfc312100eeff57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    SignalStatus[] signals_status
    ================================================================================
    MSG: robotnik_signal_msgs/SignalStatus
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
    const resolved = new SignalStatusArray(null);
    if (msg.signals_status !== undefined) {
      resolved.signals_status = new Array(msg.signals_status.length);
      for (let i = 0; i < resolved.signals_status.length; ++i) {
        resolved.signals_status[i] = SignalStatus.Resolve(msg.signals_status[i]);
      }
    }
    else {
      resolved.signals_status = []
    }

    return resolved;
    }
};

module.exports = SignalStatusArray;
