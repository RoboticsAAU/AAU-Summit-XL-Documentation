// Generated by gencpp from file robot_local_control_msgs/MagneticPlace.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MAGNETICPLACE_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MAGNETICPLACE_H


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
struct MagneticPlace_
{
  typedef MagneticPlace_<ContainerAllocator> Type;

  MagneticPlace_()
    : cart_position(0)  {
    }
  MagneticPlace_(const ContainerAllocator& _alloc)
    : cart_position(0)  {
  (void)_alloc;
    }



   typedef uint32_t _cart_position_type;
  _cart_position_type cart_position;





  typedef boost::shared_ptr< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> const> ConstPtr;

}; // struct MagneticPlace_

typedef ::robot_local_control_msgs::MagneticPlace_<std::allocator<void> > MagneticPlace;

typedef boost::shared_ptr< ::robot_local_control_msgs::MagneticPlace > MagneticPlacePtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::MagneticPlace const> MagneticPlaceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator2> & rhs)
{
  return lhs.cart_position == rhs.cart_position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4da27e813bf08746398944b7800a7f75";
  }

  static const char* value(const ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4da27e813bf08746ULL;
  static const uint64_t static_value2 = 0x398944b7800a7f75ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/MagneticPlace";
  }

  static const char* value(const ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 cart_position\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cart_position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MagneticPlace_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::MagneticPlace_<ContainerAllocator>& v)
  {
    s << indent << "cart_position: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.cart_position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MAGNETICPLACE_H
