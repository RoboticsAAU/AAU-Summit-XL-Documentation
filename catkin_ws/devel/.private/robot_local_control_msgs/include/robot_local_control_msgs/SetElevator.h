// Generated by gencpp from file robot_local_control_msgs/SetElevator.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETELEVATOR_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETELEVATOR_H


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
struct SetElevator_
{
  typedef SetElevator_<ContainerAllocator> Type;

  SetElevator_()
    : height(0.0)  {
    }
  SetElevator_(const ContainerAllocator& _alloc)
    : height(0.0)  {
  (void)_alloc;
    }



   typedef float _height_type;
  _height_type height;





  typedef boost::shared_ptr< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> const> ConstPtr;

}; // struct SetElevator_

typedef ::robot_local_control_msgs::SetElevator_<std::allocator<void> > SetElevator;

typedef boost::shared_ptr< ::robot_local_control_msgs::SetElevator > SetElevatorPtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::SetElevator const> SetElevatorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::SetElevator_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::SetElevator_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::SetElevator_<ContainerAllocator2> & rhs)
{
  return lhs.height == rhs.height;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::SetElevator_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::SetElevator_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "384d8dd5cbcb4f6e145e6b246fa635b2";
  }

  static const char* value(const ::robot_local_control_msgs::SetElevator_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x384d8dd5cbcb4f6eULL;
  static const uint64_t static_value2 = 0x145e6b246fa635b2ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/SetElevator";
  }

  static const char* value(const ::robot_local_control_msgs::SetElevator_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 height\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::SetElevator_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetElevator_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::SetElevator_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::SetElevator_<ContainerAllocator>& v)
  {
    s << indent << "height: ";
    Printer<float>::stream(s, indent + "  ", v.height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETELEVATOR_H
