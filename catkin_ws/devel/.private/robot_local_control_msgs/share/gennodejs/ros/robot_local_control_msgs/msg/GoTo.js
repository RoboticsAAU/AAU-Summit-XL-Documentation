// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose2DStamped = require('./Pose2DStamped.js');
let Twist2D = require('./Twist2D.js');

//-----------------------------------------------------------

class GoTo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goals = null;
      this.max_velocities = null;
    }
    else {
      if (initObj.hasOwnProperty('goals')) {
        this.goals = initObj.goals
      }
      else {
        this.goals = [];
      }
      if (initObj.hasOwnProperty('max_velocities')) {
        this.max_velocities = initObj.max_velocities
      }
      else {
        this.max_velocities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoTo
    // Serialize message field [goals]
    // Serialize the length for message field [goals]
    bufferOffset = _serializer.uint32(obj.goals.length, buffer, bufferOffset);
    obj.goals.forEach((val) => {
      bufferOffset = Pose2DStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [max_velocities]
    // Serialize the length for message field [max_velocities]
    bufferOffset = _serializer.uint32(obj.max_velocities.length, buffer, bufferOffset);
    obj.max_velocities.forEach((val) => {
      bufferOffset = Twist2D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoTo
    let len;
    let data = new GoTo(null);
    // Deserialize message field [goals]
    // Deserialize array length for message field [goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goals[i] = Pose2DStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [max_velocities]
    // Deserialize array length for message field [max_velocities]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.max_velocities = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.max_velocities[i] = Twist2D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.goals.forEach((val) => {
      length += Pose2DStamped.getMessageSize(val);
    });
    length += 24 * object.max_velocities.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/GoTo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc46f8689ca09285758e2ba1b6ef965a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # goals is a set of 2D poses that will be reached by the robot
    Pose2DStamped[] goals
    # twist can be either empty, in that case no maximum velocity is
    # specified, or a set of the same size as goals, in which each goal
    # will be reached with its maximum velocity
    Twist2D[] max_velocities
    
    ================================================================================
    MSG: robot_local_control_msgs/Pose2DStamped
    Header header
    geometry_msgs/Pose2D pose
    
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
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: robot_local_control_msgs/Twist2D
    float64 linear_x
    float64 linear_y
    float64 angular_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoTo(null);
    if (msg.goals !== undefined) {
      resolved.goals = new Array(msg.goals.length);
      for (let i = 0; i < resolved.goals.length; ++i) {
        resolved.goals[i] = Pose2DStamped.Resolve(msg.goals[i]);
      }
    }
    else {
      resolved.goals = []
    }

    if (msg.max_velocities !== undefined) {
      resolved.max_velocities = new Array(msg.max_velocities.length);
      for (let i = 0; i < resolved.max_velocities.length; ++i) {
        resolved.max_velocities[i] = Twist2D.Resolve(msg.max_velocities[i]);
      }
    }
    else {
      resolved.max_velocities = []
    }

    return resolved;
    }
};

module.exports = GoTo;
