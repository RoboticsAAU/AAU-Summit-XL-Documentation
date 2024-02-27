// Generated by gencpp from file robot_simple_command_manager_msgs/CommandStringFeedback.msg
// DO NOT EDIT!


#ifndef ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_COMMANDSTRINGFEEDBACK_H
#define ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_COMMANDSTRINGFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_simple_command_manager_msgs
{
template <class ContainerAllocator>
struct CommandStringFeedback_
{
  typedef CommandStringFeedback_<ContainerAllocator> Type;

  CommandStringFeedback_()
    : command()
    , status()  {
    }
  CommandStringFeedback_(const ContainerAllocator& _alloc)
    : command(_alloc)
    , status(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _command_type;
  _command_type command;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct CommandStringFeedback_

typedef ::robot_simple_command_manager_msgs::CommandStringFeedback_<std::allocator<void> > CommandStringFeedback;

typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::CommandStringFeedback > CommandStringFeedbackPtr;
typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::CommandStringFeedback const> CommandStringFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.command == rhs.command &&
    lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_simple_command_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7236684bf0009e315d87048d1a67d74c";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7236684bf0009e31ULL;
  static const uint64_t static_value2 = 0x5d87048d1a67d74cULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_simple_command_manager_msgs/CommandStringFeedback";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string command\n"
"string status\n"
;
  }

  static const char* value(const ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CommandStringFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_simple_command_manager_msgs::CommandStringFeedback_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.command);
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_COMMANDSTRINGFEEDBACK_H
