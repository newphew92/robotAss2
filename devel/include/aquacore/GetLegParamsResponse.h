// Generated by gencpp from file aquacore/GetLegParamsResponse.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_GETLEGPARAMSRESPONSE_H
#define AQUACORE_MESSAGE_GETLEGPARAMSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace aquacore
{
template <class ContainerAllocator>
struct GetLegParamsResponse_
{
  typedef GetLegParamsResponse_<ContainerAllocator> Type;

  GetLegParamsResponse_()
    : amplitude(0.0)
    , period(0.0)  {
    }
  GetLegParamsResponse_(const ContainerAllocator& _alloc)
    : amplitude(0.0)
    , period(0.0)  {
    }



   typedef float _amplitude_type;
  _amplitude_type amplitude;

   typedef float _period_type;
  _period_type period;




  typedef boost::shared_ptr< ::aquacore::GetLegParamsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::GetLegParamsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetLegParamsResponse_

typedef ::aquacore::GetLegParamsResponse_<std::allocator<void> > GetLegParamsResponse;

typedef boost::shared_ptr< ::aquacore::GetLegParamsResponse > GetLegParamsResponsePtr;
typedef boost::shared_ptr< ::aquacore::GetLegParamsResponse const> GetLegParamsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::GetLegParamsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::GetLegParamsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace aquacore

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'aquacore': ['/home/2014/tko4/robotAss1/src/aquacore/msg', '/home/2014/tko4/robotAss1/devel/share/aquacore/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::GetLegParamsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::GetLegParamsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::GetLegParamsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::GetLegParamsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::GetLegParamsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::GetLegParamsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::GetLegParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1792bf569e4223f89286c37967c01dcf";
  }

  static const char* value(const ::aquacore::GetLegParamsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1792bf569e4223f8ULL;
  static const uint64_t static_value2 = 0x9286c37967c01dcfULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::GetLegParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/GetLegParamsResponse";
  }

  static const char* value(const ::aquacore::GetLegParamsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::GetLegParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 amplitude\n\
float32 period\n\
\n\
\n\
";
  }

  static const char* value(const ::aquacore::GetLegParamsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::GetLegParamsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.amplitude);
      stream.next(m.period);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct GetLegParamsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::GetLegParamsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::GetLegParamsResponse_<ContainerAllocator>& v)
  {
    s << indent << "amplitude: ";
    Printer<float>::stream(s, indent + "  ", v.amplitude);
    s << indent << "period: ";
    Printer<float>::stream(s, indent + "  ", v.period);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_GETLEGPARAMSRESPONSE_H
