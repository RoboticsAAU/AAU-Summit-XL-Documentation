// Generated by gencpp from file robot_local_control_msgs/RobotStatus.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_ROBOTSTATUS_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_ROBOTSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robotnik_msgs/BatteryStatus.h>
#include <robot_local_control_msgs/Pose2DStamped.h>
#include <robot_local_control_msgs/Twist2D.h>
#include <robotnik_msgs/SafetyModuleStatus.h>
#include <robotnik_msgs/BatteryDockingStatus.h>
#include <robot_local_control_msgs/ControllerStatus.h>
#include <robot_local_control_msgs/SensorStatus.h>
#include <robotnik_msgs/ElevatorStatus.h>

namespace robot_local_control_msgs
{
template <class ContainerAllocator>
struct RobotStatus_
{
  typedef RobotStatus_<ContainerAllocator> Type;

  RobotStatus_()
    : battery()
    , emergency_stop(false)
    , pose()
    , velocity()
    , safety_status()
    , battery_docking_status()
    , controllers()
    , sensors()
    , elevator()  {
    }
  RobotStatus_(const ContainerAllocator& _alloc)
    : battery(_alloc)
    , emergency_stop(false)
    , pose(_alloc)
    , velocity(_alloc)
    , safety_status(_alloc)
    , battery_docking_status(_alloc)
    , controllers(_alloc)
    , sensors(_alloc)
    , elevator(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robotnik_msgs::BatteryStatus_<ContainerAllocator>  _battery_type;
  _battery_type battery;

   typedef uint8_t _emergency_stop_type;
  _emergency_stop_type emergency_stop;

   typedef  ::robot_local_control_msgs::Pose2DStamped_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::robot_local_control_msgs::Twist2D_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef  ::robotnik_msgs::SafetyModuleStatus_<ContainerAllocator>  _safety_status_type;
  _safety_status_type safety_status;

   typedef  ::robotnik_msgs::BatteryDockingStatus_<ContainerAllocator>  _battery_docking_status_type;
  _battery_docking_status_type battery_docking_status;

   typedef std::vector< ::robot_local_control_msgs::ControllerStatus_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::robot_local_control_msgs::ControllerStatus_<ContainerAllocator> >::other >  _controllers_type;
  _controllers_type controllers;

   typedef std::vector< ::robot_local_control_msgs::SensorStatus_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::robot_local_control_msgs::SensorStatus_<ContainerAllocator> >::other >  _sensors_type;
  _sensors_type sensors;

   typedef  ::robotnik_msgs::ElevatorStatus_<ContainerAllocator>  _elevator_type;
  _elevator_type elevator;





  typedef boost::shared_ptr< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> const> ConstPtr;

}; // struct RobotStatus_

typedef ::robot_local_control_msgs::RobotStatus_<std::allocator<void> > RobotStatus;

typedef boost::shared_ptr< ::robot_local_control_msgs::RobotStatus > RobotStatusPtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::RobotStatus const> RobotStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::RobotStatus_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::RobotStatus_<ContainerAllocator2> & rhs)
{
  return lhs.battery == rhs.battery &&
    lhs.emergency_stop == rhs.emergency_stop &&
    lhs.pose == rhs.pose &&
    lhs.velocity == rhs.velocity &&
    lhs.safety_status == rhs.safety_status &&
    lhs.battery_docking_status == rhs.battery_docking_status &&
    lhs.controllers == rhs.controllers &&
    lhs.sensors == rhs.sensors &&
    lhs.elevator == rhs.elevator;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::RobotStatus_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::RobotStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8d5bc9a08e5159ee68da8f752c6d8f5c";
  }

  static const char* value(const ::robot_local_control_msgs::RobotStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8d5bc9a08e5159eeULL;
  static const uint64_t static_value2 = 0x68da8f752c6d8f5cULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/RobotStatus";
  }

  static const char* value(const ::robot_local_control_msgs::RobotStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# robot battery\n"
"robotnik_msgs/BatteryStatus battery\n"
"\n"
"# Robot emergency stop\n"
"bool emergency_stop\n"
"\n"
"# lights\n"
"# acoustic signal\n"
"# bool acoustic_signal\n"
"\n"
"# Robot internal odometry\n"
"Pose2DStamped pose\n"
"Twist2D velocity\n"
"\n"
"# Safety status\n"
"robotnik_msgs/SafetyModuleStatus safety_status\n"
"\n"
"# Battery Docking status\n"
"robotnik_msgs/BatteryDockingStatus battery_docking_status\n"
"\n"
"ControllerStatus[] controllers\n"
"\n"
"SensorStatus[] sensors\n"
"robotnik_msgs/ElevatorStatus elevator\n"
"\n"
"================================================================================\n"
"MSG: robotnik_msgs/BatteryStatus\n"
"float32 voltage			# in volts\n"
"float32 current			# in amperes\n"
"float32 level			# in %\n"
"uint32 time_remaining		# in minutes\n"
"uint32 time_charging            # in minutes \n"
"bool is_charging                # true when connected\n"
"\n"
"================================================================================\n"
"MSG: robot_local_control_msgs/Pose2DStamped\n"
"Header header\n"
"geometry_msgs/Pose2D pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
"\n"
"================================================================================\n"
"MSG: robot_local_control_msgs/Twist2D\n"
"float64 linear_x\n"
"float64 linear_y\n"
"float64 angular_z\n"
"\n"
"================================================================================\n"
"MSG: robotnik_msgs/SafetyModuleStatus\n"
"# robot safety mode\n"
"string SAFE=safe\n"
"string OVERRIDABLE=overridable\n"
"string EMERGENCY=emergency\n"
"string LASER_MUTE=laser_mute\n"
"\n"
"string safety_mode\n"
"bool charging\n"
"bool emergency_stop        # if e-stop is pressed\n"
"bool safety_stop           # if system is stopped due to safety system\n"
"bool safety_overrided      # if safety system is overrided\n"
"bool lasers_on_standby     # if lasers don't have power\n"
"float64 current_speed       # current speed measured by safety system\n"
"float64 speed_at_safety_stop  # speed measured at last safety stop by safety system\n"
"\n"
"robotnik_msgs/LaserMode lasers_mode\n"
"robotnik_msgs/LaserStatus[] lasers_status\n"
"\n"
"================================================================================\n"
"MSG: robotnik_msgs/LaserMode\n"
"string STANDARD=standard\n"
"string DOCKING_STATION=docking_station\n"
"string CART=cart\n"
"string CART_DOCKING_CART=cart_docking_cart\n"
"string DOCKING_CART=docking_cart\n"
"string REDUCED=reduced\n"
"string INVALID=invalid\n"
"\n"
"string name\n"
"\n"
"================================================================================\n"
"MSG: robotnik_msgs/LaserStatus\n"
"string name\n"
"bool detecting_obstacles\n"
"bool contaminated\n"
"bool free_warning\n"
"# one input per each warning zone.\n"
"# first areas are closer to the robot (i.e. more restrictive)\n"
"bool[] warning_zones \n"
"\n"
"================================================================================\n"
"MSG: robotnik_msgs/BatteryDockingStatus\n"
"# Modes of operation:\n"
"# no docking station contacts\n"
"string MODE_DISABLED=disabled\n"
"# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw\n"
"string MODE_AUTO_HW=automatic_hw\n"
"# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw\n"
"string MODE_AUTO_SW=automatic_sw\n"
"# Unattended relay detection & and manual activation of the charging relay\n"
"string MODE_MANUAL_SW=manual_sw\n"
"\n"
"string operation_mode\n"
"	\n"
"bool contact_relay_status	# shows if there's contact with the charger\n"
"bool charger_relay_status   # shows if the relay for the charge is active or not\n"
"\n"
"================================================================================\n"
"MSG: robot_local_control_msgs/ControllerStatus\n"
"# Human readable name\n"
"string name\n"
"\n"
"# Type of controller\n"
"string type\n"
"\n"
"# INIT, READY, EMERGENCY, FAILURE\n"
"string state\n"
"\n"
"================================================================================\n"
"MSG: robot_local_control_msgs/SensorStatus\n"
"# Human readable name\n"
"string name\n"
"\n"
"# Type of sensor\n"
"string type\n"
"\n"
"# INIT, READY, EMERGENCY, FAILURE\n"
"string state\n"
"\n"
"================================================================================\n"
"MSG: robotnik_msgs/ElevatorStatus\n"
"# state\n"
"string RAISING=raising\n"
"string LOWERING=lowering\n"
"string IDLE=idle\n"
"string ERROR_G_IO=error_getting_io\n"
"string ERROR_S_IO=error_setting_io\n"
"string ERROR_TIMEOUT=error_timeout_in_action\n"
"# position\n"
"string UP=up\n"
"string DOWN=down\n"
"string UNKNOWN=unknown\n"
"# IDLE, RAISING, LOWERING\n"
"string state\n"
"# UP, DOWN, UNKNOWN\n"
"string position\n"
"float32 height\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::RobotStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.battery);
      stream.next(m.emergency_stop);
      stream.next(m.pose);
      stream.next(m.velocity);
      stream.next(m.safety_status);
      stream.next(m.battery_docking_status);
      stream.next(m.controllers);
      stream.next(m.sensors);
      stream.next(m.elevator);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::RobotStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::RobotStatus_<ContainerAllocator>& v)
  {
    s << indent << "battery: ";
    s << std::endl;
    Printer< ::robotnik_msgs::BatteryStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.battery);
    s << indent << "emergency_stop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.emergency_stop);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::robot_local_control_msgs::Pose2DStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::robot_local_control_msgs::Twist2D_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "safety_status: ";
    s << std::endl;
    Printer< ::robotnik_msgs::SafetyModuleStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.safety_status);
    s << indent << "battery_docking_status: ";
    s << std::endl;
    Printer< ::robotnik_msgs::BatteryDockingStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.battery_docking_status);
    s << indent << "controllers[]" << std::endl;
    for (size_t i = 0; i < v.controllers.size(); ++i)
    {
      s << indent << "  controllers[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robot_local_control_msgs::ControllerStatus_<ContainerAllocator> >::stream(s, indent + "    ", v.controllers[i]);
    }
    s << indent << "sensors[]" << std::endl;
    for (size_t i = 0; i < v.sensors.size(); ++i)
    {
      s << indent << "  sensors[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robot_local_control_msgs::SensorStatus_<ContainerAllocator> >::stream(s, indent + "    ", v.sensors[i]);
    }
    s << indent << "elevator: ";
    s << std::endl;
    Printer< ::robotnik_msgs::ElevatorStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.elevator);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_ROBOTSTATUS_H