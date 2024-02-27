// Generated by gencpp from file robot_simple_command_manager_msgs/SetCommandStringRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_SETCOMMANDSTRINGREQUEST_H
#define ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_SETCOMMANDSTRINGREQUEST_H


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
struct SetCommandStringRequest_
{
  typedef SetCommandStringRequest_<ContainerAllocator> Type;

  SetCommandStringRequest_()
    : command()  {
    }
  SetCommandStringRequest_(const ContainerAllocator& _alloc)
    : command(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _command_type;
  _command_type command;





  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetCommandStringRequest_

typedef ::robot_simple_command_manager_msgs::SetCommandStringRequest_<std::allocator<void> > SetCommandStringRequest;

typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::SetCommandStringRequest > SetCommandStringRequestPtr;
typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::SetCommandStringRequest const> SetCommandStringRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator2> & rhs)
{
  return lhs.command == rhs.command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_simple_command_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cba5e21e920a3a2b7b375cb65b64cdea";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcba5e21e920a3a2bULL;
  static const uint64_t static_value2 = 0x7b375cb65b64cdeaULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_simple_command_manager_msgs/SetCommandStringRequest";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string command\n"
;
  }

  static const char* value(const ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetCommandStringRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_simple_command_manager_msgs::SetCommandStringRequest_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_SETCOMMANDSTRINGREQUEST_H
