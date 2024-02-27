// Auto-generated. Do not edit!

// (in-package robotnik_rms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class action {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type_action = null;
      this.id_action = null;
      this.name_action = null;
      this.description = null;
    }
    else {
      if (initObj.hasOwnProperty('type_action')) {
        this.type_action = initObj.type_action
      }
      else {
        this.type_action = 0;
      }
      if (initObj.hasOwnProperty('id_action')) {
        this.id_action = initObj.id_action
      }
      else {
        this.id_action = '';
      }
      if (initObj.hasOwnProperty('name_action')) {
        this.name_action = initObj.name_action
      }
      else {
        this.name_action = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type action
    // Serialize message field [type_action]
    bufferOffset = _serializer.int32(obj.type_action, buffer, bufferOffset);
    // Serialize message field [id_action]
    bufferOffset = _serializer.string(obj.id_action, buffer, bufferOffset);
    // Serialize message field [name_action]
    bufferOffset = _serializer.string(obj.name_action, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type action
    let len;
    let data = new action(null);
    // Deserialize message field [type_action]
    data.type_action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [id_action]
    data.id_action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name_action]
    data.name_action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id_action.length;
    length += object.name_action.length;
    length += object.description.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_rms_msgs/action';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f34f90c37eb15fa05a08b918922af021';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    const resolved = new action(null);
    if (msg.type_action !== undefined) {
      resolved.type_action = msg.type_action;
    }
    else {
      resolved.type_action = 0
    }

    if (msg.id_action !== undefined) {
      resolved.id_action = msg.id_action;
    }
    else {
      resolved.id_action = ''
    }

    if (msg.name_action !== undefined) {
      resolved.name_action = msg.name_action;
    }
    else {
      resolved.name_action = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    return resolved;
    }
};

module.exports = action;
