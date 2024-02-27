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

class Pick {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pick_frame_id = null;
    }
    else {
      if (initObj.hasOwnProperty('pick_frame_id')) {
        this.pick_frame_id = initObj.pick_frame_id
      }
      else {
        this.pick_frame_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pick
    // Serialize message field [pick_frame_id]
    bufferOffset = _serializer.string(obj.pick_frame_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pick
    let len;
    let data = new Pick(null);
    // Deserialize message field [pick_frame_id]
    data.pick_frame_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pick_frame_id.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/Pick';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39794562465f5c9f200e6d805267c9b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pick_frame_id # object, represented by its frame, that is to be picked
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pick(null);
    if (msg.pick_frame_id !== undefined) {
      resolved.pick_frame_id = msg.pick_frame_id;
    }
    else {
      resolved.pick_frame_id = ''
    }

    return resolved;
    }
};

module.exports = Pick;
