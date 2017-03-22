// Generated by gencpp from file wpi_jaco_msgs/HomeArmActionGoal.msg
// DO NOT EDIT!


#ifndef WPI_JACO_MSGS_MESSAGE_HOMEARMACTIONGOAL_H
#define WPI_JACO_MSGS_MESSAGE_HOMEARMACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <wpi_jaco_msgs/HomeArmGoal.h>

namespace wpi_jaco_msgs
{
template <class ContainerAllocator>
struct HomeArmActionGoal_
{
  typedef HomeArmActionGoal_<ContainerAllocator> Type;

  HomeArmActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  HomeArmActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::wpi_jaco_msgs::HomeArmGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct HomeArmActionGoal_

typedef ::wpi_jaco_msgs::HomeArmActionGoal_<std::allocator<void> > HomeArmActionGoal;

typedef boost::shared_ptr< ::wpi_jaco_msgs::HomeArmActionGoal > HomeArmActionGoalPtr;
typedef boost::shared_ptr< ::wpi_jaco_msgs::HomeArmActionGoal const> HomeArmActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wpi_jaco_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'wpi_jaco_msgs': ['/home/athomaz/vector_ws/src/wpi_jaco_msgs/msg', '/home/athomaz/vector_ws/devel/share/wpi_jaco_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "db6eb475d577d90d2d8e157112f76e88";
  }

  static const char* value(const ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdb6eb475d577d90dULL;
  static const uint64_t static_value2 = 0x2d8e157112f76e88ULL;
};

template<class ContainerAllocator>
struct DataType< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wpi_jaco_msgs/HomeArmActionGoal";
  }

  static const char* value(const ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
HomeArmGoal goal\n\
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
MSG: wpi_jaco_msgs/HomeArmGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Define the goal\n\
bool retract                                  # set to true to retract arm to a given position after moving home\n\
wpi_jaco_msgs/AngularCommand retractPosition  # position to which the arm should retract (only if retract is true)\n\
int16 numAttempts                                # attempts for moving to given joint pose (only used in motion planning versions)\n\
\n\
================================================================================\n\
MSG: wpi_jaco_msgs/AngularCommand\n\
bool position       # true for a position command, false for a velocity command\n\
bool armCommand     # true if this command includes arm joint inputs\n\
bool fingerCommand  # true if this command includes finger inputs\n\
bool repeat         # true if the command should be repeatedly sent over a short interval\n\
float32[] joints    # position (rad) or velocity (rad/s) arm command\n\
float32[] fingers   # position (rad) or velocity (rad/s) finger command\n\
";
  }

  static const char* value(const ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HomeArmActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wpi_jaco_msgs::HomeArmActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::wpi_jaco_msgs::HomeArmGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WPI_JACO_MSGS_MESSAGE_HOMEARMACTIONGOAL_H
