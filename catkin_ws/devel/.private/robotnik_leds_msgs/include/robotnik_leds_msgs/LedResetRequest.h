// Generated by gencpp from file robotnik_leds_msgs/LedResetRequest.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_LEDS_MSGS_MESSAGE_LEDRESETREQUEST_H
#define ROBOTNIK_LEDS_MSGS_MESSAGE_LEDRESETREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotnik_leds_msgs
{
template <class ContainerAllocator>
struct LedResetRequest_
{
  typedef LedResetRequest_<ContainerAllocator> Type;

  LedResetRequest_()
    : password()
    , reset(false)  {
    }
  LedResetRequest_(const ContainerAllocator& _alloc)
    : password(_alloc)
    , reset(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _password_type;
  _password_type password;

   typedef uint8_t _reset_type;
  _reset_type reset;





  typedef boost::shared_ptr< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LedResetRequest_

typedef ::robotnik_leds_msgs::LedResetRequest_<std::allocator<void> > LedResetRequest;

typedef boost::shared_ptr< ::robotnik_leds_msgs::LedResetRequest > LedResetRequestPtr;
typedef boost::shared_ptr< ::robotnik_leds_msgs::LedResetRequest const> LedResetRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator1> & lhs, const ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator2> & rhs)
{
  return lhs.password == rhs.password &&
    lhs.reset == rhs.reset;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator1> & lhs, const ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_leds_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "38b5eca572637ea335996a677152f609";
  }

  static const char* value(const ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x38b5eca572637ea3ULL;
  static const uint64_t static_value2 = 0x35996a677152f609ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_leds_msgs/LedResetRequest";
  }

  static const char* value(const ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string password  # Same password used on robotnik robots\n"
"bool   reset     # Flag to reset the hardware board\n"
;
  }

  static const char* value(const ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.password);
      stream.next(m.reset);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LedResetRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_leds_msgs::LedResetRequest_<ContainerAllocator>& v)
  {
    s << indent << "password: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.password);
    s << indent << "reset: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reset);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_LEDS_MSGS_MESSAGE_LEDRESETREQUEST_H