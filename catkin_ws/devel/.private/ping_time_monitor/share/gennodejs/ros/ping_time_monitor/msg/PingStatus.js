// Auto-generated. Do not edit!

// (in-package ping_time_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.host = null;
      this.count = null;
      this.timeout = null;
      this.packet_loss = null;
      this.t_min = null;
      this.t_avg = null;
      this.t_max = null;
      this.t_mdev = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('host')) {
        this.host = initObj.host
      }
      else {
        this.host = '';
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0.0;
      }
      if (initObj.hasOwnProperty('packet_loss')) {
        this.packet_loss = initObj.packet_loss
      }
      else {
        this.packet_loss = 0.0;
      }
      if (initObj.hasOwnProperty('t_min')) {
        this.t_min = initObj.t_min
      }
      else {
        this.t_min = 0.0;
      }
      if (initObj.hasOwnProperty('t_avg')) {
        this.t_avg = initObj.t_avg
      }
      else {
        this.t_avg = 0.0;
      }
      if (initObj.hasOwnProperty('t_max')) {
        this.t_max = initObj.t_max
      }
      else {
        this.t_max = 0.0;
      }
      if (initObj.hasOwnProperty('t_mdev')) {
        this.t_mdev = initObj.t_mdev
      }
      else {
        this.t_mdev = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PingStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [host]
    bufferOffset = _serializer.string(obj.host, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.float32(obj.timeout, buffer, bufferOffset);
    // Serialize message field [packet_loss]
    bufferOffset = _serializer.float32(obj.packet_loss, buffer, bufferOffset);
    // Serialize message field [t_min]
    bufferOffset = _serializer.float32(obj.t_min, buffer, bufferOffset);
    // Serialize message field [t_avg]
    bufferOffset = _serializer.float32(obj.t_avg, buffer, bufferOffset);
    // Serialize message field [t_max]
    bufferOffset = _serializer.float32(obj.t_max, buffer, bufferOffset);
    // Serialize message field [t_mdev]
    bufferOffset = _serializer.float32(obj.t_mdev, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PingStatus
    let len;
    let data = new PingStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [host]
    data.host = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [packet_loss]
    data.packet_loss = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t_min]
    data.t_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t_avg]
    data.t_avg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t_max]
    data.t_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t_mdev]
    data.t_mdev = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.host.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ping_time_monitor/PingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95d991aad8be91a150ff80392e4e042c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float32 time
    string host
    int32 count
    float32 timeout
    # % of packets loss
    float32 packet_loss
    # min transmission time
    float32 t_min
    # average transmission time
    float32 t_avg
    # max transmission time
    float32 t_max
    float32 t_mdev
    
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
    const resolved = new PingStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.host !== undefined) {
      resolved.host = msg.host;
    }
    else {
      resolved.host = ''
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0.0
    }

    if (msg.packet_loss !== undefined) {
      resolved.packet_loss = msg.packet_loss;
    }
    else {
      resolved.packet_loss = 0.0
    }

    if (msg.t_min !== undefined) {
      resolved.t_min = msg.t_min;
    }
    else {
      resolved.t_min = 0.0
    }

    if (msg.t_avg !== undefined) {
      resolved.t_avg = msg.t_avg;
    }
    else {
      resolved.t_avg = 0.0
    }

    if (msg.t_max !== undefined) {
      resolved.t_max = msg.t_max;
    }
    else {
      resolved.t_max = 0.0
    }

    if (msg.t_mdev !== undefined) {
      resolved.t_mdev = msg.t_mdev;
    }
    else {
      resolved.t_mdev = 0.0
    }

    return resolved;
    }
};

module.exports = PingStatus;
