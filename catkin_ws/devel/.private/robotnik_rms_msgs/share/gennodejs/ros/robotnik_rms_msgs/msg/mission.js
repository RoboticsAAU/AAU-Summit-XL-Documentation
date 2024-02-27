// Auto-generated. Do not edit!

// (in-package robotnik_rms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let action = require('./action.js');

//-----------------------------------------------------------

class mission {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name_mission = null;
      this.id_mission = null;
      this.description = null;
      this.actions = null;
    }
    else {
      if (initObj.hasOwnProperty('name_mission')) {
        this.name_mission = initObj.name_mission
      }
      else {
        this.name_mission = '';
      }
      if (initObj.hasOwnProperty('id_mission')) {
        this.id_mission = initObj.id_mission
      }
      else {
        this.id_mission = 0;
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mission
    // Serialize message field [name_mission]
    bufferOffset = _serializer.string(obj.name_mission, buffer, bufferOffset);
    // Serialize message field [id_mission]
    bufferOffset = _serializer.int32(obj.id_mission, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [actions]
    // Serialize the length for message field [actions]
    bufferOffset = _serializer.uint32(obj.actions.length, buffer, bufferOffset);
    obj.actions.forEach((val) => {
      bufferOffset = action.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mission
    let len;
    let data = new mission(null);
    // Deserialize message field [name_mission]
    data.name_mission = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id_mission]
    data.id_mission = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [actions]
    // Deserialize array length for message field [actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actions[i] = action.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name_mission.length;
    length += object.description.length;
    object.actions.forEach((val) => {
      length += action.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_rms_msgs/mission';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78cd14bad56ac69e0a4b2c9b5cf0cce1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name_mission
    int32 id_mission
    string description
    robotnik_rms_msgs/action[] actions
    
    ================================================================================
    MSG: robotnik_rms_msgs/action
    
    int32 type_action
    string id_action
    string name_action
    string description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mission(null);
    if (msg.name_mission !== undefined) {
      resolved.name_mission = msg.name_mission;
    }
    else {
      resolved.name_mission = ''
    }

    if (msg.id_mission !== undefined) {
      resolved.id_mission = msg.id_mission;
    }
    else {
      resolved.id_mission = 0
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.actions !== undefined) {
      resolved.actions = new Array(msg.actions.length);
      for (let i = 0; i < resolved.actions.length; ++i) {
        resolved.actions[i] = action.Resolve(msg.actions[i]);
      }
    }
    else {
      resolved.actions = []
    }

    return resolved;
    }
};

module.exports = mission;
