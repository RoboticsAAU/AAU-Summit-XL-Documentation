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

class EnterLift {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.floor = null;
    }
    else {
      if (initObj.hasOwnProperty('floor')) {
        this.floor = initObj.floor
      }
      else {
        this.floor = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnterLift
    // Serialize message field [floor]
    bufferOffset = _serializer.string(obj.floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnterLift
    let len;
    let data = new EnterLift(null);
    // Deserialize message field [floor]
    data.floor = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.floor.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/EnterLift';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '080ca89808f79b4dda698c3815d2f4aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # valid values: floor_0, floor_1
    string floor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnterLift(null);
    if (msg.floor !== undefined) {
      resolved.floor = msg.floor;
    }
    else {
      resolved.floor = ''
    }

    return resolved;
    }
};

module.exports = EnterLift;
