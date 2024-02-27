// Generated by gencpp from file robotnik_rms_msgs/status.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_RMS_MSGS_MESSAGE_STATUS_H
#define ROBOTNIK_RMS_MSGS_MESSAGE_STATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotnik_rms_msgs
{
template <class ContainerAllocator>
struct status_
{
  typedef status_<ContainerAllocator> Type;

  status_()
    : current_status(0)
    , description()
    , message()
    , mission_queue()  {
    }
  status_(const ContainerAllocator& _alloc)
    : current_status(0)
    , description(_alloc)
    , message(_alloc)
    , mission_queue(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _current_status_type;
  _current_status_type current_status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _description_type;
  _description_type description;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _mission_queue_type;
  _mission_queue_type mission_queue;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(CURRENT_STATUS_ERROR)
  #undef CURRENT_STATUS_ERROR
#endif
#if defined(_WIN32) && defined(CURRENT_STATUS_PREIDLE)
  #undef CURRENT_STATUS_PREIDLE
#endif
#if defined(_WIN32) && defined(CURRENT_STATUS_IDLE)
  #undef CURRENT_STATUS_IDLE
#endif
#if defined(_WIN32) && defined(CURRENT_STATUS_CHARGING_MISSION)
  #undef CURRENT_STATUS_CHARGING_MISSION
#endif
#if defined(_WIN32) && defined(CURRENT_STATUS_EXECUTING_MISSION)
  #undef CURRENT_STATUS_EXECUTING_MISSION
#endif
#if defined(_WIN32) && defined(CURRENT_STATUS_PAUSE_MISSION)
  #undef CURRENT_STATUS_PAUSE_MISSION
#endif
#if defined(_WIN32) && defined(CURRENT_STATUS_CANCEL_MISSION)
  #undef CURRENT_STATUS_CANCEL_MISSION
#endif

  enum {
    CURRENT_STATUS_ERROR = -1,
    CURRENT_STATUS_PREIDLE = 0,
    CURRENT_STATUS_IDLE = 1,
    CURRENT_STATUS_CHARGING_MISSION = 2,
    CURRENT_STATUS_EXECUTING_MISSION = 3,
    CURRENT_STATUS_PAUSE_MISSION = 4,
    CURRENT_STATUS_CANCEL_MISSION = 5,
  };


  typedef boost::shared_ptr< ::robotnik_rms_msgs::status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_rms_msgs::status_<ContainerAllocator> const> ConstPtr;

}; // struct status_

typedef ::robotnik_rms_msgs::status_<std::allocator<void> > status;

typedef boost::shared_ptr< ::robotnik_rms_msgs::status > statusPtr;
typedef boost::shared_ptr< ::robotnik_rms_msgs::status const> statusConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_rms_msgs::status_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_rms_msgs::status_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_rms_msgs::status_<ContainerAllocator1> & lhs, const ::robotnik_rms_msgs::status_<ContainerAllocator2> & rhs)
{
  return lhs.current_status == rhs.current_status &&
    lhs.description == rhs.description &&
    lhs.message == rhs.message &&
    lhs.mission_queue == rhs.mission_queue;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_rms_msgs::status_<ContainerAllocator1> & lhs, const ::robotnik_rms_msgs::status_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_rms_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_rms_msgs::status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_rms_msgs::status_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_rms_msgs::status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_rms_msgs::status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_rms_msgs::status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_rms_msgs::status_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_rms_msgs::status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5509b20dd1c7bf7cdd887ab3ce4eec0b";
  }

  static const char* value(const ::robotnik_rms_msgs::status_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5509b20dd1c7bf7cULL;
  static const uint64_t static_value2 = 0xdd887ab3ce4eec0bULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_rms_msgs::status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_rms_msgs/status";
  }

  static const char* value(const ::robotnik_rms_msgs::status_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_rms_msgs::status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 CURRENT_STATUS_ERROR = -1\n"
"int32 CURRENT_STATUS_PREIDLE = 0\n"
"int32 CURRENT_STATUS_IDLE = 1\n"
"int32 CURRENT_STATUS_CHARGING_MISSION = 2\n"
"int32 CURRENT_STATUS_EXECUTING_MISSION = 3\n"
"int32 CURRENT_STATUS_PAUSE_MISSION=4\n"
"int32 CURRENT_STATUS_CANCEL_MISSION=5\n"
"\n"
"int32 current_status\n"
"string description\n"
"string message\n"
"string[] mission_queue\n"
;
  }

  static const char* value(const ::robotnik_rms_msgs::status_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_rms_msgs::status_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_status);
      stream.next(m.description);
      stream.next(m.message);
      stream.next(m.mission_queue);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct status_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_rms_msgs::status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_rms_msgs::status_<ContainerAllocator>& v)
  {
    s << indent << "current_status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.current_status);
    s << indent << "description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.description);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "mission_queue[]" << std::endl;
    for (size_t i = 0; i < v.mission_queue.size(); ++i)
    {
      s << indent << "  mission_queue[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mission_queue[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_RMS_MSGS_MESSAGE_STATUS_H
