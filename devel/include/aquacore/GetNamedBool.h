// Generated by gencpp from file aquacore/GetNamedBool.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_GETNAMEDBOOL_H
#define AQUACORE_MESSAGE_GETNAMEDBOOL_H

#include <ros/service_traits.h>


#include <aquacore/GetNamedBoolRequest.h>
#include <aquacore/GetNamedBoolResponse.h>


namespace aquacore
{

struct GetNamedBool
{

typedef GetNamedBoolRequest Request;
typedef GetNamedBoolResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetNamedBool
} // namespace aquacore


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::aquacore::GetNamedBool > {
  static const char* value()
  {
    return "03bb66919396d0c1affe599e1fba4f8f";
  }

  static const char* value(const ::aquacore::GetNamedBool&) { return value(); }
};

template<>
struct DataType< ::aquacore::GetNamedBool > {
  static const char* value()
  {
    return "aquacore/GetNamedBool";
  }

  static const char* value(const ::aquacore::GetNamedBool&) { return value(); }
};


// service_traits::MD5Sum< ::aquacore::GetNamedBoolRequest> should match 
// service_traits::MD5Sum< ::aquacore::GetNamedBool > 
template<>
struct MD5Sum< ::aquacore::GetNamedBoolRequest>
{
  static const char* value()
  {
    return MD5Sum< ::aquacore::GetNamedBool >::value();
  }
  static const char* value(const ::aquacore::GetNamedBoolRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::aquacore::GetNamedBoolRequest> should match 
// service_traits::DataType< ::aquacore::GetNamedBool > 
template<>
struct DataType< ::aquacore::GetNamedBoolRequest>
{
  static const char* value()
  {
    return DataType< ::aquacore::GetNamedBool >::value();
  }
  static const char* value(const ::aquacore::GetNamedBoolRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::aquacore::GetNamedBoolResponse> should match 
// service_traits::MD5Sum< ::aquacore::GetNamedBool > 
template<>
struct MD5Sum< ::aquacore::GetNamedBoolResponse>
{
  static const char* value()
  {
    return MD5Sum< ::aquacore::GetNamedBool >::value();
  }
  static const char* value(const ::aquacore::GetNamedBoolResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::aquacore::GetNamedBoolResponse> should match 
// service_traits::DataType< ::aquacore::GetNamedBool > 
template<>
struct DataType< ::aquacore::GetNamedBoolResponse>
{
  static const char* value()
  {
    return DataType< ::aquacore::GetNamedBool >::value();
  }
  static const char* value(const ::aquacore::GetNamedBoolResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AQUACORE_MESSAGE_GETNAMEDBOOL_H
