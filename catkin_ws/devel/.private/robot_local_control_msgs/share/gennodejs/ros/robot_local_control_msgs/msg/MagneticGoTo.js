// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MagneticGoTo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
      this.speed_factor = null;
      this.orientation_offset = null;
      this.position_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = '';
      }
      if (initObj.hasOwnProperty('speed_factor')) {
        this.speed_factor = initObj.speed_factor
      }
      else {
        this.speed_factor = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_offset')) {
        this.orientation_offset = initObj.orientation_offset
      }
      else {
        this.orientation_offset = 0.0;
      }
      if (initObj.hasOwnProperty('position_offset')) {
        this.position_offset = initObj.position_offset
      }
      else {
        this.position_offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MagneticGoTo
    // Serialize message field [node]
    bufferOffset = _serializer.string(obj.node, buffer, bufferOffset);
    // Serialize message field [speed_factor]
    bufferOffset = _serializer.float32(obj.speed_factor, buffer, bufferOffset);
    // Serialize message field [orientation_offset]
    bufferOffset = _serializer.float32(obj.orientation_offset, buffer, bufferOffset);
    // Serialize message field [position_offset]
    bufferOffset = _serializer.float32(obj.position_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MagneticGoTo
    let len;
    let data = new MagneticGoTo(null);
    // Deserialize message field [node]
    data.node = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed_factor]
    data.speed_factor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [orientation_offset]
    data.orientation_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_offset]
    data.position_offset = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.node.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/MagneticGoTo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5510a782447d53208d368d42bcba9b35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string node
    float32 speed_factor
    float32 orientation_offset
    float32 position_offset
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MagneticGoTo(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = ''
    }

    if (msg.speed_factor !== undefined) {
      resolved.speed_factor = msg.speed_factor;
    }
    else {
      resolved.speed_factor = 0.0
    }

    if (msg.orientation_offset !== undefined) {
      resolved.orientation_offset = msg.orientation_offset;
    }
    else {
      resolved.orientation_offset = 0.0
    }

    if (msg.position_offset !== undefined) {
      resolved.position_offset = msg.position_offset;
    }
    else {
      resolved.position_offset = 0.0
    }

    return resolved;
    }
};

module.exports = MagneticGoTo;
