// Generated by gencpp from file robot_simple_command_manager_msgs/GetHandlersResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_GETHANDLERSRESPONSE_H
#define ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_GETHANDLERSRESPONSE_H


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
struct GetHandlersResponse_
{
  typedef GetHandlersResponse_<ContainerAllocator> Type;

  GetHandlersResponse_()
    : handlers()  {
    }
  GetHandlersResponse_(const ContainerAllocator& _alloc)
    : handlers(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _handlers_type;
  _handlers_type handlers;





  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetHandlersResponse_

typedef ::robot_simple_command_manager_msgs::GetHandlersResponse_<std::allocator<void> > GetHandlersResponse;

typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::GetHandlersResponse > GetHandlersResponsePtr;
typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::GetHandlersResponse const> GetHandlersResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator2> & rhs)
{
  return lhs.handlers == rhs.handlers;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_simple_command_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dd8c5aa023d5f8392d90b9573cfc34a5";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdd8c5aa023d5f839ULL;
  static const uint64_t static_value2 = 0x2d90b9573cfc34a5ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_simple_command_manager_msgs/GetHandlersResponse";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] handlers\n"
;
  }

  static const char* value(const ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.handlers);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetHandlersResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_simple_command_manager_msgs::GetHandlersResponse_<ContainerAllocator>& v)
  {
    s << indent << "handlers[]" << std::endl;
    for (size_t i = 0; i < v.handlers.size(); ++i)
    {
      s << indent << "  handlers[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.handlers[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_GETHANDLERSRESPONSE_H