// Generated by gencpp from file robot_local_control_msgs/Uncharge.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_UNCHARGE_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_UNCHARGE_H


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
struct Uncharge_
{
  typedef Uncharge_<ContainerAllocator> Type;

  Uncharge_()
    : charge_station()  {
    }
  Uncharge_(const ContainerAllocator& _alloc)
    : charge_station(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _charge_station_type;
  _charge_station_type charge_station;





  typedef boost::shared_ptr< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> const> ConstPtr;

}; // struct Uncharge_

typedef ::robot_local_control_msgs::Uncharge_<std::allocator<void> > Uncharge;

typedef boost::shared_ptr< ::robot_local_control_msgs::Uncharge > UnchargePtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::Uncharge const> UnchargeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::Uncharge_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::Uncharge_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::Uncharge_<ContainerAllocator2> & rhs)
{
  return lhs.charge_station == rhs.charge_station;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::Uncharge_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::Uncharge_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "010959f65202c06bff3a36da5001d5c5";
  }

  static const char* value(const ::robot_local_control_msgs::Uncharge_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x010959f65202c06bULL;
  static const uint64_t static_value2 = 0xff3a36da5001d5c5ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/Uncharge";
  }

  static const char* value(const ::robot_local_control_msgs::Uncharge_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string charge_station\n"
"\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::Uncharge_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.charge_station);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Uncharge_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::Uncharge_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::Uncharge_<ContainerAllocator>& v)
  {
    s << indent << "charge_station: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.charge_station);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_UNCHARGE_H
