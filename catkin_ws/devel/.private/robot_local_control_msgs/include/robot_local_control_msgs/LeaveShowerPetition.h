// Generated by gencpp from file robot_local_control_msgs/LeaveShowerPetition.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVESHOWERPETITION_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVESHOWERPETITION_H

#include <ros/service_traits.h>


#include <robot_local_control_msgs/LeaveShowerPetitionRequest.h>
#include <robot_local_control_msgs/LeaveShowerPetitionResponse.h>


namespace robot_local_control_msgs
{

struct LeaveShowerPetition
{

typedef LeaveShowerPetitionRequest Request;
typedef LeaveShowerPetitionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LeaveShowerPetition
} // namespace robot_local_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_local_control_msgs::LeaveShowerPetition > {
  static const char* value()
  {
    return "b5fb2862b796768251af576ba2b468da";
  }

  static const char* value(const ::robot_local_control_msgs::LeaveShowerPetition&) { return value(); }
};

template<>
struct DataType< ::robot_local_control_msgs::LeaveShowerPetition > {
  static const char* value()
  {
    return "robot_local_control_msgs/LeaveShowerPetition";
  }

  static const char* value(const ::robot_local_control_msgs::LeaveShowerPetition&) { return value(); }
};


// service_traits::MD5Sum< ::robot_local_control_msgs::LeaveShowerPetitionRequest> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::LeaveShowerPetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::LeaveShowerPetitionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::LeaveShowerPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::LeaveShowerPetitionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::LeaveShowerPetitionRequest> should match
// service_traits::DataType< ::robot_local_control_msgs::LeaveShowerPetition >
template<>
struct DataType< ::robot_local_control_msgs::LeaveShowerPetitionRequest>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::LeaveShowerPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::LeaveShowerPetitionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_local_control_msgs::LeaveShowerPetitionResponse> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::LeaveShowerPetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::LeaveShowerPetitionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::LeaveShowerPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::LeaveShowerPetitionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::LeaveShowerPetitionResponse> should match
// service_traits::DataType< ::robot_local_control_msgs::LeaveShowerPetition >
template<>
struct DataType< ::robot_local_control_msgs::LeaveShowerPetitionResponse>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::LeaveShowerPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::LeaveShowerPetitionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_LEAVESHOWERPETITION_H
