// Generated by gencpp from file system_monitor/NetStatus.msg
// DO NOT EDIT!


#ifndef SYSTEM_MONITOR_MESSAGE_NETSTATUS_H
#define SYSTEM_MONITOR_MESSAGE_NETSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <system_monitor/Interface.h>

namespace system_monitor
{
template <class ContainerAllocator>
struct NetStatus_
{
  typedef NetStatus_<ContainerAllocator> Type;

  NetStatus_()
    : status()
    , time(0.0)
    , interfaces()  {
    }
  NetStatus_(const ContainerAllocator& _alloc)
    : status(_alloc)
    , time(0.0)
    , interfaces(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;

   typedef float _time_type;
  _time_type time;

   typedef std::vector< ::system_monitor::Interface_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::system_monitor::Interface_<ContainerAllocator> >::other >  _interfaces_type;
  _interfaces_type interfaces;





  typedef boost::shared_ptr< ::system_monitor::NetStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::system_monitor::NetStatus_<ContainerAllocator> const> ConstPtr;

}; // struct NetStatus_

typedef ::system_monitor::NetStatus_<std::allocator<void> > NetStatus;

typedef boost::shared_ptr< ::system_monitor::NetStatus > NetStatusPtr;
typedef boost::shared_ptr< ::system_monitor::NetStatus const> NetStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::system_monitor::NetStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::system_monitor::NetStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::system_monitor::NetStatus_<ContainerAllocator1> & lhs, const ::system_monitor::NetStatus_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status &&
    lhs.time == rhs.time &&
    lhs.interfaces == rhs.interfaces;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::system_monitor::NetStatus_<ContainerAllocator1> & lhs, const ::system_monitor::NetStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace system_monitor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::system_monitor::NetStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::system_monitor::NetStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::system_monitor::NetStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::system_monitor::NetStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::system_monitor::NetStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::system_monitor::NetStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::system_monitor::NetStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ee4c5e43ad900b8ca9900b78fe4a10d2";
  }

  static const char* value(const ::system_monitor::NetStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xee4c5e43ad900b8cULL;
  static const uint64_t static_value2 = 0xa9900b78fe4a10d2ULL;
};

template<class ContainerAllocator>
struct DataType< ::system_monitor::NetStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "system_monitor/NetStatus";
  }

  static const char* value(const ::system_monitor::NetStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::system_monitor::NetStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string status\n"
"float32 time\n"
"system_monitor/Interface[] interfaces\n"
"================================================================================\n"
"MSG: system_monitor/Interface\n"
"string name\n"
"string state\n"
"#input/output speed in MB/s\n"
"float32 input\n"
"float32 output\n"
"int32 mtu\n"
"#Data received/transmitted in MB\n"
"float32 received\n"
"float32 transmitted\n"
"int32 collisions\n"
"int32 rxError\n"
"int32 txError\n"
;
  }

  static const char* value(const ::system_monitor::NetStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::system_monitor::NetStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.time);
      stream.next(m.interfaces);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NetStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::system_monitor::NetStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::system_monitor::NetStatus_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
    s << indent << "time: ";
    Printer<float>::stream(s, indent + "  ", v.time);
    s << indent << "interfaces[]" << std::endl;
    for (size_t i = 0; i < v.interfaces.size(); ++i)
    {
      s << indent << "  interfaces[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::system_monitor::Interface_<ContainerAllocator> >::stream(s, indent + "    ", v.interfaces[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SYSTEM_MONITOR_MESSAGE_NETSTATUS_H