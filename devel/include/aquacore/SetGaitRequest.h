// Generated by gencpp from file aquacore/SetGaitRequest.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_SETGAITREQUEST_H
#define AQUACORE_MESSAGE_SETGAITREQUEST_H


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
struct SetGaitRequest_
{
  typedef SetGaitRequest_<ContainerAllocator> Type;

  SetGaitRequest_()
    : gait()  {
    }
  SetGaitRequest_(const ContainerAllocator& _alloc)
    : gait(_alloc)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _gait_type;
  _gait_type gait;




  typedef boost::shared_ptr< ::aquacore::SetGaitRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::SetGaitRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetGaitRequest_

typedef ::aquacore::SetGaitRequest_<std::allocator<void> > SetGaitRequest;

typedef boost::shared_ptr< ::aquacore::SetGaitRequest > SetGaitRequestPtr;
typedef boost::shared_ptr< ::aquacore::SetGaitRequest const> SetGaitRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::SetGaitRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::SetGaitRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace aquacore

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'aquacore': ['/home/2014/tko4/robotAss1/src/aquacore/msg', '/home/2014/tko4/robotAss1/devel/share/aquacore/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::SetGaitRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::SetGaitRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::SetGaitRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::SetGaitRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::SetGaitRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::SetGaitRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::SetGaitRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7316dbc1f35e5620dd035cf53d73de84";
  }

  static const char* value(const ::aquacore::SetGaitRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7316dbc1f35e5620ULL;
  static const uint64_t static_value2 = 0xdd035cf53d73de84ULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::SetGaitRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/SetGaitRequest";
  }

  static const char* value(const ::aquacore::SetGaitRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::SetGaitRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string gait\n\
";
  }

  static const char* value(const ::aquacore::SetGaitRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::SetGaitRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gait);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SetGaitRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::SetGaitRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::SetGaitRequest_<ContainerAllocator>& v)
  {
    s << indent << "gait: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.gait);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_SETGAITREQUEST_H
