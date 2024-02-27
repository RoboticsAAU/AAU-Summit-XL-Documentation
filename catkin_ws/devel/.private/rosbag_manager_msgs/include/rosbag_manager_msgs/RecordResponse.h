// Generated by gencpp from file rosbag_manager_msgs/RecordResponse.msg
// DO NOT EDIT!


#ifndef ROSBAG_MANAGER_MSGS_MESSAGE_RECORDRESPONSE_H
#define ROSBAG_MANAGER_MSGS_MESSAGE_RECORDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosbag_manager_msgs
{
template <class ContainerAllocator>
struct RecordResponse_
{
  typedef RecordResponse_<ContainerAllocator> Type;

  RecordResponse_()
    : success(false)
    , message()  {
    }
  RecordResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RecordResponse_

typedef ::rosbag_manager_msgs::RecordResponse_<std::allocator<void> > RecordResponse;

typedef boost::shared_ptr< ::rosbag_manager_msgs::RecordResponse > RecordResponsePtr;
typedef boost::shared_ptr< ::rosbag_manager_msgs::RecordResponse const> RecordResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator1> & lhs, const ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator1> & lhs, const ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rosbag_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosbag_manager_msgs/RecordResponse";
  }

  static const char* value(const ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# returns 0 if ok, -1 otherwise\n"
"bool success\n"
"string message\n"
"\n"
;
  }

  static const char* value(const ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RecordResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosbag_manager_msgs::RecordResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSBAG_MANAGER_MSGS_MESSAGE_RECORDRESPONSE_H
