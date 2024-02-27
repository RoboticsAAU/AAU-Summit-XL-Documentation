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

class MagneticPick {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane = null;
      this.cart_position = null;
      this.turn_direction = null;
      this.allow_markers = null;
      this.cart_id = null;
    }
    else {
      if (initObj.hasOwnProperty('lane')) {
        this.lane = initObj.lane
      }
      else {
        this.lane = 0;
      }
      if (initObj.hasOwnProperty('cart_position')) {
        this.cart_position = initObj.cart_position
      }
      else {
        this.cart_position = 0;
      }
      if (initObj.hasOwnProperty('turn_direction')) {
        this.turn_direction = initObj.turn_direction
      }
      else {
        this.turn_direction = '';
      }
      if (initObj.hasOwnProperty('allow_markers')) {
        this.allow_markers = initObj.allow_markers
      }
      else {
        this.allow_markers = false;
      }
      if (initObj.hasOwnProperty('cart_id')) {
        this.cart_id = initObj.cart_id
      }
      else {
        this.cart_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MagneticPick
    // Serialize message field [lane]
    bufferOffset = _serializer.uint32(obj.lane, buffer, bufferOffset);
    // Serialize message field [cart_position]
    bufferOffset = _serializer.uint32(obj.cart_position, buffer, bufferOffset);
    // Serialize message field [turn_direction]
    bufferOffset = _serializer.string(obj.turn_direction, buffer, bufferOffset);
    // Serialize message field [allow_markers]
    bufferOffset = _serializer.bool(obj.allow_markers, buffer, bufferOffset);
    // Serialize message field [cart_id]
    bufferOffset = _serializer.string(obj.cart_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MagneticPick
    let len;
    let data = new MagneticPick(null);
    // Deserialize message field [lane]
    data.lane = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cart_position]
    data.cart_position = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [turn_direction]
    data.turn_direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [allow_markers]
    data.allow_markers = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cart_id]
    data.cart_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.turn_direction.length;
    length += object.cart_id.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/MagneticPick';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbbbfba3c2d148076e68cb0bb8f8902d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 lane
    uint32 cart_position
    string turn_direction
    bool allow_markers
    string cart_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MagneticPick(null);
    if (msg.lane !== undefined) {
      resolved.lane = msg.lane;
    }
    else {
      resolved.lane = 0
    }

    if (msg.cart_position !== undefined) {
      resolved.cart_position = msg.cart_position;
    }
    else {
      resolved.cart_position = 0
    }

    if (msg.turn_direction !== undefined) {
      resolved.turn_direction = msg.turn_direction;
    }
    else {
      resolved.turn_direction = ''
    }

    if (msg.allow_markers !== undefined) {
      resolved.allow_markers = msg.allow_markers;
    }
    else {
      resolved.allow_markers = false
    }

    if (msg.cart_id !== undefined) {
      resolved.cart_id = msg.cart_id;
    }
    else {
      resolved.cart_id = ''
    }

    return resolved;
    }
};

module.exports = MagneticPick;
