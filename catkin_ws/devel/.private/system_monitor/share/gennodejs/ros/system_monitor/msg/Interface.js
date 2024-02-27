// Auto-generated. Do not edit!

// (in-package system_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Interface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.state = null;
      this.input = null;
      this.output = null;
      this.mtu = null;
      this.received = null;
      this.transmitted = null;
      this.collisions = null;
      this.rxError = null;
      this.txError = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = 0.0;
      }
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = 0.0;
      }
      if (initObj.hasOwnProperty('mtu')) {
        this.mtu = initObj.mtu
      }
      else {
        this.mtu = 0;
      }
      if (initObj.hasOwnProperty('received')) {
        this.received = initObj.received
      }
      else {
        this.received = 0.0;
      }
      if (initObj.hasOwnProperty('transmitted')) {
        this.transmitted = initObj.transmitted
      }
      else {
        this.transmitted = 0.0;
      }
      if (initObj.hasOwnProperty('collisions')) {
        this.collisions = initObj.collisions
      }
      else {
        this.collisions = 0;
      }
      if (initObj.hasOwnProperty('rxError')) {
        this.rxError = initObj.rxError
      }
      else {
        this.rxError = 0;
      }
      if (initObj.hasOwnProperty('txError')) {
        this.txError = initObj.txError
      }
      else {
        this.txError = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Interface
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [input]
    bufferOffset = _serializer.float32(obj.input, buffer, bufferOffset);
    // Serialize message field [output]
    bufferOffset = _serializer.float32(obj.output, buffer, bufferOffset);
    // Serialize message field [mtu]
    bufferOffset = _serializer.int32(obj.mtu, buffer, bufferOffset);
    // Serialize message field [received]
    bufferOffset = _serializer.float32(obj.received, buffer, bufferOffset);
    // Serialize message field [transmitted]
    bufferOffset = _serializer.float32(obj.transmitted, buffer, bufferOffset);
    // Serialize message field [collisions]
    bufferOffset = _serializer.int32(obj.collisions, buffer, bufferOffset);
    // Serialize message field [rxError]
    bufferOffset = _serializer.int32(obj.rxError, buffer, bufferOffset);
    // Serialize message field [txError]
    bufferOffset = _serializer.int32(obj.txError, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Interface
    let len;
    let data = new Interface(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [input]
    data.input = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [output]
    data.output = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mtu]
    data.mtu = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [received]
    data.received = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [transmitted]
    data.transmitted = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [collisions]
    data.collisions = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rxError]
    data.rxError = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [txError]
    data.txError = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.state.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/Interface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b547a89cc3995f4c9d69adede1755a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string state
    #input/output speed in MB/s
    float32 input
    float32 output
    int32 mtu
    #Data received/transmitted in MB
    float32 received
    float32 transmitted
    int32 collisions
    int32 rxError
    int32 txError
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Interface(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.input !== undefined) {
      resolved.input = msg.input;
    }
    else {
      resolved.input = 0.0
    }

    if (msg.output !== undefined) {
      resolved.output = msg.output;
    }
    else {
      resolved.output = 0.0
    }

    if (msg.mtu !== undefined) {
      resolved.mtu = msg.mtu;
    }
    else {
      resolved.mtu = 0
    }

    if (msg.received !== undefined) {
      resolved.received = msg.received;
    }
    else {
      resolved.received = 0.0
    }

    if (msg.transmitted !== undefined) {
      resolved.transmitted = msg.transmitted;
    }
    else {
      resolved.transmitted = 0.0
    }

    if (msg.collisions !== undefined) {
      resolved.collisions = msg.collisions;
    }
    else {
      resolved.collisions = 0
    }

    if (msg.rxError !== undefined) {
      resolved.rxError = msg.rxError;
    }
    else {
      resolved.rxError = 0
    }

    if (msg.txError !== undefined) {
      resolved.txError = msg.txError;
    }
    else {
      resolved.txError = 0
    }

    return resolved;
    }
};

module.exports = Interface;
