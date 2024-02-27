// Generated by gencpp from file robot_local_control_msgs/LeaveShower.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVESHOWER_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVESHOWER_H


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
struct LeaveShower_
{
  typedef LeaveShower_<ContainerAllocator> Type;

  LeaveShower_()
    : from()
    , door()  {
    }
  LeaveShower_(const ContainerAllocator& _alloc)
    : from(_alloc)
    , door(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _from_type;
  _from_type from;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _door_type;
  _door_type door;





  typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> const> ConstPtr;

}; // struct LeaveShower_

typedef ::robot_local_control_msgs::LeaveShower_<std::allocator<void> > LeaveShower;

typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveShower > LeaveShowerPtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveShower const> LeaveShowerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::LeaveShower_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::LeaveShower_<ContainerAllocator2> & rhs)
{
  return lhs.from == rhs.from &&
    lhs.door == rhs.door;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::LeaveShower_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::LeaveShower_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9cc80ebefcfb199be1c6890e9744d51c";
  }

  static const char* value(const ::robot_local_control_msgs::LeaveShower_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9cc80ebefcfb199bULL;
  static const uint64_t static_value2 = 0xe1c6890e9744d51cULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/LeaveShower";
  }

  static const char* value(const ::robot_local_control_msgs::LeaveShower_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# valid values: warehouse, production\n"
"string from\n"
"# valid values: left, right, as seen from warehouse side\n"
"string door\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::LeaveShower_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.from);
      stream.next(m.door);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LeaveShower_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::LeaveShower_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::LeaveShower_<ContainerAllocator>& v)
  {
    s << indent << "from: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.from);
    s << indent << "door: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.door);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVESHOWER_H