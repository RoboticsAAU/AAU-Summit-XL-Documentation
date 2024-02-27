// Generated by gencpp from file robot_local_control_msgs/SetEnvironment.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETENVIRONMENT_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETENVIRONMENT_H

#include <ros/service_traits.h>


#include <robot_local_control_msgs/SetEnvironmentRequest.h>
#include <robot_local_control_msgs/SetEnvironmentResponse.h>


namespace robot_local_control_msgs
{

struct SetEnvironment
{

typedef SetEnvironmentRequest Request;
typedef SetEnvironmentResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetEnvironment
} // namespace robot_local_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_local_control_msgs::SetEnvironment > {
  static const char* value()
  {
    return "4aa42c943cdd0b5692dc2dbb91c546f2";
  }

  static const char* value(const ::robot_local_control_msgs::SetEnvironment&) { return value(); }
};

template<>
struct DataType< ::robot_local_control_msgs::SetEnvironment > {
  static const char* value()
  {
    return "robot_local_control_msgs/SetEnvironment";
  }

  static const char* value(const ::robot_local_control_msgs::SetEnvironment&) { return value(); }
};


// service_traits::MD5Sum< ::robot_local_control_msgs::SetEnvironmentRequest> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::SetEnvironment >
template<>
struct MD5Sum< ::robot_local_control_msgs::SetEnvironmentRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::SetEnvironment >::value();
  }
  static const char* value(const ::robot_local_control_msgs::SetEnvironmentRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::SetEnvironmentRequest> should match
// service_traits::DataType< ::robot_local_control_msgs::SetEnvironment >
template<>
struct DataType< ::robot_local_control_msgs::SetEnvironmentRequest>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::SetEnvironment >::value();
  }
  static const char* value(const ::robot_local_control_msgs::SetEnvironmentRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_local_control_msgs::SetEnvironmentResponse> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::SetEnvironment >
template<>
struct MD5Sum< ::robot_local_control_msgs::SetEnvironmentResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::SetEnvironment >::value();
  }
  static const char* value(const ::robot_local_control_msgs::SetEnvironmentResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::SetEnvironmentResponse> should match
// service_traits::DataType< ::robot_local_control_msgs::SetEnvironment >
template<>
struct DataType< ::robot_local_control_msgs::SetEnvironmentResponse>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::SetEnvironment >::value();
  }
  static const char* value(const ::robot_local_control_msgs::SetEnvironmentResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETENVIRONMENT_H
