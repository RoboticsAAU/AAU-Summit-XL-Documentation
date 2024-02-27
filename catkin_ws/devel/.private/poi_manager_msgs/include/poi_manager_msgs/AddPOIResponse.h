// Generated by gencpp from file poi_manager_msgs/AddPOIResponse.msg
// DO NOT EDIT!


#ifndef POI_MANAGER_MSGS_MESSAGE_ADDPOIRESPONSE_H
#define POI_MANAGER_MSGS_MESSAGE_ADDPOIRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace poi_manager_msgs
{
template <class ContainerAllocator>
struct AddPOIResponse_
{
  typedef AddPOIResponse_<ContainerAllocator> Type;

  AddPOIResponse_()
    : success(false)
    , message()  {
    }
  AddPOIResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> const> ConstPtr;

}; // struct AddPOIResponse_

typedef ::poi_manager_msgs::AddPOIResponse_<std::allocator<void> > AddPOIResponse;

typedef boost::shared_ptr< ::poi_manager_msgs::AddPOIResponse > AddPOIResponsePtr;
typedef boost::shared_ptr< ::poi_manager_msgs::AddPOIResponse const> AddPOIResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator1> & lhs, const ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator1> & lhs, const ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace poi_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "poi_manager_msgs/AddPOIResponse";
  }

  static const char* value(const ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string message\n"
"\n"
;
  }

  static const char* value(const ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddPOIResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::poi_manager_msgs::AddPOIResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POI_MANAGER_MSGS_MESSAGE_ADDPOIRESPONSE_H
