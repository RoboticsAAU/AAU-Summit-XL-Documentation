// Auto-generated. Do not edit!

// (in-package robotnik_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RobotnikMoveBaseFlexGoalAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_target_pose = null;
      this.controller = null;
      this.planner = null;
      this.recovery_behaviors = null;
      this.goal_tolerance = null;
      this.navigation_type = null;
      this.goal_target_type = null;
      this.max_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_target_pose')) {
        this.goal_target_pose = initObj.goal_target_pose
      }
      else {
        this.goal_target_pose = [];
      }
      if (initObj.hasOwnProperty('controller')) {
        this.controller = initObj.controller
      }
      else {
        this.controller = [];
      }
      if (initObj.hasOwnProperty('planner')) {
        this.planner = initObj.planner
      }
      else {
        this.planner = [];
      }
      if (initObj.hasOwnProperty('recovery_behaviors')) {
        this.recovery_behaviors = initObj.recovery_behaviors
      }
      else {
        this.recovery_behaviors = [];
      }
      if (initObj.hasOwnProperty('goal_tolerance')) {
        this.goal_tolerance = initObj.goal_tolerance
      }
      else {
        this.goal_tolerance = [];
      }
      if (initObj.hasOwnProperty('navigation_type')) {
        this.navigation_type = initObj.navigation_type
      }
      else {
        this.navigation_type = '';
      }
      if (initObj.hasOwnProperty('goal_target_type')) {
        this.goal_target_type = initObj.goal_target_type
      }
      else {
        this.goal_target_type = '';
      }
      if (initObj.hasOwnProperty('max_vel')) {
        this.max_vel = initObj.max_vel
      }
      else {
        this.max_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotnikMoveBaseFlexGoalAction
    // Serialize message field [goal_target_pose]
    // Serialize the length for message field [goal_target_pose]
    bufferOffset = _serializer.uint32(obj.goal_target_pose.length, buffer, bufferOffset);
    obj.goal_target_pose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [controller]
    bufferOffset = _arraySerializer.string(obj.controller, buffer, bufferOffset, null);
    // Serialize message field [planner]
    bufferOffset = _arraySerializer.string(obj.planner, buffer, bufferOffset, null);
    // Serialize message field [recovery_behaviors]
    bufferOffset = _arraySerializer.string(obj.recovery_behaviors, buffer, bufferOffset, null);
    // Serialize message field [goal_tolerance]
    // Serialize the length for message field [goal_tolerance]
    bufferOffset = _serializer.uint32(obj.goal_tolerance.length, buffer, bufferOffset);
    obj.goal_tolerance.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [navigation_type]
    bufferOffset = _serializer.string(obj.navigation_type, buffer, bufferOffset);
    // Serialize message field [goal_target_type]
    bufferOffset = _serializer.string(obj.goal_target_type, buffer, bufferOffset);
    // Serialize message field [max_vel]
    bufferOffset = _serializer.float32(obj.max_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotnikMoveBaseFlexGoalAction
    let len;
    let data = new RobotnikMoveBaseFlexGoalAction(null);
    // Deserialize message field [goal_target_pose]
    // Deserialize array length for message field [goal_target_pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goal_target_pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goal_target_pose[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [controller]
    data.controller = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [planner]
    data.planner = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [recovery_behaviors]
    data.recovery_behaviors = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [goal_tolerance]
    // Deserialize array length for message field [goal_tolerance]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goal_tolerance = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goal_tolerance[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [navigation_type]
    data.navigation_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_target_type]
    data.goal_target_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [max_vel]
    data.max_vel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.goal_target_pose.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    object.controller.forEach((val) => {
      length += 4 + val.length;
    });
    object.planner.forEach((val) => {
      length += 4 + val.length;
    });
    object.recovery_behaviors.forEach((val) => {
      length += 4 + val.length;
    });
    length += 56 * object.goal_tolerance.length;
    length += object.navigation_type.length;
    length += object.goal_target_type.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_navigation_msgs/RobotnikMoveBaseFlexGoalAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca45ca2f4b0324a8e695c151e7aace54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string NAVIGATION_TYPE_POINT_TO_POINT = POINT_TO_POINT
    string NAVIGATION_TYPE_END_POINT= END_POINT
    
    string GOAL_TARGET_TYPE_GPS = GPS
    string GOAL_TARGET_TYPE_CARTESIAN = CARTESIAN
    
    geometry_msgs/PoseStamped[] goal_target_pose
    string[] controller
    string[] planner
    string[] recovery_behaviors
    geometry_msgs/Pose[] goal_tolerance
    string navigation_type
    string goal_target_type
    float32 max_vel
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new RobotnikMoveBaseFlexGoalAction(null);
    if (msg.goal_target_pose !== undefined) {
      resolved.goal_target_pose = new Array(msg.goal_target_pose.length);
      for (let i = 0; i < resolved.goal_target_pose.length; ++i) {
        resolved.goal_target_pose[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.goal_target_pose[i]);
      }
    }
    else {
      resolved.goal_target_pose = []
    }

    if (msg.controller !== undefined) {
      resolved.controller = msg.controller;
    }
    else {
      resolved.controller = []
    }

    if (msg.planner !== undefined) {
      resolved.planner = msg.planner;
    }
    else {
      resolved.planner = []
    }

    if (msg.recovery_behaviors !== undefined) {
      resolved.recovery_behaviors = msg.recovery_behaviors;
    }
    else {
      resolved.recovery_behaviors = []
    }

    if (msg.goal_tolerance !== undefined) {
      resolved.goal_tolerance = new Array(msg.goal_tolerance.length);
      for (let i = 0; i < resolved.goal_tolerance.length; ++i) {
        resolved.goal_tolerance[i] = geometry_msgs.msg.Pose.Resolve(msg.goal_tolerance[i]);
      }
    }
    else {
      resolved.goal_tolerance = []
    }

    if (msg.navigation_type !== undefined) {
      resolved.navigation_type = msg.navigation_type;
    }
    else {
      resolved.navigation_type = ''
    }

    if (msg.goal_target_type !== undefined) {
      resolved.goal_target_type = msg.goal_target_type;
    }
    else {
      resolved.goal_target_type = ''
    }

    if (msg.max_vel !== undefined) {
      resolved.max_vel = msg.max_vel;
    }
    else {
      resolved.max_vel = 0.0
    }

    return resolved;
    }
};

// Constants for message
RobotnikMoveBaseFlexGoalAction.Constants = {
  NAVIGATION_TYPE_POINT_TO_POINT: 'POINT_TO_POINT',
  NAVIGATION_TYPE_END_POINT: 'END_POINT',
  GOAL_TARGET_TYPE_GPS: 'GPS',
  GOAL_TARGET_TYPE_CARTESIAN: 'CARTESIAN',
}

module.exports = RobotnikMoveBaseFlexGoalAction;
