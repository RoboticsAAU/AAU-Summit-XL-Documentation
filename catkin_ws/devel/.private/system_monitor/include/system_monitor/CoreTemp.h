// Generated by gencpp from file system_monitor/CoreTemp.msg
// DO NOT EDIT!


#ifndef SYSTEM_MONITOR_MESSAGE_CORETEMP_H
#define SYSTEM_MONITOR_MESSAGE_CORETEMP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace system_monitor
{
template <class ContainerAllocator>
struct CoreTemp_
{
  typedef CoreTemp_<ContainerAllocator> Type;

  CoreTemp_()
    : id(0)
    , temp(0.0)  {
    }
  CoreTemp_(const ContainerAllocator& _alloc)
    : id(0)
    , temp(0.0)  {
  (void)_alloc;
    }



   typedef int8_t _id_type;
  _id_type id;

   typedef float _temp_type;
  _temp_type temp;





  typedef boost::shared_ptr< ::system_monitor::CoreTemp_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::system_monitor::CoreTemp_<ContainerAllocator> const> ConstPtr;

}; // struct CoreTemp_

typedef ::system_monitor::CoreTemp_<std::allocator<void> > CoreTemp;

typedef boost::shared_ptr< ::system_monitor::CoreTemp > CoreTempPtr;
typedef boost::shared_ptr< ::system_monitor::CoreTemp const> CoreTempConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::system_monitor::CoreTemp_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::system_monitor::CoreTemp_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::system_monitor::CoreTemp_<ContainerAllocator1> & lhs, const ::system_monitor::CoreTemp_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.temp == rhs.temp;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::system_monitor::CoreTemp_<ContainerAllocator1> & lhs, const ::system_monitor::CoreTemp_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace system_monitor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::system_monitor::CoreTemp_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::system_monitor::CoreTemp_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::system_monitor::CoreTemp_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::system_monitor::CoreTemp_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::system_monitor::CoreTemp_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::system_monitor::CoreTemp_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::system_monitor::CoreTemp_<ContainerAllocator> >
{
  static const char* value()
  {
    return "77a1d734d3f9b0295efc9c0e8dbc0be8";
  }

  static const char* value(const ::system_monitor::CoreTemp_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x77a1d734d3f9b029ULL;
  static const uint64_t static_value2 = 0x5efc9c0e8dbc0be8ULL;
};

template<class ContainerAllocator>
struct DataType< ::system_monitor::CoreTemp_<ContainerAllocator> >
{
  static const char* value()
  {
    return "system_monitor/CoreTemp";
  }

  static const char* value(const ::system_monitor::CoreTemp_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::system_monitor::CoreTemp_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 id\n"
"#Temperature of the core in DegC\n"
"float32 temp\n"
;
  }

  static const char* value(const ::system_monitor::CoreTemp_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::system_monitor::CoreTemp_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.temp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CoreTemp_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::system_monitor::CoreTemp_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::system_monitor::CoreTemp_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.id);
    s << indent << "temp: ";
    Printer<float>::stream(s, indent + "  ", v.temp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SYSTEM_MONITOR_MESSAGE_CORETEMP_H
