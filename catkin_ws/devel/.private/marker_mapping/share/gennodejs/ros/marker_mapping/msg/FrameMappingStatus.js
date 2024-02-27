// Auto-generated. Do not edit!

// (in-package marker_mapping.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FrameStatus = require('./FrameStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FrameMappingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ids_recorded = null;
      this.ids_detected = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ids_recorded')) {
        this.ids_recorded = initObj.ids_recorded
      }
      else {
        this.ids_recorded = [];
      }
      if (initObj.hasOwnProperty('ids_detected')) {
        this.ids_detected = initObj.ids_detected
      }
      else {
        this.ids_detected = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FrameMappingStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ids_recorded]
    bufferOffset = _arraySerializer.string(obj.ids_recorded, buffer, bufferOffset, null);
    // Serialize message field [ids_detected]
    // Serialize the length for message field [ids_detected]
    bufferOffset = _serializer.uint32(obj.ids_detected.length, buffer, bufferOffset);
    obj.ids_detected.forEach((val) => {
      bufferOffset = FrameStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrameMappingStatus
    let len;
    let data = new FrameMappingStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ids_recorded]
    data.ids_recorded = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [ids_detected]
    // Deserialize array length for message field [ids_detected]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ids_detected = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ids_detected[i] = FrameStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.ids_recorded.forEach((val) => {
      length += 4 + val.length;
    });
    object.ids_detected.forEach((val) => {
      length += FrameStatus.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marker_mapping/FrameMappingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfff8ce0f7290207c6b777f75e70e963';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    Header header
    string[] ids_recorded
    FrameStatus[] ids_detected
    
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
    MSG: marker_mapping/FrameStatus
    string id
    # current distance to the frame
    float32 current_distance
    # max allowed distance to init the pose
    float32 max_distance
    # pose if we use the frame to initialize the localization
    geometry_msgs/Pose pose_from_frame
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrameMappingStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ids_recorded !== undefined) {
      resolved.ids_recorded = msg.ids_recorded;
    }
    else {
      resolved.ids_recorded = []
    }

    if (msg.ids_detected !== undefined) {
      resolved.ids_detected = new Array(msg.ids_detected.length);
      for (let i = 0; i < resolved.ids_detected.length; ++i) {
        resolved.ids_detected[i] = FrameStatus.Resolve(msg.ids_detected[i]);
      }
    }
    else {
      resolved.ids_detected = []
    }

    return resolved;
    }
};

module.exports = FrameMappingStatus;
