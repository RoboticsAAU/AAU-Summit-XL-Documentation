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

class NavigationStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationStatus
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationStatus
    let len;
    let data = new NavigationStatus(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    length += object.state.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/NavigationStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5c9b34f80bcdaf33edc1d8103d13065';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # type of navigation package/algorithm currently used
    string NAVIGATION_TYPE_NONE=none
    # move_base
    string NAVIGATION_TYPE_1=1
    # purepursuit
    string NAVIGATION_TYPE_2=2
    # Dock
    string NAVIGATION_TYPE_3=3 
    
    # state of the navigation node running
    string NAVIGATION_STATE_INIT=init
    string NAVIGATION_STATE_STANDBY=standby
    string NAVIGATION_STATE_READY=ready
    string NAVIGATION_STATE_EMERGENCY=emergency
    string NAVIGATION_STATE_FAILURE=failure
    
    # Navigation algorithm being used
    string type
    
    # INIT, READY, EMERGENCY, FAILURE
    string state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigationStatus(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    return resolved;
    }
};

// Constants for message
NavigationStatus.Constants = {
  NAVIGATION_TYPE_NONE: 'none',
  NAVIGATION_TYPE_1: '1',
  NAVIGATION_TYPE_2: '2',
  NAVIGATION_TYPE_3: '3',
  NAVIGATION_STATE_INIT: 'init',
  NAVIGATION_STATE_STANDBY: 'standby',
  NAVIGATION_STATE_READY: 'ready',
  NAVIGATION_STATE_EMERGENCY: 'emergency',
  NAVIGATION_STATE_FAILURE: 'failure',
}

module.exports = NavigationStatus;
