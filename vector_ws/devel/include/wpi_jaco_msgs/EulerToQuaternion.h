// Generated by gencpp from file wpi_jaco_msgs/EulerToQuaternion.msg
// DO NOT EDIT!


#ifndef WPI_JACO_MSGS_MESSAGE_EULERTOQUATERNION_H
#define WPI_JACO_MSGS_MESSAGE_EULERTOQUATERNION_H

#include <ros/service_traits.h>


#include <wpi_jaco_msgs/EulerToQuaternionRequest.h>
#include <wpi_jaco_msgs/EulerToQuaternionResponse.h>


namespace wpi_jaco_msgs
{

struct EulerToQuaternion
{

typedef EulerToQuaternionRequest Request;
typedef EulerToQuaternionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct EulerToQuaternion
} // namespace wpi_jaco_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::wpi_jaco_msgs::EulerToQuaternion > {
  static const char* value()
  {
    return "da90a880255964dba6fc422dcbad3806";
  }

  static const char* value(const ::wpi_jaco_msgs::EulerToQuaternion&) { return value(); }
};

template<>
struct DataType< ::wpi_jaco_msgs::EulerToQuaternion > {
  static const char* value()
  {
    return "wpi_jaco_msgs/EulerToQuaternion";
  }

  static const char* value(const ::wpi_jaco_msgs::EulerToQuaternion&) { return value(); }
};


// service_traits::MD5Sum< ::wpi_jaco_msgs::EulerToQuaternionRequest> should match 
// service_traits::MD5Sum< ::wpi_jaco_msgs::EulerToQuaternion > 
template<>
struct MD5Sum< ::wpi_jaco_msgs::EulerToQuaternionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::wpi_jaco_msgs::EulerToQuaternion >::value();
  }
  static const char* value(const ::wpi_jaco_msgs::EulerToQuaternionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::wpi_jaco_msgs::EulerToQuaternionRequest> should match 
// service_traits::DataType< ::wpi_jaco_msgs::EulerToQuaternion > 
template<>
struct DataType< ::wpi_jaco_msgs::EulerToQuaternionRequest>
{
  static const char* value()
  {
    return DataType< ::wpi_jaco_msgs::EulerToQuaternion >::value();
  }
  static const char* value(const ::wpi_jaco_msgs::EulerToQuaternionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::wpi_jaco_msgs::EulerToQuaternionResponse> should match 
// service_traits::MD5Sum< ::wpi_jaco_msgs::EulerToQuaternion > 
template<>
struct MD5Sum< ::wpi_jaco_msgs::EulerToQuaternionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::wpi_jaco_msgs::EulerToQuaternion >::value();
  }
  static const char* value(const ::wpi_jaco_msgs::EulerToQuaternionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::wpi_jaco_msgs::EulerToQuaternionResponse> should match 
// service_traits::DataType< ::wpi_jaco_msgs::EulerToQuaternion > 
template<>
struct DataType< ::wpi_jaco_msgs::EulerToQuaternionResponse>
{
  static const char* value()
  {
    return DataType< ::wpi_jaco_msgs::EulerToQuaternion >::value();
  }
  static const char* value(const ::wpi_jaco_msgs::EulerToQuaternionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WPI_JACO_MSGS_MESSAGE_EULERTOQUATERNION_H
