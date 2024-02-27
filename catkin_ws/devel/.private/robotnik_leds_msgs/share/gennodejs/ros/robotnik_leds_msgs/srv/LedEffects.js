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

class LedEffectsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.mode = null;
      this.channel = null;
      this.type = null;
      this.color_R = null;
      this.color_G = null;
      this.color_B = null;
      this.color_W = null;
      this.start_led = null;
      this.end_led = null;
      this.ms_on = null;
      this.ms_off = null;
      this.fade_in = null;
      this.fade_out = null;
      this.background_R = null;
      this.background_G = null;
      this.background_B = null;
      this.background_W = null;
      this.direction = null;
      this.speed = null;
      this.sleep = null;
      this.led_increment = null;
      this.layer = null;
      this.enabled = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
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
      if (initObj.hasOwnProperty('fade_in')) {
        this.fade_in = initObj.fade_in
      }
      else {
        this.fade_in = 0;
      }
      if (initObj.hasOwnProperty('fade_out')) {
        this.fade_out = initObj.fade_out
      }
      else {
        this.fade_out = 0;
      }
      if (initObj.hasOwnProperty('background_R')) {
        this.background_R = initObj.background_R
      }
      else {
        this.background_R = 0;
      }
      if (initObj.hasOwnProperty('background_G')) {
        this.background_G = initObj.background_G
      }
      else {
        this.background_G = 0;
      }
      if (initObj.hasOwnProperty('background_B')) {
        this.background_B = initObj.background_B
      }
      else {
        this.background_B = 0;
      }
      if (initObj.hasOwnProperty('background_W')) {
        this.background_W = initObj.background_W
      }
      else {
        this.background_W = 0;
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
      if (initObj.hasOwnProperty('sleep')) {
        this.sleep = initObj.sleep
      }
      else {
        this.sleep = 0;
      }
      if (initObj.hasOwnProperty('led_increment')) {
        this.led_increment = initObj.led_increment
      }
      else {
        this.led_increment = 0;
      }
      if (initObj.hasOwnProperty('layer')) {
        this.layer = initObj.layer
      }
      else {
        this.layer = 0;
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedEffectsRequest
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [channel]
    bufferOffset = _serializer.uint8(obj.channel, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
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
    // Serialize message field [fade_in]
    bufferOffset = _serializer.uint16(obj.fade_in, buffer, bufferOffset);
    // Serialize message field [fade_out]
    bufferOffset = _serializer.uint16(obj.fade_out, buffer, bufferOffset);
    // Serialize message field [background_R]
    bufferOffset = _serializer.uint8(obj.background_R, buffer, bufferOffset);
    // Serialize message field [background_G]
    bufferOffset = _serializer.uint8(obj.background_G, buffer, bufferOffset);
    // Serialize message field [background_B]
    bufferOffset = _serializer.uint8(obj.background_B, buffer, bufferOffset);
    // Serialize message field [background_W]
    bufferOffset = _serializer.uint8(obj.background_W, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.string(obj.direction, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint16(obj.speed, buffer, bufferOffset);
    // Serialize message field [sleep]
    bufferOffset = _serializer.uint16(obj.sleep, buffer, bufferOffset);
    // Serialize message field [led_increment]
    bufferOffset = _serializer.uint16(obj.led_increment, buffer, bufferOffset);
    // Serialize message field [layer]
    bufferOffset = _serializer.uint8(obj.layer, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedEffectsRequest
    let len;
    let data = new LedEffectsRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [channel]
    data.channel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
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
    // Deserialize message field [fade_in]
    data.fade_in = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [fade_out]
    data.fade_out = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [background_R]
    data.background_R = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [background_G]
    data.background_G = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [background_B]
    data.background_B = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [background_W]
    data.background_W = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sleep]
    data.sleep = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [led_increment]
    data.led_increment = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [layer]
    data.layer = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.mode.length;
    length += object.type.length;
    length += object.direction.length;
    return length + 45;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_leds_msgs/LedEffectsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4971f1ee1e211ef4482773fdcd58d02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  id
    string  mode
    uint8   channel
    string  type
    uint8   color_R
    uint8   color_G
    uint8   color_B
    uint8   color_W 
    uint16  start_led
    uint16  end_led
    uint16  ms_on
    uint16  ms_off
    uint16  fade_in
    uint16  fade_out
    uint8   background_R
    uint8   background_G
    uint8   background_B
    uint8   background_W
    string  direction
    uint16  speed
    uint16  sleep
    uint16  led_increment
    uint8   layer
    bool    enabled
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedEffectsRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
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

    if (msg.fade_in !== undefined) {
      resolved.fade_in = msg.fade_in;
    }
    else {
      resolved.fade_in = 0
    }

    if (msg.fade_out !== undefined) {
      resolved.fade_out = msg.fade_out;
    }
    else {
      resolved.fade_out = 0
    }

    if (msg.background_R !== undefined) {
      resolved.background_R = msg.background_R;
    }
    else {
      resolved.background_R = 0
    }

    if (msg.background_G !== undefined) {
      resolved.background_G = msg.background_G;
    }
    else {
      resolved.background_G = 0
    }

    if (msg.background_B !== undefined) {
      resolved.background_B = msg.background_B;
    }
    else {
      resolved.background_B = 0
    }

    if (msg.background_W !== undefined) {
      resolved.background_W = msg.background_W;
    }
    else {
      resolved.background_W = 0
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

    if (msg.sleep !== undefined) {
      resolved.sleep = msg.sleep;
    }
    else {
      resolved.sleep = 0
    }

    if (msg.led_increment !== undefined) {
      resolved.led_increment = msg.led_increment;
    }
    else {
      resolved.led_increment = 0
    }

    if (msg.layer !== undefined) {
      resolved.layer = msg.layer;
    }
    else {
      resolved.layer = 0
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    return resolved;
    }
};

class LedEffectsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedEffectsResponse
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedEffectsResponse
    let len;
    let data = new LedEffectsResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_leds_msgs/LedEffectsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '800f34bc468def1d86e2d42bea5648c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8  state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedEffectsResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: LedEffectsRequest,
  Response: LedEffectsResponse,
  md5sum() { return 'ef2dbe370ba8b09e224378629b1a3ae5'; },
  datatype() { return 'robotnik_leds_msgs/LedEffects'; }
};
