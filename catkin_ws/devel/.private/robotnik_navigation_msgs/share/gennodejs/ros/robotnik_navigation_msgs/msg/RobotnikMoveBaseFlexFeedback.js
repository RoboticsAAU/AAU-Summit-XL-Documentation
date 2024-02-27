// Auto-generated. Do not edit!

// (in-package robotnik_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotnikMoveBaseFlexFeedbackAction = require('./RobotnikMoveBaseFlexFeedbackAction.js');

//-----------------------------------------------------------

class RobotnikMoveBaseFlexFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = new RobotnikMoveBaseFlexFeedbackAction();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotnikMoveBaseFlexFeedback
    // Serialize message field [feedback]
    bufferOffset = RobotnikMoveBaseFlexFeedbackAction.serialize(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotnikMoveBaseFlexFeedback
    let len;
    let data = new RobotnikMoveBaseFlexFeedback(null);
    // Deserialize message field [feedback]
    data.feedback = RobotnikMoveBaseFlexFeedbackAction.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += RobotnikMoveBaseFlexFeedbackAction.getMessageSize(object.feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_navigation_msgs/RobotnikMoveBaseFlexFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06ec395e39cce0050fb1f625545c856a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    robotnik_navigation_msgs/RobotnikMoveBaseFlexFeedbackAction feedback
    
    
    
    ================================================================================
    MSG: robotnik_navigation_msgs/RobotnikMoveBaseFlexFeedbackAction
    
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
    const resolved = new RobotnikMoveBaseFlexFeedback(null);
    if (msg.feedback !== undefined) {
      resolved.feedback = RobotnikMoveBaseFlexFeedbackAction.Resolve(msg.feedback)
    }
    else {
      resolved.feedback = new RobotnikMoveBaseFlexFeedbackAction()
    }

    return resolved;
    }
};

module.exports = RobotnikMoveBaseFlexFeedback;
