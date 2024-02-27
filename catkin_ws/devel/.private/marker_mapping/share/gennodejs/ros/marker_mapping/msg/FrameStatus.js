// Auto-generated. Do not edit!

// (in-package marker_mapping.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class FrameStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.current_distance = null;
      this.max_distance = null;
      this.pose_from_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('current_distance')) {
        this.current_distance = initObj.current_distance
      }
      else {
        this.current_distance = 0.0;
      }
      if (initObj.hasOwnProperty('max_distance')) {
        this.max_distance = initObj.max_distance
      }
      else {
        this.max_distance = 0.0;
      }
      if (initObj.hasOwnProperty('pose_from_frame')) {
        this.pose_from_frame = initObj.pose_from_frame
      }
      else {
        this.pose_from_frame = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FrameStatus
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [current_distance]
    bufferOffset = _serializer.float32(obj.current_distance, buffer, bufferOffset);
    // Serialize message field [max_distance]
    bufferOffset = _serializer.float32(obj.max_distance, buffer, bufferOffset);
    // Serialize message field [pose_from_frame]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_from_frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrameStatus
    let len;
    let data = new FrameStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_distance]
    data.current_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_distance]
    data.max_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pose_from_frame]
    data.pose_from_frame = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marker_mapping/FrameStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f74922ad8511c5477ef362a7ef9b79a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new FrameStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.current_distance !== undefined) {
      resolved.current_distance = msg.current_distance;
    }
    else {
      resolved.current_distance = 0.0
    }

    if (msg.max_distance !== undefined) {
      resolved.max_distance = msg.max_distance;
    }
    else {
      resolved.max_distance = 0.0
    }

    if (msg.pose_from_frame !== undefined) {
      resolved.pose_from_frame = geometry_msgs.msg.Pose.Resolve(msg.pose_from_frame)
    }
    else {
      resolved.pose_from_frame = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = FrameStatus;
