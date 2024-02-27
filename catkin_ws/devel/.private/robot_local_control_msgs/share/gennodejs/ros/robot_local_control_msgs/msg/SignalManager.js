// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robotnik_signal_msgs = _finder('robotnik_signal_msgs');

//-----------------------------------------------------------

class SignalManager {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.signal_state = null;
      this.signals_status = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('signal_state')) {
        this.signal_state = initObj.signal_state
      }
      else {
        this.signal_state = '';
      }
      if (initObj.hasOwnProperty('signals_status')) {
        this.signals_status = initObj.signals_status
      }
      else {
        this.signals_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SignalManager
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [signal_state]
    bufferOffset = _serializer.string(obj.signal_state, buffer, bufferOffset);
    // Serialize message field [signals_status]
    // Serialize the length for message field [signals_status]
    bufferOffset = _serializer.uint32(obj.signals_status.length, buffer, bufferOffset);
    obj.signals_status.forEach((val) => {
      bufferOffset = robotnik_signal_msgs.msg.SignalStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignalManager
    let len;
    let data = new SignalManager(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [signal_state]
    data.signal_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [signals_status]
    // Deserialize array length for message field [signals_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.signals_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.signals_status[i] = robotnik_signal_msgs.msg.SignalStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    length += object.signal_state.length;
    object.signals_status.forEach((val) => {
      length += robotnik_signal_msgs.msg.SignalStatus.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/SignalManager';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d72476a1dfab8768093789a2dcd679e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # INIT, READY, EMERGENCY, FAILURE
    string state
    # The state of the global signal
    string signal_state
    # The state of each signal_manager node
    robotnik_signal_msgs/SignalStatus[] signals_status
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
    const resolved = new SignalManager(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.signal_state !== undefined) {
      resolved.signal_state = msg.signal_state;
    }
    else {
      resolved.signal_state = ''
    }

    if (msg.signals_status !== undefined) {
      resolved.signals_status = new Array(msg.signals_status.length);
      for (let i = 0; i < resolved.signals_status.length; ++i) {
        resolved.signals_status[i] = robotnik_signal_msgs.msg.SignalStatus.Resolve(msg.signals_status[i]);
      }
    }
    else {
      resolved.signals_status = []
    }

    return resolved;
    }
};

module.exports = SignalManager;
