// Generated by gencpp from file robot_local_control_msgs/GetEnvironmentResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_GETENVIRONMENTRESPONSE_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_GETENVIRONMENTRESPONSE_H


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
struct GetEnvironmentResponse_
{
  typedef GetEnvironmentResponse_<ContainerAllocator> Type;

  GetEnvironmentResponse_()
    : success(false)
    , message()
    , environment()  {
    }
  GetEnvironmentResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)
    , environment(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _environment_type;
  _environment_type environment;





  typedef boost::shared_ptr< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetEnvironmentResponse_

typedef ::robot_local_control_msgs::GetEnvironmentResponse_<std::allocator<void> > GetEnvironmentResponse;

typedef boost::shared_ptr< ::robot_local_control_msgs::GetEnvironmentResponse > GetEnvironmentResponsePtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::GetEnvironmentResponse const> GetEnvironmentResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message &&
    lhs.environment == rhs.environment;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "18e10632e78694f7360539cc210ec71f";
  }

  static const char* value(const ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x18e10632e78694f7ULL;
  static const uint64_t static_value2 = 0x360539cc210ec71fULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/GetEnvironmentResponse";
  }

  static const char* value(const ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success   # indicate successful run of triggered service\n"
"string message # informational, e.g. for error messages\n"
"string[] environment \n"
"\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
      stream.next(m.environment);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetEnvironmentResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::GetEnvironmentResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "environment[]" << std::endl;
    for (size_t i = 0; i < v.environment.size(); ++i)
    {
      s << indent << "  environment[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.environment[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_GETENVIRONMENTRESPONSE_H
