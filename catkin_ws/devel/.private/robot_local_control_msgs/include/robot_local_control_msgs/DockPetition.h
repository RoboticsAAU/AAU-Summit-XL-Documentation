// Generated by gencpp from file robot_local_control_msgs/DockPetition.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_DOCKPETITION_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_DOCKPETITION_H

#include <ros/service_traits.h>


#include <robot_local_control_msgs/DockPetitionRequest.h>
#include <robot_local_control_msgs/DockPetitionResponse.h>


namespace robot_local_control_msgs
{

struct DockPetition
{

typedef DockPetitionRequest Request;
typedef DockPetitionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DockPetition
} // namespace robot_local_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_local_control_msgs::DockPetition > {
  static const char* value()
  {
    return "527d1f8c4574e5ce72e1bde802a40e8c";
  }

  static const char* value(const ::robot_local_control_msgs::DockPetition&) { return value(); }
};

template<>
struct DataType< ::robot_local_control_msgs::DockPetition > {
  static const char* value()
  {
    return "robot_local_control_msgs/DockPetition";
  }

  static const char* value(const ::robot_local_control_msgs::DockPetition&) { return value(); }
};


// service_traits::MD5Sum< ::robot_local_control_msgs::DockPetitionRequest> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::DockPetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::DockPetitionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::DockPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::DockPetitionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::DockPetitionRequest> should match
// service_traits::DataType< ::robot_local_control_msgs::DockPetition >
template<>
struct DataType< ::robot_local_control_msgs::DockPetitionRequest>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::DockPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::DockPetitionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_local_control_msgs::DockPetitionResponse> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::DockPetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::DockPetitionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::DockPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::DockPetitionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::DockPetitionResponse> should match
// service_traits::DataType< ::robot_local_control_msgs::DockPetition >
template<>
struct DataType< ::robot_local_control_msgs::DockPetitionResponse>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::DockPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::DockPetitionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_DOCKPETITION_H