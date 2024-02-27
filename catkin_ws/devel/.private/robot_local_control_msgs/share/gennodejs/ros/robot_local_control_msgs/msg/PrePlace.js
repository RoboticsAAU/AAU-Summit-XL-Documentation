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

class PrePlace {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maximum_distance = null;
      this.lane = null;
      this.turn_direction = null;
    }
    else {
      if (initObj.hasOwnProperty('maximum_distance')) {
        this.maximum_distance = initObj.maximum_distance
      }
      else {
        this.maximum_distance = 0.0;
      }
      if (initObj.hasOwnProperty('lane')) {
        this.lane = initObj.lane
      }
      else {
        this.lane = 0;
      }
      if (initObj.hasOwnProperty('turn_direction')) {
        this.turn_direction = initObj.turn_direction
      }
      else {
        this.turn_direction = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrePlace
    // Serialize message field [maximum_distance]
    bufferOffset = _serializer.float64(obj.maximum_distance, buffer, bufferOffset);
    // Serialize message field [lane]
    bufferOffset = _serializer.uint32(obj.lane, buffer, bufferOffset);
    // Serialize message field [turn_direction]
    bufferOffset = _serializer.string(obj.turn_direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrePlace
    let len;
    let data = new PrePlace(null);
    // Deserialize message field [maximum_distance]
    data.maximum_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lane]
    data.lane = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [turn_direction]
    data.turn_direction = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.turn_direction.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/PrePlace';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc102ad06e887e984d9cfa136a66cf43';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 maximum_distance
    uint32 lane
    string turn_direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrePlace(null);
    if (msg.maximum_distance !== undefined) {
      resolved.maximum_distance = msg.maximum_distance;
    }
    else {
      resolved.maximum_distance = 0.0
    }

    if (msg.lane !== undefined) {
      resolved.lane = msg.lane;
    }
    else {
      resolved.lane = 0
    }

    if (msg.turn_direction !== undefined) {
      resolved.turn_direction = msg.turn_direction;
    }
    else {
      resolved.turn_direction = ''
    }

    return resolved;
    }
};

module.exports = PrePlace;
