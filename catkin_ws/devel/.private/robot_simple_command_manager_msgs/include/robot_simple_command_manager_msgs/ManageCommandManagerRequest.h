// Generated by gencpp from file robot_simple_command_manager_msgs/ManageCommandManagerRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_MANAGECOMMANDMANAGERREQUEST_H
#define ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_MANAGECOMMANDMANAGERREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robot_simple_command_manager_msgs/CommandManager.h>

namespace robot_simple_command_manager_msgs
{
template <class ContainerAllocator>
struct ManageCommandManagerRequest_
{
  typedef ManageCommandManagerRequest_<ContainerAllocator> Type;

  ManageCommandManagerRequest_()
    : Command()  {
    }
  ManageCommandManagerRequest_(const ContainerAllocator& _alloc)
    : Command(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robot_simple_command_manager_msgs::CommandManager_<ContainerAllocator>  _Command_type;
  _Command_type Command;





  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ManageCommandManagerRequest_

typedef ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<std::allocator<void> > ManageCommandManagerRequest;

typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest > ManageCommandManagerRequestPtr;
typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest const> ManageCommandManagerRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator2> & rhs)
{
  return lhs.Command == rhs.Command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_simple_command_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c0aff2781779c8df6d103de12b54046a";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc0aff2781779c8dfULL;
  static const uint64_t static_value2 = 0x6d103de12b54046aULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_simple_command_manager_msgs/ManageCommandManagerRequest";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_simple_command_manager_msgs/CommandManager Command\n"
"\n"
"================================================================================\n"
"MSG: robot_simple_command_manager_msgs/CommandManager\n"
"string id\n"
"string command\n"
"\n"
;
  }

  static const char* value(const ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ManageCommandManagerRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_simple_command_manager_msgs::ManageCommandManagerRequest_<ContainerAllocator>& v)
  {
    s << indent << "Command: ";
    s << std::endl;
    Printer< ::robot_simple_command_manager_msgs::CommandManager_<ContainerAllocator> >::stream(s, indent + "  ", v.Command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_MANAGECOMMANDMANAGERREQUEST_H
