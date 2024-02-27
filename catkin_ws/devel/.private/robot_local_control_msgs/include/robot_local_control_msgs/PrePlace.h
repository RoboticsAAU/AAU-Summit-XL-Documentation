// Generated by gencpp from file robot_local_control_msgs/PrePlace.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_PREPLACE_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_PREPLACE_H


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
struct PrePlace_
{
  typedef PrePlace_<ContainerAllocator> Type;

  PrePlace_()
    : maximum_distance(0.0)
    , lane(0)
    , turn_direction()  {
    }
  PrePlace_(const ContainerAllocator& _alloc)
    : maximum_distance(0.0)
    , lane(0)
    , turn_direction(_alloc)  {
  (void)_alloc;
    }



   typedef double _maximum_distance_type;
  _maximum_distance_type maximum_distance;

   typedef uint32_t _lane_type;
  _lane_type lane;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _turn_direction_type;
  _turn_direction_type turn_direction;





  typedef boost::shared_ptr< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> const> ConstPtr;

}; // struct PrePlace_

typedef ::robot_local_control_msgs::PrePlace_<std::allocator<void> > PrePlace;

typedef boost::shared_ptr< ::robot_local_control_msgs::PrePlace > PrePlacePtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::PrePlace const> PrePlaceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::PrePlace_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::PrePlace_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::PrePlace_<ContainerAllocator2> & rhs)
{
  return lhs.maximum_distance == rhs.maximum_distance &&
    lhs.lane == rhs.lane &&
    lhs.turn_direction == rhs.turn_direction;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::PrePlace_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::PrePlace_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bc102ad06e887e984d9cfa136a66cf43";
  }

  static const char* value(const ::robot_local_control_msgs::PrePlace_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbc102ad06e887e98ULL;
  static const uint64_t static_value2 = 0x4d9cfa136a66cf43ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/PrePlace";
  }

  static const char* value(const ::robot_local_control_msgs::PrePlace_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 maximum_distance\n"
"uint32 lane\n"
"string turn_direction\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::PrePlace_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.maximum_distance);
      stream.next(m.lane);
      stream.next(m.turn_direction);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PrePlace_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::PrePlace_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::PrePlace_<ContainerAllocator>& v)
  {
    s << indent << "maximum_distance: ";
    Printer<double>::stream(s, indent + "  ", v.maximum_distance);
    s << indent << "lane: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.lane);
    s << indent << "turn_direction: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.turn_direction);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_PREPLACE_H