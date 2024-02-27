// Auto-generated. Do not edit!

// (in-package rosbag_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let robotnik_msgs = _finder('robotnik_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RosbagManagerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.recording = null;
      this.time_recording = null;
      this.path = null;
      this.bag_name = null;
      this.compression = null;
      this.regex = null;
      this.stored_size = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new robotnik_msgs.msg.State();
      }
      if (initObj.hasOwnProperty('recording')) {
        this.recording = initObj.recording
      }
      else {
        this.recording = false;
      }
      if (initObj.hasOwnProperty('time_recording')) {
        this.time_recording = initObj.time_recording
      }
      else {
        this.time_recording = 0;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = '';
      }
      if (initObj.hasOwnProperty('bag_name')) {
        this.bag_name = initObj.bag_name
      }
      else {
        this.bag_name = '';
      }
      if (initObj.hasOwnProperty('compression')) {
        this.compression = initObj.compression
      }
      else {
        this.compression = false;
      }
      if (initObj.hasOwnProperty('regex')) {
        this.regex = initObj.regex
      }
      else {
        this.regex = false;
      }
      if (initObj.hasOwnProperty('stored_size')) {
        this.stored_size = initObj.stored_size
      }
      else {
        this.stored_size = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RosbagManagerStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = robotnik_msgs.msg.State.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [recording]
    bufferOffset = _serializer.bool(obj.recording, buffer, bufferOffset);
    // Serialize message field [time_recording]
    bufferOffset = _serializer.int32(obj.time_recording, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = _serializer.string(obj.path, buffer, bufferOffset);
    // Serialize message field [bag_name]
    bufferOffset = _serializer.string(obj.bag_name, buffer, bufferOffset);
    // Serialize message field [compression]
    bufferOffset = _serializer.bool(obj.compression, buffer, bufferOffset);
    // Serialize message field [regex]
    bufferOffset = _serializer.bool(obj.regex, buffer, bufferOffset);
    // Serialize message field [stored_size]
    bufferOffset = _serializer.float64(obj.stored_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RosbagManagerStatus
    let len;
    let data = new RosbagManagerStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = robotnik_msgs.msg.State.deserialize(buffer, bufferOffset);
    // Deserialize message field [recording]
    data.recording = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time_recording]
    data.time_recording = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bag_name]
    data.bag_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [compression]
    data.compression = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [regex]
    data.regex = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stored_size]
    data.stored_size = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += robotnik_msgs.msg.State.getMessageSize(object.state);
    length += object.path.length;
    length += object.bag_name.length;
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosbag_manager_msgs/RosbagManagerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76b1de38e2d3f907b4177eba5f86930e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Component's state
    robotnik_msgs/State state
    
    bool recording
    int32 time_recording
    
    # path to save the rosbag
    string path
    # Bag name
    string bag_name
    # Is the bag being compressed
    bool compression
    # Topics are subscribed using regular expresions
    bool regex
    # Disk space used in the recording (in MB)
    float64 stored_size
    
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
    
    ================================================================================
    MSG: robotnik_msgs/State
    # constants
    int32 INIT_STATE = 100
    int32 STANDBY_STATE = 200
    int32 READY_STATE = 300
    int32 EMERGENCY_STATE = 400
    int32 FAILURE_STATE = 500
    int32 SHUTDOWN_STATE = 600
    int32 UNKOWN_STATE = 700
    
    # state of the component
    int32 state
    # desired control loop frecuency
    float32 desired_freq
    # real frecuency 
    float32 real_freq
    # Description of the state
    string state_description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RosbagManagerStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.state !== undefined) {
      resolved.state = robotnik_msgs.msg.State.Resolve(msg.state)
    }
    else {
      resolved.state = new robotnik_msgs.msg.State()
    }

    if (msg.recording !== undefined) {
      resolved.recording = msg.recording;
    }
    else {
      resolved.recording = false
    }

    if (msg.time_recording !== undefined) {
      resolved.time_recording = msg.time_recording;
    }
    else {
      resolved.time_recording = 0
    }

    if (msg.path !== undefined) {
      resolved.path = msg.path;
    }
    else {
      resolved.path = ''
    }

    if (msg.bag_name !== undefined) {
      resolved.bag_name = msg.bag_name;
    }
    else {
      resolved.bag_name = ''
    }

    if (msg.compression !== undefined) {
      resolved.compression = msg.compression;
    }
    else {
      resolved.compression = false
    }

    if (msg.regex !== undefined) {
      resolved.regex = msg.regex;
    }
    else {
      resolved.regex = false
    }

    if (msg.stored_size !== undefined) {
      resolved.stored_size = msg.stored_size;
    }
    else {
      resolved.stored_size = 0.0
    }

    return resolved;
    }
};

module.exports = RosbagManagerStatus;
