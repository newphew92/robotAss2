// Generated by gencpp from file aquacore/DoSurfaceTaskFeedback.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_DOSURFACETASKFEEDBACK_H
#define AQUACORE_MESSAGE_DOSURFACETASKFEEDBACK_H


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
struct DoSurfaceTaskFeedback_
{
  typedef DoSurfaceTaskFeedback_<ContainerAllocator> Type;

  DoSurfaceTaskFeedback_()
    : task(0)
    , percent_depth_change_completed(0.0)
    , has_reached_constant_depth(false)
    , has_established_gps(false)  {
    }
  DoSurfaceTaskFeedback_(const ContainerAllocator& _alloc)
    : task(0)
    , percent_depth_change_completed(0.0)
    , has_reached_constant_depth(false)
    , has_established_gps(false)  {
    }



   typedef int8_t _task_type;
  _task_type task;

   typedef double _percent_depth_change_completed_type;
  _percent_depth_change_completed_type percent_depth_change_completed;

   typedef uint8_t _has_reached_constant_depth_type;
  _has_reached_constant_depth_type has_reached_constant_depth;

   typedef uint8_t _has_established_gps_type;
  _has_established_gps_type has_established_gps;




  typedef boost::shared_ptr< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct DoSurfaceTaskFeedback_

typedef ::aquacore::DoSurfaceTaskFeedback_<std::allocator<void> > DoSurfaceTaskFeedback;

typedef boost::shared_ptr< ::aquacore::DoSurfaceTaskFeedback > DoSurfaceTaskFeedbackPtr;
typedef boost::shared_ptr< ::aquacore::DoSurfaceTaskFeedback const> DoSurfaceTaskFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3fb53b8f9ad6654cf096432b41609bf3";
  }

  static const char* value(const ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3fb53b8f9ad6654cULL;
  static const uint64_t static_value2 = 0xf096432b41609bf3ULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/DoSurfaceTaskFeedback";
  }

  static const char* value(const ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
# Feedback\n\
byte task                                # see SurfaceTaskTypes.msg\n\
float64 percent_depth_change_completed\n\
bool has_reached_constant_depth\n\
bool has_established_gps\n\
\n\
";
  }

  static const char* value(const ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task);
      stream.next(m.percent_depth_change_completed);
      stream.next(m.has_reached_constant_depth);
      stream.next(m.has_established_gps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct DoSurfaceTaskFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::DoSurfaceTaskFeedback_<ContainerAllocator>& v)
  {
    s << indent << "task: ";
    Printer<int8_t>::stream(s, indent + "  ", v.task);
    s << indent << "percent_depth_change_completed: ";
    Printer<double>::stream(s, indent + "  ", v.percent_depth_change_completed);
    s << indent << "has_reached_constant_depth: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.has_reached_constant_depth);
    s << indent << "has_established_gps: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.has_established_gps);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_DOSURFACETASKFEEDBACK_H
