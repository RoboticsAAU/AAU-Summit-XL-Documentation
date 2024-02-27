// Generated by gencpp from file robot_local_control_msgs/LeaveMagneticGuide.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVEMAGNETICGUIDE_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVEMAGNETICGUIDE_H


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
struct LeaveMagneticGuide_
{
  typedef LeaveMagneticGuide_<ContainerAllocator> Type;

  LeaveMagneticGuide_()
    : turn_direction()  {
    }
  LeaveMagneticGuide_(const ContainerAllocator& _alloc)
    : turn_direction(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _turn_direction_type;
  _turn_direction_type turn_direction;





  typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> const> ConstPtr;

}; // struct LeaveMagneticGuide_

typedef ::robot_local_control_msgs::LeaveMagneticGuide_<std::allocator<void> > LeaveMagneticGuide;

typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveMagneticGuide > LeaveMagneticGuidePtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveMagneticGuide const> LeaveMagneticGuideConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator2> & rhs)
{
  return lhs.turn_direction == rhs.turn_direction;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b601e40d4e05ee7ec9ac6a6e0a8142c0";
  }

  static const char* value(const ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb601e40d4e05ee7eULL;
  static const uint64_t static_value2 = 0xc9ac6a6e0a8142c0ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/LeaveMagneticGuide";
  }

  static const char* value(const ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string turn_direction\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.turn_direction);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LeaveMagneticGuide_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::LeaveMagneticGuide_<ContainerAllocator>& v)
  {
    s << indent << "turn_direction: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.turn_direction);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVEMAGNETICGUIDE_H
