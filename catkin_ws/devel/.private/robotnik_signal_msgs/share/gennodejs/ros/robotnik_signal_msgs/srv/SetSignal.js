// Auto-generated. Do not edit!

// (in-package robotnik_signal_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let robotnik_msgs = _finder('robotnik_msgs');

//-----------------------------------------------------------

class SetSignalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signal_id = null;
      this.enable = null;
    }
    else {
      if (initObj.hasOwnProperty('signal_id')) {
        this.signal_id = initObj.signal_id
      }
      else {
        this.signal_id = '';
      }
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetSignalRequest
    // Serialize message field [signal_id]
    bufferOffset = _serializer.string(obj.signal_id, buffer, bufferOffset);
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSignalRequest
    let len;
    let data = new SetSignalRequest(null);
    // Deserialize message field [signal_id]
    data.signal_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.signal_id.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_signal_msgs/SetSignalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29e17e131111d8de206deae2c0f44ddd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string signal_id
    bool enable
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetSignalRequest(null);
    if (msg.signal_id !== undefined) {
      resolved.signal_id = msg.signal_id;
    }
    else {
      resolved.signal_id = ''
    }

    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    return resolved;
    }
};

class SetSignalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = new robotnik_msgs.msg.ReturnMessage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetSignalResponse
    // Serialize message field [ret]
    bufferOffset = robotnik_msgs.msg.ReturnMessage.serialize(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetSignalResponse
    let len;
    let data = new SetSignalResponse(null);
    // Deserialize message field [ret]
    data.ret = robotnik_msgs.msg.ReturnMessage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += robotnik_msgs.msg.ReturnMessage.getMessageSize(object.ret);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_signal_msgs/SetSignalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cc59476b1732f75af5b4512acb5adbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    robotnik_msgs/ReturnMessage ret
    
    ================================================================================
    MSG: robotnik_msgs/ReturnMessage
    bool success
    string message
    int16 code
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetSignalResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = robotnik_msgs.msg.ReturnMessage.Resolve(msg.ret)
    }
    else {
      resolved.ret = new robotnik_msgs.msg.ReturnMessage()
    }

    return resolved;
    }
};

module.exports = {
  Request: SetSignalRequest,
  Response: SetSignalResponse,
  md5sum() { return '61deb6ba176fcf9f9ac3a7b750eb3f84'; },
  datatype() { return 'robotnik_signal_msgs/SetSignal'; }
};
