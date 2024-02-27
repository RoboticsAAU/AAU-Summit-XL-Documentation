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

class PostPlace {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.turn_direction = null;
    }
    else {
      if (initObj.hasOwnProperty('turn_direction')) {
        this.turn_direction = initObj.turn_direction
      }
      else {
        this.turn_direction = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PostPlace
    // Serialize message field [turn_direction]
    bufferOffset = _serializer.string(obj.turn_direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PostPlace
    let len;
    let data = new PostPlace(null);
    // Deserialize message field [turn_direction]
    data.turn_direction = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.turn_direction.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/PostPlace';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b601e40d4e05ee7ec9ac6a6e0a8142c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string turn_direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PostPlace(null);
    if (msg.turn_direction !== undefined) {
      resolved.turn_direction = msg.turn_direction;
    }
    else {
      resolved.turn_direction = ''
    }

    return resolved;
    }
};

module.exports = PostPlace;
