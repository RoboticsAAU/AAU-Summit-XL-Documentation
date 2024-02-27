// Generated by gencpp from file fake_joint_position_publisher/SetJointResponse.msg
// DO NOT EDIT!


#ifndef FAKE_JOINT_POSITION_PUBLISHER_MESSAGE_SETJOINTRESPONSE_H
#define FAKE_JOINT_POSITION_PUBLISHER_MESSAGE_SETJOINTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace fake_joint_position_publisher
{
template <class ContainerAllocator>
struct SetJointResponse_
{
  typedef SetJointResponse_<ContainerAllocator> Type;

  SetJointResponse_()
    : success(false)
    , message()  {
    }
  SetJointResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetJointResponse_

typedef ::fake_joint_position_publisher::SetJointResponse_<std::allocator<void> > SetJointResponse;

typedef boost::shared_ptr< ::fake_joint_position_publisher::SetJointResponse > SetJointResponsePtr;
typedef boost::shared_ptr< ::fake_joint_position_publisher::SetJointResponse const> SetJointResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator1> & lhs, const ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator1> & lhs, const ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fake_joint_position_publisher

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fake_joint_position_publisher/SetJointResponse";
  }

  static const char* value(const ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string message\n"
;
  }

  static const char* value(const ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetJointResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fake_joint_position_publisher::SetJointResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FAKE_JOINT_POSITION_PUBLISHER_MESSAGE_SETJOINTRESPONSE_H
