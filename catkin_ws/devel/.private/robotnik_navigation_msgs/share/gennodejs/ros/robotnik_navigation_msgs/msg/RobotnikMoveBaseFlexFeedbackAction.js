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

class RobotnikMoveBaseFlexFeedbackAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.outcome = null;
      this.message = null;
      this.dist_to_goal = null;
      this.angle_to_goal = null;
      this.final_pose = null;
      this.current_pose_executing = null;
      this.dist_current_target = null;
      this.current_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('outcome')) {
        this.outcome = initObj.outcome
      }
      else {
        this.outcome = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('dist_to_goal')) {
        this.dist_to_goal = initObj.dist_to_goal
      }
      else {
        this.dist_to_goal = 0.0;
      }
      if (initObj.hasOwnProperty('angle_to_goal')) {
        this.angle_to_goal = initObj.angle_to_goal
      }
      else {
        this.angle_to_goal = 0.0;
      }
      if (initObj.hasOwnProperty('final_pose')) {
        this.final_pose = initObj.final_pose
      }
      else {
        this.final_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('current_pose_executing')) {
        this.current_pose_executing = initObj.current_pose_executing
      }
      else {
        this.current_pose_executing = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('dist_current_target')) {
        this.dist_current_target = initObj.dist_current_target
      }
      else {
        this.dist_current_target = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('current_goal')) {
        this.current_goal = initObj.current_goal
      }
      else {
        this.current_goal = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotnikMoveBaseFlexFeedbackAction
    // Serialize message field [outcome]
    bufferOffset = _serializer.uint32(obj.outcome, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [dist_to_goal]
    bufferOffset = _serializer.float32(obj.dist_to_goal, buffer, bufferOffset);
    // Serialize message field [angle_to_goal]
    bufferOffset = _serializer.float32(obj.angle_to_goal, buffer, bufferOffset);
    // Serialize message field [final_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.final_pose, buffer, bufferOffset);
    // Serialize message field [current_pose_executing]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.current_pose_executing, buffer, bufferOffset);
    // Serialize message field [dist_current_target]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.dist_current_target, buffer, bufferOffset);
    // Serialize message field [current_goal]
    bufferOffset = _serializer.uint32(obj.current_goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotnikMoveBaseFlexFeedbackAction
    let len;
    let data = new RobotnikMoveBaseFlexFeedbackAction(null);
    // Deserialize message field [outcome]
    data.outcome = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dist_to_goal]
    data.dist_to_goal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_to_goal]
    data.angle_to_goal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [final_pose]
    data.final_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_pose_executing]
    data.current_pose_executing = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [dist_current_target]
    data.dist_current_target = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_goal]
    data.current_goal = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.final_pose);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.current_pose_executing);
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_navigation_msgs/RobotnikMoveBaseFlexFeedbackAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fbebf6f8927950a648710178b5b3a02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # Predefined success codes:
    uint8 SUCCESS        = 0
    
    # Predefined general error codes:
    uint8 FAILURE        = 10
    uint8 CANCELED       = 11
    uint8 COLLISION      = 12
    uint8 OSCILLATION    = 13
    uint8 START_BLOCKED  = 14
    uint8 GOAL_BLOCKED   = 15
    uint8 TF_ERROR       = 16
    uint8 INTERNAL_ERROR = 17
    # 21..49 are reserved for future general error codes
    
    # Planning/controlling failures:
    uint8 PLAN_FAILURE   = 50
    # 51..99 are reserved as global planner specific errors
    
    uint8 CTRL_FAILURE   = 100
    # 101..149 are reserved as local planner specific errors
    
    uint32 outcome
    string message
    
    # Configuration upon action completion
    float32 dist_to_goal
    float32 angle_to_goal
    geometry_msgs/PoseStamped final_pose
    geometry_msgs/PoseStamped current_pose_executing
    geometry_msgs/Pose2D dist_current_target
    
    # Index of the current goal executing
    uint32 current_goal
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotnikMoveBaseFlexFeedbackAction(null);
    if (msg.outcome !== undefined) {
      resolved.outcome = msg.outcome;
    }
    else {
      resolved.outcome = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.dist_to_goal !== undefined) {
      resolved.dist_to_goal = msg.dist_to_goal;
    }
    else {
      resolved.dist_to_goal = 0.0
    }

    if (msg.angle_to_goal !== undefined) {
      resolved.angle_to_goal = msg.angle_to_goal;
    }
    else {
      resolved.angle_to_goal = 0.0
    }

    if (msg.final_pose !== undefined) {
      resolved.final_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.final_pose)
    }
    else {
      resolved.final_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.current_pose_executing !== undefined) {
      resolved.current_pose_executing = geometry_msgs.msg.PoseStamped.Resolve(msg.current_pose_executing)
    }
    else {
      resolved.current_pose_executing = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.dist_current_target !== undefined) {
      resolved.dist_current_target = geometry_msgs.msg.Pose2D.Resolve(msg.dist_current_target)
    }
    else {
      resolved.dist_current_target = new geometry_msgs.msg.Pose2D()
    }

    if (msg.current_goal !== undefined) {
      resolved.current_goal = msg.current_goal;
    }
    else {
      resolved.current_goal = 0
    }

    return resolved;
    }
};

// Constants for message
RobotnikMoveBaseFlexFeedbackAction.Constants = {
  SUCCESS: 0,
  FAILURE: 10,
  CANCELED: 11,
  COLLISION: 12,
  OSCILLATION: 13,
  START_BLOCKED: 14,
  GOAL_BLOCKED: 15,
  TF_ERROR: 16,
  INTERNAL_ERROR: 17,
  PLAN_FAILURE: 50,
  CTRL_FAILURE: 100,
}

module.exports = RobotnikMoveBaseFlexFeedbackAction;
