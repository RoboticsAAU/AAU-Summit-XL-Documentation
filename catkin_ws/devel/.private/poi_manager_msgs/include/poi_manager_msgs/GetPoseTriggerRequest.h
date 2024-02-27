// Generated by gencpp from file poi_manager_msgs/GetPoseTriggerRequest.msg
// DO NOT EDIT!


#ifndef POI_MANAGER_MSGS_MESSAGE_GETPOSETRIGGERREQUEST_H
#define POI_MANAGER_MSGS_MESSAGE_GETPOSETRIGGERREQUEST_H


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
struct GetPoseTriggerRequest_
{
  typedef GetPoseTriggerRequest_<ContainerAllocator> Type;

  GetPoseTriggerRequest_()
    {
    }
  GetPoseTriggerRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetPoseTriggerRequest_

typedef ::poi_manager_msgs::GetPoseTriggerRequest_<std::allocator<void> > GetPoseTriggerRequest;

typedef boost::shared_ptr< ::poi_manager_msgs::GetPoseTriggerRequest > GetPoseTriggerRequestPtr;
typedef boost::shared_ptr< ::poi_manager_msgs::GetPoseTriggerRequest const> GetPoseTriggerRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace poi_manager_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "poi_manager_msgs/GetPoseTriggerRequest";
  }

  static const char* value(const ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPoseTriggerRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::poi_manager_msgs::GetPoseTriggerRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // POI_MANAGER_MSGS_MESSAGE_GETPOSETRIGGERREQUEST_H