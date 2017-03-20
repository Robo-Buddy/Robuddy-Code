// Generated by gencpp from file rail_manipulation_msgs/Grasp.msg
// DO NOT EDIT!


#ifndef RAIL_MANIPULATION_MSGS_MESSAGE_GRASP_H
#define RAIL_MANIPULATION_MSGS_MESSAGE_GRASP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace rail_manipulation_msgs
{
template <class ContainerAllocator>
struct Grasp_
{
  typedef Grasp_<ContainerAllocator> Type;

  Grasp_()
    : grasp_pose()
    , eef_frame_id()
    , grasp_id(0)
    , successes(0)
    , attempts(0)  {
    }
  Grasp_(const ContainerAllocator& _alloc)
    : grasp_pose(_alloc)
    , eef_frame_id(_alloc)
    , grasp_id(0)
    , successes(0)
    , attempts(0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _grasp_pose_type;
  _grasp_pose_type grasp_pose;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _eef_frame_id_type;
  _eef_frame_id_type eef_frame_id;

   typedef uint32_t _grasp_id_type;
  _grasp_id_type grasp_id;

   typedef uint32_t _successes_type;
  _successes_type successes;

   typedef uint32_t _attempts_type;
  _attempts_type attempts;




  typedef boost::shared_ptr< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> const> ConstPtr;

}; // struct Grasp_

typedef ::rail_manipulation_msgs::Grasp_<std::allocator<void> > Grasp;

typedef boost::shared_ptr< ::rail_manipulation_msgs::Grasp > GraspPtr;
typedef boost::shared_ptr< ::rail_manipulation_msgs::Grasp const> GraspConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rail_manipulation_msgs::Grasp_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rail_manipulation_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'rail_manipulation_msgs': ['/home/kristopher/vector_ws/src/rail_manipulation_msgs/msg', '/home/kristopher/vector_ws/devel/share/rail_manipulation_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/indigo/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3bd8a373e63322c62388b5740259e40d";
  }

  static const char* value(const ::rail_manipulation_msgs::Grasp_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3bd8a373e63322c6ULL;
  static const uint64_t static_value2 = 0x2388b5740259e40dULL;
};

template<class ContainerAllocator>
struct DataType< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rail_manipulation_msgs/Grasp";
  }

  static const char* value(const ::rail_manipulation_msgs::Grasp_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PoseStamped grasp_pose  # The grasp pose\n\
string eef_frame_id                   # The coordinate frame of the end-effector used by this grasp\n\
uint32 grasp_id\n\
uint32 successes                      # The number of recorded times this grasp was successful (useful for success rate)\n\
uint32 attempts                       # The number of recorded times this grasp was attempted (useful for success rate)\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
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
";
  }

  static const char* value(const ::rail_manipulation_msgs::Grasp_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.grasp_pose);
      stream.next(m.eef_frame_id);
      stream.next(m.grasp_id);
      stream.next(m.successes);
      stream.next(m.attempts);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Grasp_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rail_manipulation_msgs::Grasp_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rail_manipulation_msgs::Grasp_<ContainerAllocator>& v)
  {
    s << indent << "grasp_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.grasp_pose);
    s << indent << "eef_frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.eef_frame_id);
    s << indent << "grasp_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.grasp_id);
    s << indent << "successes: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.successes);
    s << indent << "attempts: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.attempts);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RAIL_MANIPULATION_MSGS_MESSAGE_GRASP_H
