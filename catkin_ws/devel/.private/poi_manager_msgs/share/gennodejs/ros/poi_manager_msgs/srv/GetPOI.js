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

class GetPOIRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.environment = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('environment')) {
        this.environment = initObj.environment
      }
      else {
        this.environment = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPOIRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [environment]
    bufferOffset = _serializer.string(obj.environment, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPOIRequest
    let len;
    let data = new GetPOIRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [environment]
    data.environment = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.environment.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_manager_msgs/GetPOIRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18af20b519695e6d0b045fb50dc2d7b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string environment
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPOIRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.environment !== undefined) {
      resolved.environment = msg.environment;
    }
    else {
      resolved.environment = ''
    }

    return resolved;
    }
};

class GetPOIResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.p = null;
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
      if (initObj.hasOwnProperty('p')) {
        this.p = initObj.p
      }
      else {
        this.p = new LabeledPose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPOIResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [p]
    bufferOffset = LabeledPose.serialize(obj.p, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPOIResponse
    let len;
    let data = new GetPOIResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [p]
    data.p = LabeledPose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += LabeledPose.getMessageSize(object.p);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_manager_msgs/GetPOIResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02b7693c2cf785bfb906626d74643da9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    poi_manager_msgs/LabeledPose p
    
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
    const resolved = new GetPOIResponse(null);
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

    if (msg.p !== undefined) {
      resolved.p = LabeledPose.Resolve(msg.p)
    }
    else {
      resolved.p = new LabeledPose()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPOIRequest,
  Response: GetPOIResponse,
  md5sum() { return '59770c338bcbe71fd18764ce06bf4b5f'; },
  datatype() { return 'poi_manager_msgs/GetPOI'; }
};
