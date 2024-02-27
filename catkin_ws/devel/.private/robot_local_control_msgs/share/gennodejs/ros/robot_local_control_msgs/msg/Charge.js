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

class Charge {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.charge_station = null;
    }
    else {
      if (initObj.hasOwnProperty('charge_station')) {
        this.charge_station = initObj.charge_station
      }
      else {
        this.charge_station = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Charge
    // Serialize message field [charge_station]
    bufferOffset = _serializer.string(obj.charge_station, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Charge
    let len;
    let data = new Charge(null);
    // Deserialize message field [charge_station]
    data.charge_station = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.charge_station.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/Charge';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '010959f65202c06bff3a36da5001d5c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string charge_station
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Charge(null);
    if (msg.charge_station !== undefined) {
      resolved.charge_station = msg.charge_station;
    }
    else {
      resolved.charge_station = ''
    }

    return resolved;
    }
};

module.exports = Charge;
