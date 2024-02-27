// Auto-generated. Do not edit!

// (in-package robot_local_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Dock {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dock_frame = null;
      this.robot_dock_frame = null;
      this.dock_offset = null;
      this.maximum_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('dock_frame')) {
        this.dock_frame = initObj.dock_frame
      }
      else {
        this.dock_frame = '';
      }
      if (initObj.hasOwnProperty('robot_dock_frame')) {
        this.robot_dock_frame = initObj.robot_dock_frame
      }
      else {
        this.robot_dock_frame = '';
      }
      if (initObj.hasOwnProperty('dock_offset')) {
        this.dock_offset = initObj.dock_offset
      }
      else {
        this.dock_offset = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('maximum_velocity')) {
        this.maximum_velocity = initObj.maximum_velocity
      }
      else {
        this.maximum_velocity = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Dock
    // Serialize message field [dock_frame]
    bufferOffset = _serializer.string(obj.dock_frame, buffer, bufferOffset);
    // Serialize message field [robot_dock_frame]
    bufferOffset = _serializer.string(obj.robot_dock_frame, buffer, bufferOffset);
    // Serialize message field [dock_offset]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.dock_offset, buffer, bufferOffset);
    // Serialize message field [maximum_velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.maximum_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Dock
    let len;
    let data = new Dock(null);
    // Deserialize message field [dock_frame]
    data.dock_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_dock_frame]
    data.robot_dock_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dock_offset]
    data.dock_offset = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [maximum_velocity]
    data.maximum_velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.dock_frame.length;
    length += object.robot_dock_frame.length;
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_local_control_msgs/Dock';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4dcb1e3a11689b9912d1f91234a9741';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string dock_frame
    string robot_dock_frame
    geometry_msgs/Pose2D dock_offset
    geometry_msgs/Twist maximum_velocity
    
    
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
    const resolved = new Dock(null);
    if (msg.dock_frame !== undefined) {
      resolved.dock_frame = msg.dock_frame;
    }
    else {
      resolved.dock_frame = ''
    }

    if (msg.robot_dock_frame !== undefined) {
      resolved.robot_dock_frame = msg.robot_dock_frame;
    }
    else {
      resolved.robot_dock_frame = ''
    }

    if (msg.dock_offset !== undefined) {
      resolved.dock_offset = geometry_msgs.msg.Pose2D.Resolve(msg.dock_offset)
    }
    else {
      resolved.dock_offset = new geometry_msgs.msg.Pose2D()
    }

    if (msg.maximum_velocity !== undefined) {
      resolved.maximum_velocity = geometry_msgs.msg.Twist.Resolve(msg.maximum_velocity)
    }
    else {
      resolved.maximum_velocity = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = Dock;
