// Auto-generated. Do not edit!

// (in-package poi_manager_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let LabeledPose = require('../msg/LabeledPose.js');

//-----------------------------------------------------------

class GetPOIsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.environment = null;
    }
    else {
      if (initObj.hasOwnProperty('environment')) {
        this.environment = initObj.environment
      }
      else {
        this.environment = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPOIsRequest
    // Serialize message field [environment]
    bufferOffset = _serializer.string(obj.environment, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPOIsRequest
    let len;
    let data = new GetPOIsRequest(null);
    // Deserialize message field [environment]
    data.environment = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.environment.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_manager_msgs/GetPOIsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70802a554778fff9dda739539d9b31b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string environment
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPOIsRequest(null);
    if (msg.environment !== undefined) {
      resolved.environment = msg.environment;
    }
    else {
      resolved.environment = ''
    }

    return resolved;
    }
};

class GetPOIsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.p_list = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('p_list')) {
        this.p_list = initObj.p_list
      }
      else {
        this.p_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPOIsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [p_list]
    // Serialize the length for message field [p_list]
    bufferOffset = _serializer.uint32(obj.p_list.length, buffer, bufferOffset);
    obj.p_list.forEach((val) => {
      bufferOffset = LabeledPose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPOIsResponse
    let len;
    let data = new GetPOIsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [p_list]
    // Deserialize array length for message field [p_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.p_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.p_list[i] = LabeledPose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    object.p_list.forEach((val) => {
      length += LabeledPose.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_manager_msgs/GetPOIsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d28babae2da69009f04ad121b9669da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    poi_manager_msgs/LabeledPose[] p_list
    
    ================================================================================
    MSG: poi_manager_msgs/LabeledPose
    string name
    string environment
    string params
    string frame_id
    geometry_msgs/Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPOIsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.p_list !== undefined) {
      resolved.p_list = new Array(msg.p_list.length);
      for (let i = 0; i < resolved.p_list.length; ++i) {
        resolved.p_list[i] = LabeledPose.Resolve(msg.p_list[i]);
      }
    }
    else {
      resolved.p_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPOIsRequest,
  Response: GetPOIsResponse,
  md5sum() { return '3a7e9332c1f7391c48b76fbd997c4c8e'; },
  datatype() { return 'poi_manager_msgs/GetPOIs'; }
};
