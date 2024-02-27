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

class MagneticPlace {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cart_position = null;
    }
    else {
      if (initObj.hasOwnProperty('cart_position')) {
        this.cart_position = initObj.cart_position
      }
      else {
        this.cart_position = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MagneticPlace
    // Serialize message field [cart_position]
    bufferOffset = _serializer.uint32(obj.cart_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MagneticPlace
    let len;
    let data = new MagneticPlace(null);
    // Deserialize message field [cart_position]
    data.cart_position = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/MagneticPlace';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4da27e813bf08746398944b7800a7f75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 cart_position
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MagneticPlace(null);
    if (msg.cart_position !== undefined) {
      resolved.cart_position = msg.cart_position;
    }
    else {
      resolved.cart_position = 0
    }

    return resolved;
    }
};

module.exports = MagneticPlace;
