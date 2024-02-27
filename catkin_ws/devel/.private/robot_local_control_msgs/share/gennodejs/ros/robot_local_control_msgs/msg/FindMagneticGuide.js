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

class FindMagneticGuide {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.turn_direction = null;
      this.in_distance = null;
      this.lane = null;
    }
    else {
      if (initObj.hasOwnProperty('turn_direction')) {
        this.turn_direction = initObj.turn_direction
      }
      else {
        this.turn_direction = '';
      }
      if (initObj.hasOwnProperty('in_distance')) {
        this.in_distance = initObj.in_distance
      }
      else {
        this.in_distance = 0.0;
      }
      if (initObj.hasOwnProperty('lane')) {
        this.lane = initObj.lane
      }
      else {
        this.lane = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FindMagneticGuide
    // Serialize message field [turn_direction]
    bufferOffset = _serializer.string(obj.turn_direction, buffer, bufferOffset);
    // Serialize message field [in_distance]
    bufferOffset = _serializer.float32(obj.in_distance, buffer, bufferOffset);
    // Serialize message field [lane]
    bufferOffset = _serializer.uint32(obj.lane, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FindMagneticGuide
    let len;
    let data = new FindMagneticGuide(null);
    // Deserialize message field [turn_direction]
    data.turn_direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [in_distance]
    data.in_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane]
    data.lane = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.turn_direction.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/FindMagneticGuide';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be301344d82db2581c38425519475c66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #maximum distance to search the guide
    string turn_direction
    float32 in_distance
    uint32 lane
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FindMagneticGuide(null);
    if (msg.turn_direction !== undefined) {
      resolved.turn_direction = msg.turn_direction;
    }
    else {
      resolved.turn_direction = ''
    }

    if (msg.in_distance !== undefined) {
      resolved.in_distance = msg.in_distance;
    }
    else {
      resolved.in_distance = 0.0
    }

    if (msg.lane !== undefined) {
      resolved.lane = msg.lane;
    }
    else {
      resolved.lane = 0
    }

    return resolved;
    }
};

module.exports = FindMagneticGuide;
