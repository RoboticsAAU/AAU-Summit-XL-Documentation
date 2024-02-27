// Generated by gencpp from file poi_manager_msgs/GetPOIsResponse.msg
// DO NOT EDIT!


#ifndef POI_MANAGER_MSGS_MESSAGE_GETPOISRESPONSE_H
#define POI_MANAGER_MSGS_MESSAGE_GETPOISRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <poi_manager_msgs/LabeledPose.h>

namespace poi_manager_msgs
{
template <class ContainerAllocator>
struct GetPOIsResponse_
{
  typedef GetPOIsResponse_<ContainerAllocator> Type;

  GetPOIsResponse_()
    : success(false)
    , message()
    , p_list()  {
    }
  GetPOIsResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)
    , p_list(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef std::vector< ::poi_manager_msgs::LabeledPose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::poi_manager_msgs::LabeledPose_<ContainerAllocator> >::other >  _p_list_type;
  _p_list_type p_list;





  typedef boost::shared_ptr< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetPOIsResponse_

typedef ::poi_manager_msgs::GetPOIsResponse_<std::allocator<void> > GetPOIsResponse;

typedef boost::shared_ptr< ::poi_manager_msgs::GetPOIsResponse > GetPOIsResponsePtr;
typedef boost::shared_ptr< ::poi_manager_msgs::GetPOIsResponse const> GetPOIsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator1> & lhs, const ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message &&
    lhs.p_list == rhs.p_list;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator1> & lhs, const ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace poi_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1d28babae2da69009f04ad121b9669da";
  }

  static const char* value(const ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1d28babae2da6900ULL;
  static const uint64_t static_value2 = 0x9f04ad121b9669daULL;
};

template<class ContainerAllocator>
struct DataType< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "poi_manager_msgs/GetPOIsResponse";
  }

  static const char* value(const ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string message\n"
"poi_manager_msgs/LabeledPose[] p_list\n"
"\n"
"================================================================================\n"
"MSG: poi_manager_msgs/LabeledPose\n"
"string name\n"
"string environment\n"
"string params\n"
"string frame_id\n"
"geometry_msgs/Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
      stream.next(m.p_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPOIsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::poi_manager_msgs::GetPOIsResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "p_list[]" << std::endl;
    for (size_t i = 0; i < v.p_list.size(); ++i)
    {
      s << indent << "  p_list[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::poi_manager_msgs::LabeledPose_<ContainerAllocator> >::stream(s, indent + "    ", v.p_list[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // POI_MANAGER_MSGS_MESSAGE_GETPOISRESPONSE_H