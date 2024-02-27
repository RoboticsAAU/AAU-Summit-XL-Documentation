// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SwitchMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map = null;
      this.x = null;
      this.y = null;
      this.theta = null;
    }
    else {
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SwitchMap
    // Serialize message field [map]
    bufferOffset = _serializer.string(obj.map, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.y, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SwitchMap
    let len;
    let data = new SwitchMap(null);
    // Deserialize message field [map]
    data.map = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/SwitchMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2fabb463b583973fe1c29042f0add80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # sample values: floor_0, floor_1
    string map
    
    # position and orentation on the new floor
    std_msgs/Float32 x 
    std_msgs/Float32 y
    std_msgs/Float32 theta
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SwitchMap(null);
    if (msg.map !== undefined) {
      resolved.map = msg.map;
    }
    else {
      resolved.map = ''
    }

    if (msg.x !== undefined) {
      resolved.x = std_msgs.msg.Float32.Resolve(msg.x)
    }
    else {
      resolved.x = new std_msgs.msg.Float32()
    }

    if (msg.y !== undefined) {
      resolved.y = std_msgs.msg.Float32.Resolve(msg.y)
    }
    else {
      resolved.y = new std_msgs.msg.Float32()
    }

    if (msg.theta !== undefined) {
      resolved.theta = std_msgs.msg.Float32.Resolve(msg.theta)
    }
    else {
      resolved.theta = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = SwitchMap;
