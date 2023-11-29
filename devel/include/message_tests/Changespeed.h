// Generated by gencpp from file message_tests/Changespeed.msg
// DO NOT EDIT!


#ifndef MESSAGE_TESTS_MESSAGE_CHANGESPEED_H
#define MESSAGE_TESTS_MESSAGE_CHANGESPEED_H

#include <ros/service_traits.h>


#include <message_tests/ChangespeedRequest.h>
#include <message_tests/ChangespeedResponse.h>


namespace message_tests
{

struct Changespeed
{

typedef ChangespeedRequest Request;
typedef ChangespeedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Changespeed
} // namespace message_tests


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::message_tests::Changespeed > {
  static const char* value()
  {
    return "d7e28d0cca4452e86706e354055b7abc";
  }

  static const char* value(const ::message_tests::Changespeed&) { return value(); }
};

template<>
struct DataType< ::message_tests::Changespeed > {
  static const char* value()
  {
    return "message_tests/Changespeed";
  }

  static const char* value(const ::message_tests::Changespeed&) { return value(); }
};


// service_traits::MD5Sum< ::message_tests::ChangespeedRequest> should match
// service_traits::MD5Sum< ::message_tests::Changespeed >
template<>
struct MD5Sum< ::message_tests::ChangespeedRequest>
{
  static const char* value()
  {
    return MD5Sum< ::message_tests::Changespeed >::value();
  }
  static const char* value(const ::message_tests::ChangespeedRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::message_tests::ChangespeedRequest> should match
// service_traits::DataType< ::message_tests::Changespeed >
template<>
struct DataType< ::message_tests::ChangespeedRequest>
{
  static const char* value()
  {
    return DataType< ::message_tests::Changespeed >::value();
  }
  static const char* value(const ::message_tests::ChangespeedRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::message_tests::ChangespeedResponse> should match
// service_traits::MD5Sum< ::message_tests::Changespeed >
template<>
struct MD5Sum< ::message_tests::ChangespeedResponse>
{
  static const char* value()
  {
    return MD5Sum< ::message_tests::Changespeed >::value();
  }
  static const char* value(const ::message_tests::ChangespeedResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::message_tests::ChangespeedResponse> should match
// service_traits::DataType< ::message_tests::Changespeed >
template<>
struct DataType< ::message_tests::ChangespeedResponse>
{
  static const char* value()
  {
    return DataType< ::message_tests::Changespeed >::value();
  }
  static const char* value(const ::message_tests::ChangespeedResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MESSAGE_TESTS_MESSAGE_CHANGESPEED_H
