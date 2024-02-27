// Generated by gencpp from file robot_local_control_msgs/LeaveLift.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVELIFT_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVELIFT_H


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
struct LeaveLift_
{
  typedef LeaveLift_<ContainerAllocator> Type;

  LeaveLift_()
    : floor()  {
    }
  LeaveLift_(const ContainerAllocator& _alloc)
    : floor(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _floor_type;
  _floor_type floor;





  typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> const> ConstPtr;

}; // struct LeaveLift_

typedef ::robot_local_control_msgs::LeaveLift_<std::allocator<void> > LeaveLift;

typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveLift > LeaveLiftPtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::LeaveLift const> LeaveLiftConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::LeaveLift_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::LeaveLift_<ContainerAllocator2> & rhs)
{
  return lhs.floor == rhs.floor;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::LeaveLift_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::LeaveLift_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> >
{
  static const char* value()
  {
    return "080ca89808f79b4dda698c3815d2f4aa";
  }

  static const char* value(const ::robot_local_control_msgs::LeaveLift_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x080ca89808f79b4dULL;
  static const uint64_t static_value2 = 0xda698c3815d2f4aaULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/LeaveLift";
  }

  static const char* value(const ::robot_local_control_msgs::LeaveLift_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# valid values: floor_0, floor_1\n"
"string floor\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::LeaveLift_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.floor);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LeaveLift_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::LeaveLift_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::LeaveLift_<ContainerAllocator>& v)
  {
    s << indent << "floor: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.floor);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVELIFT_H