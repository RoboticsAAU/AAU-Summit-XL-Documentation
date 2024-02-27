// Generated by gencpp from file robot_simple_command_manager_msgs/EventScheduler.msg
// DO NOT EDIT!


#ifndef ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_EVENTSCHEDULER_H
#define ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_EVENTSCHEDULER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_simple_command_manager_msgs
{
template <class ContainerAllocator>
struct EventScheduler_
{
  typedef EventScheduler_<ContainerAllocator> Type;

  EventScheduler_()
    : id()
    , wk()
    , date_start()
    , date_end()
    , hour(0)
    , minute(0)
    , repeat_hour(0)
    , enabled(false)
    , commands()  {
    }
  EventScheduler_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , wk(_alloc)
    , date_start(_alloc)
    , date_end(_alloc)
    , hour(0)
    , minute(0)
    , repeat_hour(0)
    , enabled(false)
    , commands(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _wk_type;
  _wk_type wk;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _date_start_type;
  _date_start_type date_start;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _date_end_type;
  _date_end_type date_end;

   typedef int32_t _hour_type;
  _hour_type hour;

   typedef int32_t _minute_type;
  _minute_type minute;

   typedef int32_t _repeat_hour_type;
  _repeat_hour_type repeat_hour;

   typedef uint8_t _enabled_type;
  _enabled_type enabled;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _commands_type;
  _commands_type commands;





  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> const> ConstPtr;

}; // struct EventScheduler_

typedef ::robot_simple_command_manager_msgs::EventScheduler_<std::allocator<void> > EventScheduler;

typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::EventScheduler > EventSchedulerPtr;
typedef boost::shared_ptr< ::robot_simple_command_manager_msgs::EventScheduler const> EventSchedulerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.wk == rhs.wk &&
    lhs.date_start == rhs.date_start &&
    lhs.date_end == rhs.date_end &&
    lhs.hour == rhs.hour &&
    lhs.minute == rhs.minute &&
    lhs.repeat_hour == rhs.repeat_hour &&
    lhs.enabled == rhs.enabled &&
    lhs.commands == rhs.commands;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator1> & lhs, const ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_simple_command_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> >
{
  static const char* value()
  {
    return "27881408b237c4e879319551ad0eebe8";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x27881408b237c4e8ULL;
  static const uint64_t static_value2 = 0x79319551ad0eebe8ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_simple_command_manager_msgs/EventScheduler";
  }

  static const char* value(const ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string id\n"
"int32[] wk\n"
"string date_start\n"
"string date_end\n"
"int32 hour\n"
"int32 minute\n"
"int32 repeat_hour\n"
"bool enabled\n"
"string commands\n"
"\n"
;
  }

  static const char* value(const ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.wk);
      stream.next(m.date_start);
      stream.next(m.date_end);
      stream.next(m.hour);
      stream.next(m.minute);
      stream.next(m.repeat_hour);
      stream.next(m.enabled);
      stream.next(m.commands);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EventScheduler_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_simple_command_manager_msgs::EventScheduler_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
    s << indent << "wk[]" << std::endl;
    for (size_t i = 0; i < v.wk.size(); ++i)
    {
      s << indent << "  wk[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.wk[i]);
    }
    s << indent << "date_start: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.date_start);
    s << indent << "date_end: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.date_end);
    s << indent << "hour: ";
    Printer<int32_t>::stream(s, indent + "  ", v.hour);
    s << indent << "minute: ";
    Printer<int32_t>::stream(s, indent + "  ", v.minute);
    s << indent << "repeat_hour: ";
    Printer<int32_t>::stream(s, indent + "  ", v.repeat_hour);
    s << indent << "enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enabled);
    s << indent << "commands: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.commands);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SIMPLE_COMMAND_MANAGER_MSGS_MESSAGE_EVENTSCHEDULER_H