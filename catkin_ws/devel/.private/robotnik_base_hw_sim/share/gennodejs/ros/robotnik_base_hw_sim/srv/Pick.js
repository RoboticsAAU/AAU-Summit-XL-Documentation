// Auto-generated. Do not edit!

// (in-package robotnik_base_hw_sim.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PickRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_model = null;
      this.object_link = null;
      this.robot_model = null;
      this.robot_link = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('object_model')) {
        this.object_model = initObj.object_model
      }
      else {
        this.object_model = '';
      }
      if (initObj.hasOwnProperty('object_link')) {
        this.object_link = initObj.object_link
      }
      else {
        this.object_link = '';
      }
      if (initObj.hasOwnProperty('robot_model')) {
        this.robot_model = initObj.robot_model
      }
      else {
        this.robot_model = '';
      }
      if (initObj.hasOwnProperty('robot_link')) {
        this.robot_link = initObj.robot_link
      }
      else {
        this.robot_link = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickRequest
    // Serialize message field [object_model]
    bufferOffset = _serializer.string(obj.object_model, buffer, bufferOffset);
    // Serialize message field [object_link]
    bufferOffset = _serializer.string(obj.object_link, buffer, bufferOffset);
    // Serialize message field [robot_model]
    bufferOffset = _serializer.string(obj.robot_model, buffer, bufferOffset);
    // Serialize message field [robot_link]
    bufferOffset = _serializer.string(obj.robot_link, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickRequest
    let len;
    let data = new PickRequest(null);
    // Deserialize message field [object_model]
    data.object_model = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [object_link]
    data.object_link = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_model]
    data.robot_model = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_link]
    data.robot_link = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object_model.length;
    length += object.object_link.length;
    length += object.robot_model.length;
    length += object.robot_link.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_base_hw_sim/PickRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ce29537d89f0f0f0ab7afe25c8e28e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # attach object link into robot link
    # Links and models are refered to Gazebo
    string object_model
    string object_link
    string robot_model
    string robot_link
    # pose related to the robot link
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
    const resolved = new PickRequest(null);
    if (msg.object_model !== undefined) {
      resolved.object_model = msg.object_model;
    }
    else {
      resolved.object_model = ''
    }

    if (msg.object_link !== undefined) {
      resolved.object_link = msg.object_link;
    }
    else {
      resolved.object_link = ''
    }

    if (msg.robot_model !== undefined) {
      resolved.robot_model = msg.robot_model;
    }
    else {
      resolved.robot_model = ''
    }

    if (msg.robot_link !== undefined) {
      resolved.robot_link = msg.robot_link;
    }
    else {
      resolved.robot_link = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class PickResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickResponse
    let len;
    let data = new PickResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_base_hw_sim/PickResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e835b04f93d0b30fd8cb71e0967a16db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string msg
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PickResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: PickRequest,
  Response: PickResponse,
  md5sum() { return '3cf02f67e5f48e886033088859c7e58a'; },
  datatype() { return 'robotnik_base_hw_sim/Pick'; }
};
