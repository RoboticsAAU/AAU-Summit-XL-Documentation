// Generated by gencpp from file robot_local_control_msgs/PostPlacePetition.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_POSTPLACEPETITION_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_POSTPLACEPETITION_H

#include <ros/service_traits.h>


#include <robot_local_control_msgs/PostPlacePetitionRequest.h>
#include <robot_local_control_msgs/PostPlacePetitionResponse.h>


namespace robot_local_control_msgs
{

struct PostPlacePetition
{

typedef PostPlacePetitionRequest Request;
typedef PostPlacePetitionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PostPlacePetition
} // namespace robot_local_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_local_control_msgs::PostPlacePetition > {
  static const char* value()
  {
    return "128b8c48c0209b2b9cf5cb28ef7c6494";
  }

  static const char* value(const ::robot_local_control_msgs::PostPlacePetition&) { return value(); }
};

template<>
struct DataType< ::robot_local_control_msgs::PostPlacePetition > {
  static const char* value()
  {
    return "robot_local_control_msgs/PostPlacePetition";
  }

  static const char* value(const ::robot_local_control_msgs::PostPlacePetition&) { return value(); }
};


// service_traits::MD5Sum< ::robot_local_control_msgs::PostPlacePetitionRequest> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::PostPlacePetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::PostPlacePetitionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::PostPlacePetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::PostPlacePetitionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::PostPlacePetitionRequest> should match
// service_traits::DataType< ::robot_local_control_msgs::PostPlacePetition >
template<>
struct DataType< ::robot_local_control_msgs::PostPlacePetitionRequest>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::PostPlacePetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::PostPlacePetitionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_local_control_msgs::PostPlacePetitionResponse> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::PostPlacePetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::PostPlacePetitionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::PostPlacePetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::PostPlacePetitionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::PostPlacePetitionResponse> should match
// service_traits::DataType< ::robot_local_control_msgs::PostPlacePetition >
template<>
struct DataType< ::robot_local_control_msgs::PostPlacePetitionResponse>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::PostPlacePetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::PostPlacePetitionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_POSTPLACEPETITION_H
