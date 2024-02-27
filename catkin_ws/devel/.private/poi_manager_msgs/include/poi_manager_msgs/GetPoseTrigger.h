// Generated by gencpp from file poi_manager_msgs/GetPoseTrigger.msg
// DO NOT EDIT!


#ifndef POI_MANAGER_MSGS_MESSAGE_GETPOSETRIGGER_H
#define POI_MANAGER_MSGS_MESSAGE_GETPOSETRIGGER_H

#include <ros/service_traits.h>


#include <poi_manager_msgs/GetPoseTriggerRequest.h>
#include <poi_manager_msgs/GetPoseTriggerResponse.h>


namespace poi_manager_msgs
{

struct GetPoseTrigger
{

typedef GetPoseTriggerRequest Request;
typedef GetPoseTriggerResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetPoseTrigger
} // namespace poi_manager_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::poi_manager_msgs::GetPoseTrigger > {
  static const char* value()
  {
    return "8f0d03246ce395c1277b17dc21fa64a5";
  }

  static const char* value(const ::poi_manager_msgs::GetPoseTrigger&) { return value(); }
};

template<>
struct DataType< ::poi_manager_msgs::GetPoseTrigger > {
  static const char* value()
  {
    return "poi_manager_msgs/GetPoseTrigger";
  }

  static const char* value(const ::poi_manager_msgs::GetPoseTrigger&) { return value(); }
};


// service_traits::MD5Sum< ::poi_manager_msgs::GetPoseTriggerRequest> should match
// service_traits::MD5Sum< ::poi_manager_msgs::GetPoseTrigger >
template<>
struct MD5Sum< ::poi_manager_msgs::GetPoseTriggerRequest>
{
  static const char* value()
  {
    return MD5Sum< ::poi_manager_msgs::GetPoseTrigger >::value();
  }
  static const char* value(const ::poi_manager_msgs::GetPoseTriggerRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::poi_manager_msgs::GetPoseTriggerRequest> should match
// service_traits::DataType< ::poi_manager_msgs::GetPoseTrigger >
template<>
struct DataType< ::poi_manager_msgs::GetPoseTriggerRequest>
{
  static const char* value()
  {
    return DataType< ::poi_manager_msgs::GetPoseTrigger >::value();
  }
  static const char* value(const ::poi_manager_msgs::GetPoseTriggerRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::poi_manager_msgs::GetPoseTriggerResponse> should match
// service_traits::MD5Sum< ::poi_manager_msgs::GetPoseTrigger >
template<>
struct MD5Sum< ::poi_manager_msgs::GetPoseTriggerResponse>
{
  static const char* value()
  {
    return MD5Sum< ::poi_manager_msgs::GetPoseTrigger >::value();
  }
  static const char* value(const ::poi_manager_msgs::GetPoseTriggerResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::poi_manager_msgs::GetPoseTriggerResponse> should match
// service_traits::DataType< ::poi_manager_msgs::GetPoseTrigger >
template<>
struct DataType< ::poi_manager_msgs::GetPoseTriggerResponse>
{
  static const char* value()
  {
    return DataType< ::poi_manager_msgs::GetPoseTrigger >::value();
  }
  static const char* value(const ::poi_manager_msgs::GetPoseTriggerResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // POI_MANAGER_MSGS_MESSAGE_GETPOSETRIGGER_H