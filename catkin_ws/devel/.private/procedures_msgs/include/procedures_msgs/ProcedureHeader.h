// Generated by gencpp from file procedures_msgs/ProcedureHeader.msg
// DO NOT EDIT!


#ifndef PROCEDURES_MSGS_MESSAGE_PROCEDUREHEADER_H
#define PROCEDURES_MSGS_MESSAGE_PROCEDUREHEADER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace procedures_msgs
{
template <class ContainerAllocator>
struct ProcedureHeader_
{
  typedef ProcedureHeader_<ContainerAllocator> Type;

  ProcedureHeader_()
    : id(0)
    , priority(0)
    , stamp()
    , name()  {
    }
  ProcedureHeader_(const ContainerAllocator& _alloc)
    : id(0)
    , priority(0)
    , stamp()
    , name(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef int32_t _priority_type;
  _priority_type priority;

   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> const> ConstPtr;

}; // struct ProcedureHeader_

typedef ::procedures_msgs::ProcedureHeader_<std::allocator<void> > ProcedureHeader;

typedef boost::shared_ptr< ::procedures_msgs::ProcedureHeader > ProcedureHeaderPtr;
typedef boost::shared_ptr< ::procedures_msgs::ProcedureHeader const> ProcedureHeaderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::procedures_msgs::ProcedureHeader_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::procedures_msgs::ProcedureHeader_<ContainerAllocator1> & lhs, const ::procedures_msgs::ProcedureHeader_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.priority == rhs.priority &&
    lhs.stamp == rhs.stamp &&
    lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::procedures_msgs::ProcedureHeader_<ContainerAllocator1> & lhs, const ::procedures_msgs::ProcedureHeader_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace procedures_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "493985fca0cdb1fdc9c962db09efe534";
  }

  static const char* value(const ::procedures_msgs::ProcedureHeader_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x493985fca0cdb1fdULL;
  static const uint64_t static_value2 = 0xc9c962db09efe534ULL;
};

template<class ContainerAllocator>
struct DataType< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "procedures_msgs/ProcedureHeader";
  }

  static const char* value(const ::procedures_msgs::ProcedureHeader_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# id: identifies the procedure in the robot context.\n"
"# user should do not set this, but the proceduremanager\n"
"# TODO: may be replaced with uuid_msgs/UniqueID.\n"
"int32 id\n"
"# priority: priority of the current procedure. used in case procedure preemption is allowed\n"
"int32 priority\n"
"# stamp: timestamp when procedure was started.\n"
"# may be used by the procedure manager.\n"
"time stamp\n"
"# name: human readable identificator.\n"
"# set by the user, can be empty\n"
"# not used by the procedure manager to identify the procedure\n"
"string name\n"
;
  }

  static const char* value(const ::procedures_msgs::ProcedureHeader_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.priority);
      stream.next(m.stamp);
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ProcedureHeader_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::procedures_msgs::ProcedureHeader_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::procedures_msgs::ProcedureHeader_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "priority: ";
    Printer<int32_t>::stream(s, indent + "  ", v.priority);
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PROCEDURES_MSGS_MESSAGE_PROCEDUREHEADER_H