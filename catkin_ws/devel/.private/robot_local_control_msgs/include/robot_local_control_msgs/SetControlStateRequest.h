// Generated by gencpp from file robot_local_control_msgs/SetControlStateRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETCONTROLSTATEREQUEST_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETCONTROLSTATEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_local_control_msgs
{
template <class ContainerAllocator>
struct SetControlStateRequest_
{
  typedef SetControlStateRequest_<ContainerAllocator> Type;

  SetControlStateRequest_()
    : command()  {
    }
  SetControlStateRequest_(const ContainerAllocator& _alloc)
    : command(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _command_type;
  _command_type command;





  typedef boost::shared_ptr< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetControlStateRequest_

typedef ::robot_local_control_msgs::SetControlStateRequest_<std::allocator<void> > SetControlStateRequest;

typedef boost::shared_ptr< ::robot_local_control_msgs::SetControlStateRequest > SetControlStateRequestPtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::SetControlStateRequest const> SetControlStateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.command == rhs.command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cba5e21e920a3a2b7b375cb65b64cdea";
  }

  static const char* value(const ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcba5e21e920a3a2bULL;
  static const uint64_t static_value2 = 0x7b375cb65b64cdeaULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/SetControlStateRequest";
  }

  static const char* value(const ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# CONTROL STATES OF THE ROBOT\n"
"# autonomous: the robot is moving autonomously\n"
"# manual: the robot is being tele-operated by an operator\n"
"# follow: the robot is following a person \n"
"\n"
"# see robot_local_control_msgs/State for the CONTROL_STATE options/commands\n"
"string command\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetControlStateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::SetControlStateRequest_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETCONTROLSTATEREQUEST_H