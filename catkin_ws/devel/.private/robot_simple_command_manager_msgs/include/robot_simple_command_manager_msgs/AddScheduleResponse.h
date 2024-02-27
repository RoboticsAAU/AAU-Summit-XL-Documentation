// Generated by gencpp from file robot_simple_command_manager_msgs/AddScheduleResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_ADDSCHEDULERESPONSE_H
#define ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_ADDSCHEDULERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robot_simple_command_manager_msgs/ReturnMessage.h>

namespace robot_simple_command_manager_msgs
{
template <class ContainerAllocator>
struct AddScheduleResponse_
{
  typedef AddScheduleResponse_<ContainerAllocator> Type;

  AddScheduleResponse_()
    : ret()  {
    }
  AddScheduleResponse_(const ContainerAllocator& _alloc)
    : ret(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robot_simple_command_manager_msgs::ReturnMessage_<ContainerAllocator>  _ret_type;
  _ret_type ret;





  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> const> ConstPtr;

}; // struct AddScheduleResponse_

typedef ::robot_simple_command_manager_msgs::AddScheduleResponse_<std::allocator<void> > AddScheduleResponse;

typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::AddScheduleResponse > AddScheduleResponsePtr;
typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::AddScheduleResponse const> AddScheduleResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ret == rhs.ret;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_simple_command_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1cc59476b1732f75af5b4512acb5adbe";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1cc59476b1732f75ULL;
  static const uint64_t static_value2 = 0xaf5b4512acb5adbeULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_simple_command_manager_msgs/AddScheduleResponse";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_simple_command_manager_msgs/ReturnMessage ret\n"
"\n"
"================================================================================\n"
"MSG: robot_simple_command_manager_msgs/ReturnMessage\n"
"bool success\n"
"string message\n"
"int16 code\n"
;
  }

  static const char* value(const ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ret);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddScheduleResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_simple_command_manager_msgs::AddScheduleResponse_<ContainerAllocator>& v)
  {
    s << indent << "ret: ";
    s << std::endl;
    Printer< ::robot_simple_command_manager_msgs::ReturnMessage_<ContainerAllocator> >::stream(s, indent + "  ", v.ret);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_ADDSCHEDULERESPONSE_H
