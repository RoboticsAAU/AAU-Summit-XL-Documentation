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

class ReadPOIsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadPOIsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadPOIsRequest
    let len;
    let data = new ReadPOIsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_manager_msgs/ReadPOIsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReadPOIsRequest(null);
    return resolved;
    }
};

class ReadPOIsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.pose_list = null;
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
      if (initObj.hasOwnProperty('pose_list')) {
        this.pose_list = initObj.pose_list
      }
      else {
        this.pose_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadPOIsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [pose_list]
    // Serialize the length for message field [pose_list]
    bufferOffset = _serializer.uint32(obj.pose_list.length, buffer, bufferOffset);
    obj.pose_list.forEach((val) => {
      bufferOffset = LabeledPose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadPOIsResponse
    let len;
    let data = new ReadPOIsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose_list]
    // Deserialize array length for message field [pose_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_list[i] = LabeledPose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    object.pose_list.forEach((val) => {
      length += LabeledPose.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_manager_msgs/ReadPOIsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f27a9f2acb83bf336ee2be2f5c17fa51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    poi_manager_msgs/LabeledPose[] pose_list
    
    
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
    const resolved = new ReadPOIsResponse(null);
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

    if (msg.pose_list !== undefined) {
      resolved.pose_list = new Array(msg.pose_list.length);
      for (let i = 0; i < resolved.pose_list.length; ++i) {
        resolved.pose_list[i] = LabeledPose.Resolve(msg.pose_list[i]);
      }
    }
    else {
      resolved.pose_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ReadPOIsRequest,
  Response: ReadPOIsResponse,
  md5sum() { return 'f27a9f2acb83bf336ee2be2f5c17fa51'; },
  datatype() { return 'poi_manager_msgs/ReadPOIs'; }
};
