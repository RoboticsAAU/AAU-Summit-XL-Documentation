// Generated by gencpp from file robot_simple_command_manager_msgs/RobotSimpleCommandFeedback.msg
// DO NOT EDIT!


#ifndef ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_ROBOTSIMPLECOMMANDFEEDBACK_H
#define ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_ROBOTSIMPLECOMMANDFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robot_simple_command_manager_msgs/CommandStringFeedback.h>

namespace robot_simple_command_manager_msgs
{
template <class ContainerAllocator>
struct RobotSimpleCommandFeedback_
{
  typedef RobotSimpleCommandFeedback_<ContainerAllocator> Type;

  RobotSimpleCommandFeedback_()
    : feedback()  {
    }
  RobotSimpleCommandFeedback_(const ContainerAllocator& _alloc)
    : feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator>  _feedback_type;
  _feedback_type feedback;





  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct RobotSimpleCommandFeedback_

typedef ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<std::allocator<void> > RobotSimpleCommandFeedback;

typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback > RobotSimpleCommandFeedbackPtr;
typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback const> RobotSimpleCommandFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.feedback == rhs.feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_simple_command_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "015daefc8dc068e08825df2bf655e8de";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x015daefc8dc068e0ULL;
  static const uint64_t static_value2 = 0x8825df2bf655e8deULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_simple_command_manager_msgs/RobotSimpleCommandFeedback";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"robot_simple_command_manager_msgs/CommandStringFeedback feedback\n"
"\n"
"\n"
"================================================================================\n"
"MSG: robot_simple_command_manager_msgs/CommandStringFeedback\n"
"string command\n"
"string status\n"
;
  }

  static const char* value(const ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotSimpleCommandFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_simple_command_manager_msgs::RobotSimpleCommandFeedback_<ContainerAllocator>& v)
  {
    s << indent << "feedback: ";
    s << std::endl;
    Printer< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_ROBOTSIMPLECOMMANDFEEDBACK_H