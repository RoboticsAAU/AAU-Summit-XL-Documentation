// Generated by gencpp from file robot_local_control_msgs/PlacePetition.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_PLACEPETITION_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_PLACEPETITION_H

#include <ros/service_traits.h>


#include <robot_local_control_msgs/PlacePetitionRequest.h>
#include <robot_local_control_msgs/PlacePetitionResponse.h>


namespace robot_local_control_msgs
{

struct PlacePetition
{

typedef PlacePetitionRequest Request;
typedef PlacePetitionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PlacePetition
} // namespace robot_local_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_local_control_msgs::PlacePetition > {
  static const char* value()
  {
    return "44c7093f5d45a75a03470d3d82ca14f6";
  }

  static const char* value(const ::robot_local_control_msgs::PlacePetition&) { return value(); }
};

template<>
struct DataType< ::robot_local_control_msgs::PlacePetition > {
  static const char* value()
  {
    return "robot_local_control_msgs/PlacePetition";
  }

  static const char* value(const ::robot_local_control_msgs::PlacePetition&) { return value(); }
};


// service_traits::MD5Sum< ::robot_local_control_msgs::PlacePetitionRequest> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::PlacePetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::PlacePetitionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::PlacePetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::PlacePetitionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::PlacePetitionRequest> should match
// service_traits::DataType< ::robot_local_control_msgs::PlacePetition >
template<>
struct DataType< ::robot_local_control_msgs::PlacePetitionRequest>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::PlacePetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::PlacePetitionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_local_control_msgs::PlacePetitionResponse> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::PlacePetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::PlacePetitionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::PlacePetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::PlacePetitionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::PlacePetitionResponse> should match
// service_traits::DataType< ::robot_local_control_msgs::PlacePetition >
template<>
struct DataType< ::robot_local_control_msgs::PlacePetitionResponse>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::PlacePetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::PlacePetitionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_PLACEPETITION_H
