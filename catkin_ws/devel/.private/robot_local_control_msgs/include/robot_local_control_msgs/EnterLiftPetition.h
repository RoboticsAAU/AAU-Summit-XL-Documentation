// Generated by gencpp from file robot_local_control_msgs/EnterLiftPetition.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_ENTERLIFTPETITION_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_ENTERLIFTPETITION_H

#include <ros/service_traits.h>


#include <robot_local_control_msgs/EnterLiftPetitionRequest.h>
#include <robot_local_control_msgs/EnterLiftPetitionResponse.h>


namespace robot_local_control_msgs
{

struct EnterLiftPetition
{

typedef EnterLiftPetitionRequest Request;
typedef EnterLiftPetitionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct EnterLiftPetition
} // namespace robot_local_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_local_control_msgs::EnterLiftPetition > {
  static const char* value()
  {
    return "ecdb7d18cedc65353c1996690a8c9cd1";
  }

  static const char* value(const ::robot_local_control_msgs::EnterLiftPetition&) { return value(); }
};

template<>
struct DataType< ::robot_local_control_msgs::EnterLiftPetition > {
  static const char* value()
  {
    return "robot_local_control_msgs/EnterLiftPetition";
  }

  static const char* value(const ::robot_local_control_msgs::EnterLiftPetition&) { return value(); }
};


// service_traits::MD5Sum< ::robot_local_control_msgs::EnterLiftPetitionRequest> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::EnterLiftPetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::EnterLiftPetitionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::EnterLiftPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::EnterLiftPetitionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::EnterLiftPetitionRequest> should match
// service_traits::DataType< ::robot_local_control_msgs::EnterLiftPetition >
template<>
struct DataType< ::robot_local_control_msgs::EnterLiftPetitionRequest>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::EnterLiftPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::EnterLiftPetitionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_local_control_msgs::EnterLiftPetitionResponse> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::EnterLiftPetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::EnterLiftPetitionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::EnterLiftPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::EnterLiftPetitionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::EnterLiftPetitionResponse> should match
// service_traits::DataType< ::robot_local_control_msgs::EnterLiftPetition >
template<>
struct DataType< ::robot_local_control_msgs::EnterLiftPetitionResponse>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::EnterLiftPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::EnterLiftPetitionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_ENTERLIFTPETITION_H