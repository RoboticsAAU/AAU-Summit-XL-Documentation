// Generated by gencpp from file robotnik_navigation_msgs/PoseStampedArray.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_NAVIGATION_MSGS_MESSAGE_POSESTAMPEDARRAY_H
#define ROBOTNIK_NAVIGATION_MSGS_MESSAGE_POSESTAMPEDARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/PoseStamped.h>

namespace robotnik_navigation_msgs
{
template <class ContainerAllocator>
struct PoseStampedArray_
{
  typedef PoseStampedArray_<ContainerAllocator> Type;

  PoseStampedArray_()
    : header()
    , poses()  {
    }
  PoseStampedArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , poses(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::geometry_msgs::PoseStamped_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::other >  _poses_type;
  _poses_type poses;





  typedef boost::shared_ptr< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> const> ConstPtr;

}; // struct PoseStampedArray_

typedef ::robotnik_navigation_msgs::PoseStampedArray_<std::allocator<void> > PoseStampedArray;

typedef boost::shared_ptr< ::robotnik_navigation_msgs::PoseStampedArray > PoseStampedArrayPtr;
typedef boost::shared_ptr< ::robotnik_navigation_msgs::PoseStampedArray const> PoseStampedArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator1> & lhs, const ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.poses == rhs.poses;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator1> & lhs, const ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_navigation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6227e2b7e9cce15051f669a5e197bbf7";
  }

  static const char* value(const ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6227e2b7e9cce150ULL;
  static const uint64_t static_value2 = 0x51f669a5e197bbf7ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_navigation_msgs/PoseStampedArray";
  }

  static const char* value(const ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# An array of poses with a header for global reference.\n"
"\n"
"Header header\n"
"\n"
"geometry_msgs/PoseStamped[] poses\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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

  static const char* value(const ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.poses);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PoseStampedArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_navigation_msgs::PoseStampedArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "poses[]" << std::endl;
    for (size_t i = 0; i < v.poses.size(); ++i)
    {
      s << indent << "  poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "    ", v.poses[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_NAVIGATION_MSGS_MESSAGE_POSESTAMPEDARRAY_H