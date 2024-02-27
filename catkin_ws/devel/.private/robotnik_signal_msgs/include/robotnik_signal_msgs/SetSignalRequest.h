// Generated by gencpp from file robotnik_signal_msgs/SetSignalRequest.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_SIGNAL_MSGS_MESSAGE_SETSIGNALREQUEST_H
#define ROBOTNIK_SIGNAL_MSGS_MESSAGE_SETSIGNALREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotnik_signal_msgs
{
template <class ContainerAllocator>
struct SetSignalRequest_
{
  typedef SetSignalRequest_<ContainerAllocator> Type;

  SetSignalRequest_()
    : signal_id()
    , enable(false)  {
    }
  SetSignalRequest_(const ContainerAllocator& _alloc)
    : signal_id(_alloc)
    , enable(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _signal_id_type;
  _signal_id_type signal_id;

   typedef uint8_t _enable_type;
  _enable_type enable;





  typedef boost::shared_ptr< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetSignalRequest_

typedef ::robotnik_signal_msgs::SetSignalRequest_<std::allocator<void> > SetSignalRequest;

typedef boost::shared_ptr< ::robotnik_signal_msgs::SetSignalRequest > SetSignalRequestPtr;
typedef boost::shared_ptr< ::robotnik_signal_msgs::SetSignalRequest const> SetSignalRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator1> & lhs, const ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator2> & rhs)
{
  return lhs.signal_id == rhs.signal_id &&
    lhs.enable == rhs.enable;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator1> & lhs, const ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_signal_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "29e17e131111d8de206deae2c0f44ddd";
  }

  static const char* value(const ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x29e17e131111d8deULL;
  static const uint64_t static_value2 = 0x206deae2c0f44dddULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_signal_msgs/SetSignalRequest";
  }

  static const char* value(const ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string signal_id\n"
"bool enable\n"
;
  }

  static const char* value(const ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.signal_id);
      stream.next(m.enable);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetSignalRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_signal_msgs::SetSignalRequest_<ContainerAllocator>& v)
  {
    s << indent << "signal_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.signal_id);
    s << indent << "enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_SIGNAL_MSGS_MESSAGE_SETSIGNALREQUEST_H
