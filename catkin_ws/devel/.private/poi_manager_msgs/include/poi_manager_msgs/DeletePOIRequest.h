// Generated by gencpp from file poi_manager_msgs/DeletePOIRequest.msg
// DO NOT EDIT!


#ifndef POI_MANAGER_MSGS_MESSAGE_DELETEPOIREQUEST_H
#define POI_MANAGER_MSGS_MESSAGE_DELETEPOIREQUEST_H


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
struct DeletePOIRequest_
{
  typedef DeletePOIRequest_<ContainerAllocator> Type;

  DeletePOIRequest_()
    : name()
    , environment()  {
    }
  DeletePOIRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , environment(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _environment_type;
  _environment_type environment;





  typedef boost::shared_ptr< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DeletePOIRequest_

typedef ::poi_manager_msgs::DeletePOIRequest_<std::allocator<void> > DeletePOIRequest;

typedef boost::shared_ptr< ::poi_manager_msgs::DeletePOIRequest > DeletePOIRequestPtr;
typedef boost::shared_ptr< ::poi_manager_msgs::DeletePOIRequest const> DeletePOIRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator1> & lhs, const ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.environment == rhs.environment;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator1> & lhs, const ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace poi_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "18af20b519695e6d0b045fb50dc2d7b5";
  }

  static const char* value(const ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x18af20b519695e6dULL;
  static const uint64_t static_value2 = 0x0b045fb50dc2d7b5ULL;
};

template<class ContainerAllocator>
struct DataType< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "poi_manager_msgs/DeletePOIRequest";
  }

  static const char* value(const ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"string environment\n"
;
  }

  static const char* value(const ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.environment);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DeletePOIRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::poi_manager_msgs::DeletePOIRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "environment: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.environment);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POI_MANAGER_MSGS_MESSAGE_DELETEPOIREQUEST_H
