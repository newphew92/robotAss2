// Generated by gencpp from file aquacore/GotoAction.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_GOTOACTION_H
#define AQUACORE_MESSAGE_GOTOACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <aquacore/GotoActionGoal.h>
#include <aquacore/GotoActionResult.h>
#include <aquacore/GotoActionFeedback.h>

namespace aquacore
{
template <class ContainerAllocator>
struct GotoAction_
{
  typedef GotoAction_<ContainerAllocator> Type;

  GotoAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  GotoAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
    }



   typedef  ::aquacore::GotoActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::aquacore::GotoActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::aquacore::GotoActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;




  typedef boost::shared_ptr< ::aquacore::GotoAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::GotoAction_<ContainerAllocator> const> ConstPtr;

}; // struct GotoAction_

typedef ::aquacore::GotoAction_<std::allocator<void> > GotoAction;

typedef boost::shared_ptr< ::aquacore::GotoAction > GotoActionPtr;
typedef boost::shared_ptr< ::aquacore::GotoAction const> GotoActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::GotoAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::GotoAction_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::aquacore::GotoAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::GotoAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::GotoAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::GotoAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::GotoAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::GotoAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::GotoAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f742afa55c705f6ce959f02f5ce50477";
  }

  static const char* value(const ::aquacore::GotoAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf742afa55c705f6cULL;
  static const uint64_t static_value2 = 0xe959f02f5ce50477ULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::GotoAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/GotoAction";
  }

  static const char* value(const ::aquacore::GotoAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::GotoAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
GotoActionGoal action_goal\n\
GotoActionResult action_result\n\
GotoActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: aquacore/GotoActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
GotoGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: aquacore/GotoGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Desired goal\n\
\n\
# (x,y) denotes latitude and longitude respectively (in degrees)\n\
# z denotes depth, > 0 above the water, 0 on the surface, < 0 underwater (in meters)\n\
# orientation is currently not handled \n\
geometry_msgs/Pose target_waypoint\n\
\n\
# True if we want to avoid a random step to initialize the global heading of the robot \n\
# and instead use the last known heading from the previous goal. \n\
# This is useful when we have a chain of goals to reach, one after the other, because\n\
# it avoids ugly turns in the beginning of the trajectory towards the next goal..\n\
bool   start_towards_last_bearing \n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: aquacore/GotoActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
GotoResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: aquacore/GotoResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
# Result\n\
\n\
bool arrived_successfully\n\
\n\
\n\
================================================================================\n\
MSG: aquacore/GotoActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
GotoFeedback feedback\n\
\n\
================================================================================\n\
MSG: aquacore/GotoFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
# Feedback \n\
\n\
# Current position and orientation. \n\
# Semantics as above.\n\
geometry_msgs/Pose current_waypoint\n\
\n\
";
  }

  static const char* value(const ::aquacore::GotoAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::GotoAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct GotoAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::GotoAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::GotoAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::aquacore::GotoActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::aquacore::GotoActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::aquacore::GotoActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_GOTOACTION_H
