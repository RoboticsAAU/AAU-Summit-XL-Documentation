// Generated by gencpp from file system_monitor/DiagnosticMEM.msg
// DO NOT EDIT!


#ifndef SYSTEM_MONITOR_MESSAGE_DIAGNOSTICMEM_H
#define SYSTEM_MONITOR_MESSAGE_DIAGNOSTICMEM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <system_monitor/MEMStatus.h>

namespace system_monitor
{
template <class ContainerAllocator>
struct DiagnosticMEM_
{
  typedef DiagnosticMEM_<ContainerAllocator> Type;

  DiagnosticMEM_()
    : name()
    , message()
    , hardware_id()
    , status()  {
    }
  DiagnosticMEM_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , message(_alloc)
    , hardware_id(_alloc)
    , status(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _hardware_id_type;
  _hardware_id_type hardware_id;

   typedef  ::system_monitor::MEMStatus_<ContainerAllocator>  _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::system_monitor::DiagnosticMEM_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::system_monitor::DiagnosticMEM_<ContainerAllocator> const> ConstPtr;

}; // struct DiagnosticMEM_

typedef ::system_monitor::DiagnosticMEM_<std::allocator<void> > DiagnosticMEM;

typedef boost::shared_ptr< ::system_monitor::DiagnosticMEM > DiagnosticMEMPtr;
typedef boost::shared_ptr< ::system_monitor::DiagnosticMEM const> DiagnosticMEMConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::system_monitor::DiagnosticMEM_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::system_monitor::DiagnosticMEM_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::system_monitor::DiagnosticMEM_<ContainerAllocator1> & lhs, const ::system_monitor::DiagnosticMEM_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.message == rhs.message &&
    lhs.hardware_id == rhs.hardware_id &&
    lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::system_monitor::DiagnosticMEM_<ContainerAllocator1> & lhs, const ::system_monitor::DiagnosticMEM_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace system_monitor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::system_monitor::DiagnosticMEM_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::system_monitor::DiagnosticMEM_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::system_monitor::DiagnosticMEM_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::system_monitor::DiagnosticMEM_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::system_monitor::DiagnosticMEM_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::system_monitor::DiagnosticMEM_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::system_monitor::DiagnosticMEM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9a7708ed1ceb219163714c922989f99f";
  }

  static const char* value(const ::system_monitor::DiagnosticMEM_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9a7708ed1ceb2191ULL;
  static const uint64_t static_value2 = 0x63714c922989f99fULL;
};

template<class ContainerAllocator>
struct DataType< ::system_monitor::DiagnosticMEM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "system_monitor/DiagnosticMEM";
  }

  static const char* value(const ::system_monitor::DiagnosticMEM_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::system_monitor::DiagnosticMEM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"# Possible values for message: 'OK', 'Warning','Error'\n"
"string message\n"
"string hardware_id\n"
"system_monitor/MEMStatus status\n"
"================================================================================\n"
"MSG: system_monitor/MEMStatus\n"
"float32 time\n"
"system_monitor/Memory[] memories\n"
"#Memory space in M\n"
"int32 totalM\n"
"int32 usedM\n"
"int32 freeM\n"
"================================================================================\n"
"MSG: system_monitor/Memory\n"
"string name\n"
"#Memory space in M\n"
"#Physical w/o buffers total is zero\n"
"int32 total\n"
"int32 used\n"
"int32 free\n"
;
  }

  static const char* value(const ::system_monitor::DiagnosticMEM_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::system_monitor::DiagnosticMEM_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.message);
      stream.next(m.hardware_id);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DiagnosticMEM_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::system_monitor::DiagnosticMEM_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::system_monitor::DiagnosticMEM_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "hardware_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.hardware_id);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::system_monitor::MEMStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SYSTEM_MONITOR_MESSAGE_DIAGNOSTICMEM_H
