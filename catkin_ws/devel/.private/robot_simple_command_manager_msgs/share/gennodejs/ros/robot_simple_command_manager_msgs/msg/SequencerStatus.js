// Auto-generated. Do not edit!

// (in-package robot_simple_command_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SequenceStatus = require('./SequenceStatus.js');

//-----------------------------------------------------------

class SequencerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loaded_sequences = null;
      this.current_sequence = null;
      this.last_error = null;
    }
    else {
      if (initObj.hasOwnProperty('loaded_sequences')) {
        this.loaded_sequences = initObj.loaded_sequences
      }
      else {
        this.loaded_sequences = [];
      }
      if (initObj.hasOwnProperty('current_sequence')) {
        this.current_sequence = initObj.current_sequence
      }
      else {
        this.current_sequence = new SequenceStatus();
      }
      if (initObj.hasOwnProperty('last_error')) {
        this.last_error = initObj.last_error
      }
      else {
        this.last_error = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SequencerStatus
    // Serialize message field [loaded_sequences]
    bufferOffset = _arraySerializer.string(obj.loaded_sequences, buffer, bufferOffset, null);
    // Serialize message field [current_sequence]
    bufferOffset = SequenceStatus.serialize(obj.current_sequence, buffer, bufferOffset);
    // Serialize message field [last_error]
    bufferOffset = _serializer.string(obj.last_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SequencerStatus
    let len;
    let data = new SequencerStatus(null);
    // Deserialize message field [loaded_sequences]
    data.loaded_sequences = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [current_sequence]
    data.current_sequence = SequenceStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [last_error]
    data.last_error = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.loaded_sequences.forEach((val) => {
      length += 4 + val.length;
    });
    length += SequenceStatus.getMessageSize(object.current_sequence);
    length += object.last_error.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_simple_command_manager_msgs/SequencerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d7f7e4a8b14f29c9977247d3fad3132';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] loaded_sequences 
    SequenceStatus current_sequence 
    string last_error
    ================================================================================
    MSG: robot_simple_command_manager_msgs/SequenceStatus
    string name 
    string[] commands 
    string current_command 
    int16 command_index 
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SequencerStatus(null);
    if (msg.loaded_sequences !== undefined) {
      resolved.loaded_sequences = msg.loaded_sequences;
    }
    else {
      resolved.loaded_sequences = []
    }

    if (msg.current_sequence !== undefined) {
      resolved.current_sequence = SequenceStatus.Resolve(msg.current_sequence)
    }
    else {
      resolved.current_sequence = new SequenceStatus()
    }

    if (msg.last_error !== undefined) {
      resolved.last_error = msg.last_error;
    }
    else {
      resolved.last_error = ''
    }

    return resolved;
    }
};

module.exports = SequencerStatus;
