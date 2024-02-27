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

class RobotnikMoveBaseFlexResultAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.outcome = null;
      this.message = null;
      this.dist_to_goal = null;
      this.angle_to_goal = null;
      this.current_pose = null;
      this.success = null;
      this.last_cmd_vel = null;
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
      if (initObj.hasOwnProperty('current_pose')) {
        this.current_pose = initObj.current_pose
      }
      else {
        this.current_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('last_cmd_vel')) {
        this.last_cmd_vel = initObj.last_cmd_vel
      }
      else {
        this.last_cmd_vel = new geometry_msgs.msg.TwistStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotnikMoveBaseFlexResultAction
    // Serialize message field [outcome]
    bufferOffset = _serializer.uint32(obj.outcome, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [dist_to_goal]
    bufferOffset = _serializer.float32(obj.dist_to_goal, buffer, bufferOffset);
    // Serialize message field [angle_to_goal]
    bufferOffset = _serializer.float32(obj.angle_to_goal, buffer, bufferOffset);
    // Serialize message field [current_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.current_pose, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [last_cmd_vel]
    bufferOffset = geometry_msgs.msg.TwistStamped.serialize(obj.last_cmd_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotnikMoveBaseFlexResultAction
    let len;
    let data = new RobotnikMoveBaseFlexResultAction(null);
    // Deserialize message field [outcome]
    data.outcome = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dist_to_goal]
    data.dist_to_goal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_to_goal]
    data.angle_to_goal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_pose]
    data.current_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [last_cmd_vel]
    data.last_cmd_vel = geometry_msgs.msg.TwistStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.current_pose);
    length += geometry_msgs.msg.TwistStamped.getMessageSize(object.last_cmd_vel);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_navigation_msgs/RobotnikMoveBaseFlexResultAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e554920bf6d6eb237c78299c84b8368';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # Outcome of most recent controller cycle. Same values as in MoveBase or ExePath result.
    uint32 outcome
    string message
    
    float32 dist_to_goal
    float32 angle_to_goal
    geometry_msgs/PoseStamped current_pose
    bool success
    geometry_msgs/TwistStamped last_cmd_vel  # last command calculated by the controller
    
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
    MSG: geometry_msgs/TwistStamped
    # A twist with reference coordinate frame and timestamp
    Header header
    Twist twist
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotnikMoveBaseFlexResultAction(null);
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

    if (msg.current_pose !== undefined) {
      resolved.current_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.current_pose)
    }
    else {
      resolved.current_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.last_cmd_vel !== undefined) {
      resolved.last_cmd_vel = geometry_msgs.msg.TwistStamped.Resolve(msg.last_cmd_vel)
    }
    else {
      resolved.last_cmd_vel = new geometry_msgs.msg.TwistStamped()
    }

    return resolved;
    }
};

module.exports = RobotnikMoveBaseFlexResultAction;
