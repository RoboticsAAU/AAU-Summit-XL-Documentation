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


//-----------------------------------------------------------

class GetEnvironmentsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetEnvironmentsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEnvironmentsRequest
    let len;
    let data = new GetEnvironmentsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_manager_msgs/GetEnvironmentsRequest';
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
    const resolved = new GetEnvironmentsRequest(null);
    return resolved;
    }
};

class GetEnvironmentsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.environments = null;
    }
    else {
      if (initObj.hasOwnProperty('environments')) {
        this.environments = initObj.environments
      }
      else {
        this.environments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetEnvironmentsResponse
    // Serialize message field [environments]
    bufferOffset = _arraySerializer.string(obj.environments, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEnvironmentsResponse
    let len;
    let data = new GetEnvironmentsResponse(null);
    // Deserialize message field [environments]
    data.environments = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.environments.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'poi_manager_msgs/GetEnvironmentsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a31ffa69fc51dd8da4b6db62e868d0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] environments
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetEnvironmentsResponse(null);
    if (msg.environments !== undefined) {
      resolved.environments = msg.environments;
    }
    else {
      resolved.environments = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetEnvironmentsRequest,
  Response: GetEnvironmentsResponse,
  md5sum() { return '8a31ffa69fc51dd8da4b6db62e868d0c'; },
  datatype() { return 'poi_manager_msgs/GetEnvironments'; }
};
