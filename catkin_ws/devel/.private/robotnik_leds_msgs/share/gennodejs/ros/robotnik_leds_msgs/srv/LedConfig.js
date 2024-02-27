// Auto-generated. Do not edit!

// (in-package robotnik_leds_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LedConfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.password = null;
      this.state = null;
      this.mode = null;
      this.color_R = null;
      this.color_G = null;
      this.color_B = null;
      this.color_W = null;
      this.start_led = null;
      this.end_led = null;
      this.ms_on = null;
      this.ms_off = null;
      this.direction = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('password')) {
        this.password = initObj.password
      }
      else {
        this.password = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('color_R')) {
        this.color_R = initObj.color_R
      }
      else {
        this.color_R = 0;
      }
      if (initObj.hasOwnProperty('color_G')) {
        this.color_G = initObj.color_G
      }
      else {
        this.color_G = 0;
      }
      if (initObj.hasOwnProperty('color_B')) {
        this.color_B = initObj.color_B
      }
      else {
        this.color_B = 0;
      }
      if (initObj.hasOwnProperty('color_W')) {
        this.color_W = initObj.color_W
      }
      else {
        this.color_W = 0;
      }
      if (initObj.hasOwnProperty('start_led')) {
        this.start_led = initObj.start_led
      }
      else {
        this.start_led = 0;
      }
      if (initObj.hasOwnProperty('end_led')) {
        this.end_led = initObj.end_led
      }
      else {
        this.end_led = 0;
      }
      if (initObj.hasOwnProperty('ms_on')) {
        this.ms_on = initObj.ms_on
      }
      else {
        this.ms_on = 0;
      }
      if (initObj.hasOwnProperty('ms_off')) {
        this.ms_off = initObj.ms_off
      }
      else {
        this.ms_off = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = '';
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedConfigRequest
    // Serialize message field [password]
    bufferOffset = _serializer.string(obj.password, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [color_R]
    bufferOffset = _serializer.uint8(obj.color_R, buffer, bufferOffset);
    // Serialize message field [color_G]
    bufferOffset = _serializer.uint8(obj.color_G, buffer, bufferOffset);
    // Serialize message field [color_B]
    bufferOffset = _serializer.uint8(obj.color_B, buffer, bufferOffset);
    // Serialize message field [color_W]
    bufferOffset = _serializer.uint8(obj.color_W, buffer, bufferOffset);
    // Serialize message field [start_led]
    bufferOffset = _serializer.uint16(obj.start_led, buffer, bufferOffset);
    // Serialize message field [end_led]
    bufferOffset = _serializer.uint16(obj.end_led, buffer, bufferOffset);
    // Serialize message field [ms_on]
    bufferOffset = _serializer.uint16(obj.ms_on, buffer, bufferOffset);
    // Serialize message field [ms_off]
    bufferOffset = _serializer.uint16(obj.ms_off, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.string(obj.direction, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint16(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedConfigRequest
    let len;
    let data = new LedConfigRequest(null);
    // Deserialize message field [password]
    data.password = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [color_R]
    data.color_R = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [color_G]
    data.color_G = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [color_B]
    data.color_B = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [color_W]
    data.color_W = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start_led]
    data.start_led = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [end_led]
    data.end_led = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ms_on]
    data.ms_on = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ms_off]
    data.ms_off = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.password.length;
    length += object.state.length;
    length += object.mode.length;
    length += object.direction.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_leds_msgs/LedConfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ab3f7f591b547b85c672944179b13ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string password  # Same password used on robotnik robots
    string state     # BOOTING, READY, EXIT
    string mode	 # Properties to configure effects
    uint8  color_R   
    uint8  color_G
    uint8  color_B
    uint8  color_W 
    uint16 start_led
    uint16 end_led
    uint16 ms_on
    uint16 ms_off
    string direction
    uint16 speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedConfigRequest(null);
    if (msg.password !== undefined) {
      resolved.password = msg.password;
    }
    else {
      resolved.password = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.color_R !== undefined) {
      resolved.color_R = msg.color_R;
    }
    else {
      resolved.color_R = 0
    }

    if (msg.color_G !== undefined) {
      resolved.color_G = msg.color_G;
    }
    else {
      resolved.color_G = 0
    }

    if (msg.color_B !== undefined) {
      resolved.color_B = msg.color_B;
    }
    else {
      resolved.color_B = 0
    }

    if (msg.color_W !== undefined) {
      resolved.color_W = msg.color_W;
    }
    else {
      resolved.color_W = 0
    }

    if (msg.start_led !== undefined) {
      resolved.start_led = msg.start_led;
    }
    else {
      resolved.start_led = 0
    }

    if (msg.end_led !== undefined) {
      resolved.end_led = msg.end_led;
    }
    else {
      resolved.end_led = 0
    }

    if (msg.ms_on !== undefined) {
      resolved.ms_on = msg.ms_on;
    }
    else {
      resolved.ms_on = 0
    }

    if (msg.ms_off !== undefined) {
      resolved.ms_off = msg.ms_off;
    }
    else {
      resolved.ms_off = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = ''
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    return resolved;
    }
};

class LedConfigResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedConfigResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedConfigResponse
    let len;
    let data = new LedConfigResponse(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_leds_msgs/LedConfigResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f003d6bcc824cbd51361d66d8e4f76c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedConfigResponse(null);
    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: LedConfigRequest,
  Response: LedConfigResponse,
  md5sum() { return '9c4a062f09c33316e0077d371ce11963'; },
  datatype() { return 'robotnik_leds_msgs/LedConfig'; }
};
