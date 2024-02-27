// Auto-generated. Do not edit!

// (in-package imu_manager.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ImuManagerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.calibration_status = null;
      this.next_check_countdown = null;
      this.calibration_duration = null;
      this.imu_temperature = null;
      this.calibrated_imu_temperature = null;
      this.robot_moving = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('calibration_status')) {
        this.calibration_status = initObj.calibration_status
      }
      else {
        this.calibration_status = '';
      }
      if (initObj.hasOwnProperty('next_check_countdown')) {
        this.next_check_countdown = initObj.next_check_countdown
      }
      else {
        this.next_check_countdown = 0;
      }
      if (initObj.hasOwnProperty('calibration_duration')) {
        this.calibration_duration = initObj.calibration_duration
      }
      else {
        this.calibration_duration = 0;
      }
      if (initObj.hasOwnProperty('imu_temperature')) {
        this.imu_temperature = initObj.imu_temperature
      }
      else {
        this.imu_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('calibrated_imu_temperature')) {
        this.calibrated_imu_temperature = initObj.calibrated_imu_temperature
      }
      else {
        this.calibrated_imu_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('robot_moving')) {
        this.robot_moving = initObj.robot_moving
      }
      else {
        this.robot_moving = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImuManagerStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [calibration_status]
    bufferOffset = _serializer.string(obj.calibration_status, buffer, bufferOffset);
    // Serialize message field [next_check_countdown]
    bufferOffset = _serializer.int32(obj.next_check_countdown, buffer, bufferOffset);
    // Serialize message field [calibration_duration]
    bufferOffset = _serializer.int32(obj.calibration_duration, buffer, bufferOffset);
    // Serialize message field [imu_temperature]
    bufferOffset = _serializer.float32(obj.imu_temperature, buffer, bufferOffset);
    // Serialize message field [calibrated_imu_temperature]
    bufferOffset = _serializer.float32(obj.calibrated_imu_temperature, buffer, bufferOffset);
    // Serialize message field [robot_moving]
    bufferOffset = _serializer.bool(obj.robot_moving, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImuManagerStatus
    let len;
    let data = new ImuManagerStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [calibration_status]
    data.calibration_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [next_check_countdown]
    data.next_check_countdown = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [calibration_duration]
    data.calibration_duration = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [imu_temperature]
    data.imu_temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [calibrated_imu_temperature]
    data.calibrated_imu_temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_moving]
    data.robot_moving = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.calibration_status.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imu_manager/ImuManagerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f781e87f06b49385516d30f4b92b9f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string calibration_status
    # in seconds
    int32 next_check_countdown
    # in seconds
    int32 calibration_duration
    # current temperature
    float32 imu_temperature
    # Temperature after last calibration
    float32 calibrated_imu_temperature
    # is robot moving?
    bool robot_moving
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImuManagerStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.calibration_status !== undefined) {
      resolved.calibration_status = msg.calibration_status;
    }
    else {
      resolved.calibration_status = ''
    }

    if (msg.next_check_countdown !== undefined) {
      resolved.next_check_countdown = msg.next_check_countdown;
    }
    else {
      resolved.next_check_countdown = 0
    }

    if (msg.calibration_duration !== undefined) {
      resolved.calibration_duration = msg.calibration_duration;
    }
    else {
      resolved.calibration_duration = 0
    }

    if (msg.imu_temperature !== undefined) {
      resolved.imu_temperature = msg.imu_temperature;
    }
    else {
      resolved.imu_temperature = 0.0
    }

    if (msg.calibrated_imu_temperature !== undefined) {
      resolved.calibrated_imu_temperature = msg.calibrated_imu_temperature;
    }
    else {
      resolved.calibrated_imu_temperature = 0.0
    }

    if (msg.robot_moving !== undefined) {
      resolved.robot_moving = msg.robot_moving;
    }
    else {
      resolved.robot_moving = false
    }

    return resolved;
    }
};

module.exports = ImuManagerStatus;
