// Generated by gencpp from file system_monitor/Disk.msg
// DO NOT EDIT!


#ifndef SYSTEM_MONITOR_MESSAGE_DISK_H
#define SYSTEM_MONITOR_MESSAGE_DISK_H


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
struct Disk_
{
  typedef Disk_<ContainerAllocator> Type;

  Disk_()
    : id(0)
    , name()
    , status()
    , mount_point()
    , size(0.0)
    , available(0.0)
    , use(0.0)  {
    }
  Disk_(const ContainerAllocator& _alloc)
    : id(0)
    , name(_alloc)
    , status(_alloc)
    , mount_point(_alloc)
    , size(0.0)
    , available(0.0)
    , use(0.0)  {
  (void)_alloc;
    }



   typedef int8_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _mount_point_type;
  _mount_point_type mount_point;

   typedef float _size_type;
  _size_type size;

   typedef float _available_type;
  _available_type available;

   typedef float _use_type;
  _use_type use;





  typedef boost::shared_ptr< ::system_monitor::Disk_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::system_monitor::Disk_<ContainerAllocator> const> ConstPtr;

}; // struct Disk_

typedef ::system_monitor::Disk_<std::allocator<void> > Disk;

typedef boost::shared_ptr< ::system_monitor::Disk > DiskPtr;
typedef boost::shared_ptr< ::system_monitor::Disk const> DiskConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::system_monitor::Disk_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::system_monitor::Disk_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::system_monitor::Disk_<ContainerAllocator1> & lhs, const ::system_monitor::Disk_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.name == rhs.name &&
    lhs.status == rhs.status &&
    lhs.mount_point == rhs.mount_point &&
    lhs.size == rhs.size &&
    lhs.available == rhs.available &&
    lhs.use == rhs.use;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::system_monitor::Disk_<ContainerAllocator1> & lhs, const ::system_monitor::Disk_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace system_monitor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::system_monitor::Disk_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::system_monitor::Disk_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::system_monitor::Disk_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::system_monitor::Disk_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::system_monitor::Disk_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::system_monitor::Disk_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::system_monitor::Disk_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cc25b0e895c10714a4772bbf00a5fe43";
  }

  static const char* value(const ::system_monitor::Disk_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcc25b0e895c10714ULL;
  static const uint64_t static_value2 = 0xa4772bbf00a5fe43ULL;
};

template<class ContainerAllocator>
struct DataType< ::system_monitor::Disk_<ContainerAllocator> >
{
  static const char* value()
  {
    return "system_monitor/Disk";
  }

  static const char* value(const ::system_monitor::Disk_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::system_monitor::Disk_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 id\n"
"string name\n"
"string status\n"
"string mount_point\n"
"#Size of the disk in G\n"
"float32 size\n"
"float32 available\n"
"#% of total size used\n"
"float32 use\n"
;
  }

  static const char* value(const ::system_monitor::Disk_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::system_monitor::Disk_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.name);
      stream.next(m.status);
      stream.next(m.mount_point);
      stream.next(m.size);
      stream.next(m.available);
      stream.next(m.use);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Disk_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::system_monitor::Disk_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::system_monitor::Disk_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.id);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
    s << indent << "mount_point: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mount_point);
    s << indent << "size: ";
    Printer<float>::stream(s, indent + "  ", v.size);
    s << indent << "available: ";
    Printer<float>::stream(s, indent + "  ", v.available);
    s << indent << "use: ";
    Printer<float>::stream(s, indent + "  ", v.use);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SYSTEM_MONITOR_MESSAGE_DISK_H