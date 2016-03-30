// Generated by gencpp from file aquacore/IsCalibratedResponse.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_ISCALIBRATEDRESPONSE_H
#define AQUACORE_MESSAGE_ISCALIBRATEDRESPONSE_H


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
struct IsCalibratedResponse_
{
  typedef IsCalibratedResponse_<ContainerAllocator> Type;

  IsCalibratedResponse_()
    : value(false)  {
    }
  IsCalibratedResponse_(const ContainerAllocator& _alloc)
    : value(false)  {
    }



   typedef uint8_t _value_type;
  _value_type value;




  typedef boost::shared_ptr< ::aquacore::IsCalibratedResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::IsCalibratedResponse_<ContainerAllocator> const> ConstPtr;

}; // struct IsCalibratedResponse_

typedef ::aquacore::IsCalibratedResponse_<std::allocator<void> > IsCalibratedResponse;

typedef boost::shared_ptr< ::aquacore::IsCalibratedResponse > IsCalibratedResponsePtr;
typedef boost::shared_ptr< ::aquacore::IsCalibratedResponse const> IsCalibratedResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::IsCalibratedResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::IsCalibratedResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::aquacore::IsCalibratedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::IsCalibratedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::IsCalibratedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::IsCalibratedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::IsCalibratedResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::IsCalibratedResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::IsCalibratedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e431d687bf4b2c65fbd94b12ae0cb5d9";
  }

  static const char* value(const ::aquacore::IsCalibratedResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe431d687bf4b2c65ULL;
  static const uint64_t static_value2 = 0xfbd94b12ae0cb5d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::IsCalibratedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/IsCalibratedResponse";
  }

  static const char* value(const ::aquacore::IsCalibratedResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::IsCalibratedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool value\n\
\n\
";
  }

  static const char* value(const ::aquacore::IsCalibratedResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::IsCalibratedResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct IsCalibratedResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::IsCalibratedResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::IsCalibratedResponse_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_ISCALIBRATEDRESPONSE_H
