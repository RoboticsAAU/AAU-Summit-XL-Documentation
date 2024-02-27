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

class GoToTag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tag_name = null;
    }
    else {
      if (initObj.hasOwnProperty('tag_name')) {
        this.tag_name = initObj.tag_name
      }
      else {
        this.tag_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToTag
    // Serialize message field [tag_name]
    bufferOffset = _serializer.string(obj.tag_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToTag
    let len;
    let data = new GoToTag(null);
    // Deserialize message field [tag_name]
    data.tag_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tag_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/GoToTag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64fe6f350e21c129c2de5c718c8c8ea0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string tag_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToTag(null);
    if (msg.tag_name !== undefined) {
      resolved.tag_name = msg.tag_name;
    }
    else {
      resolved.tag_name = ''
    }

    return resolved;
    }
};

module.exports = GoToTag;
