// Generated by gencpp from file aquacore/SetDirectionRequest.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_SETDIRECTIONREQUEST_H
#define AQUACORE_MESSAGE_SETDIRECTIONREQUEST_H


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
struct SetDirectionRequest_
{
  typedef SetDirectionRequest_<ContainerAllocator> Type;

  SetDirectionRequest_()
    : forward(false)  {
    }
  SetDirectionRequest_(const ContainerAllocator& _alloc)
    : forward(false)  {
    }



   typedef uint8_t _forward_type;
  _forward_type forward;




  typedef boost::shared_ptr< ::aquacore::SetDirectionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::SetDirectionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetDirectionRequest_

typedef ::aquacore::SetDirectionRequest_<std::allocator<void> > SetDirectionRequest;

typedef boost::shared_ptr< ::aquacore::SetDirectionRequest > SetDirectionRequestPtr;
typedef boost::shared_ptr< ::aquacore::SetDirectionRequest const> SetDirectionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::SetDirectionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::SetDirectionRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::aquacore::SetDirectionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::SetDirectionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::SetDirectionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::SetDirectionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::SetDirectionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::SetDirectionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::SetDirectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0fc3bc45e28c68f06921185960eb727c";
  }

  static const char* value(const ::aquacore::SetDirectionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0fc3bc45e28c68f0ULL;
  static const uint64_t static_value2 = 0x6921185960eb727cULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::SetDirectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/SetDirectionRequest";
  }

  static const char* value(const ::aquacore::SetDirectionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::SetDirectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool forward\n\
";
  }

  static const char* value(const ::aquacore::SetDirectionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::SetDirectionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.forward);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SetDirectionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::SetDirectionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::SetDirectionRequest_<ContainerAllocator>& v)
  {
    s << indent << "forward: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.forward);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_SETDIRECTIONREQUEST_H
