// Generated by gencpp from file system_monitor/Memory.msg
// DO NOT EDIT!


#ifndef SYSTEM_MONITOR_MESSAGE_MEMORY_H
#define SYSTEM_MONITOR_MESSAGE_MEMORY_H


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
struct Memory_
{
  typedef Memory_<ContainerAllocator> Type;

  Memory_()
    : name()
    , total(0)
    , used(0)
    , free(0)  {
    }
  Memory_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , total(0)
    , used(0)
    , free(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef int32_t _total_type;
  _total_type total;

   typedef int32_t _used_type;
  _used_type used;

   typedef int32_t _free_type;
  _free_type free;





  typedef boost::shared_ptr< ::system_monitor::Memory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::system_monitor::Memory_<ContainerAllocator> const> ConstPtr;

}; // struct Memory_

typedef ::system_monitor::Memory_<std::allocator<void> > Memory;

typedef boost::shared_ptr< ::system_monitor::Memory > MemoryPtr;
typedef boost::shared_ptr< ::system_monitor::Memory const> MemoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::system_monitor::Memory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::system_monitor::Memory_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::system_monitor::Memory_<ContainerAllocator1> & lhs, const ::system_monitor::Memory_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.total == rhs.total &&
    lhs.used == rhs.used &&
    lhs.free == rhs.free;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::system_monitor::Memory_<ContainerAllocator1> & lhs, const ::system_monitor::Memory_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace system_monitor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::system_monitor::Memory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::system_monitor::Memory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::system_monitor::Memory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::system_monitor::Memory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::system_monitor::Memory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::system_monitor::Memory_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::system_monitor::Memory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e76664714b587a3a9161519dc52642f6";
  }

  static const char* value(const ::system_monitor::Memory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe76664714b587a3aULL;
  static const uint64_t static_value2 = 0x9161519dc52642f6ULL;
};

template<class ContainerAllocator>
struct DataType< ::system_monitor::Memory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "system_monitor/Memory";
  }

  static const char* value(const ::system_monitor::Memory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::system_monitor::Memory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"#Memory space in M\n"
"#Physical w/o buffers total is zero\n"
"int32 total\n"
"int32 used\n"
"int32 free\n"
;
  }

  static const char* value(const ::system_monitor::Memory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::system_monitor::Memory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.total);
      stream.next(m.used);
      stream.next(m.free);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Memory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::system_monitor::Memory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::system_monitor::Memory_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "total: ";
    Printer<int32_t>::stream(s, indent + "  ", v.total);
    s << indent << "used: ";
    Printer<int32_t>::stream(s, indent + "  ", v.used);
    s << indent << "free: ";
    Printer<int32_t>::stream(s, indent + "  ", v.free);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SYSTEM_MONITOR_MESSAGE_MEMORY_H