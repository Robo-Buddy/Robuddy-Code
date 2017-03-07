// Generated by gencpp from file hlpr_trac_ik/IKHandlerResponse.msg
// DO NOT EDIT!


#ifndef HLPR_TRAC_IK_MESSAGE_IKHANDLERRESPONSE_H
#define HLPR_TRAC_IK_MESSAGE_IKHANDLERRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <trajectory_msgs/JointTrajectoryPoint.h>

namespace hlpr_trac_ik
{
template <class ContainerAllocator>
struct IKHandlerResponse_
{
  typedef IKHandlerResponse_<ContainerAllocator> Type;

  IKHandlerResponse_()
    : poses()
    , success(false)  {
    }
  IKHandlerResponse_(const ContainerAllocator& _alloc)
    : poses(_alloc)
    , success(false)  {
  (void)_alloc;
    }



   typedef std::vector< ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator> >::other >  _poses_type;
  _poses_type poses;

   typedef uint8_t _success_type;
  _success_type success;




  typedef boost::shared_ptr< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> const> ConstPtr;

}; // struct IKHandlerResponse_

typedef ::hlpr_trac_ik::IKHandlerResponse_<std::allocator<void> > IKHandlerResponse;

typedef boost::shared_ptr< ::hlpr_trac_ik::IKHandlerResponse > IKHandlerResponsePtr;
typedef boost::shared_ptr< ::hlpr_trac_ik::IKHandlerResponse const> IKHandlerResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hlpr_trac_ik

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/indigo/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "67b42c1fcd9c8ce6e33b7e29648f0ecb";
  }

  static const char* value(const ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x67b42c1fcd9c8ce6ULL;
  static const uint64_t static_value2 = 0xe33b7e29648f0ecbULL;
};

template<class ContainerAllocator>
struct DataType< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hlpr_trac_ik/IKHandlerResponse";
  }

  static const char* value(const ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "trajectory_msgs/JointTrajectoryPoint[] poses\n\
bool success\n\
\n\
\n\
================================================================================\n\
MSG: trajectory_msgs/JointTrajectoryPoint\n\
# Each trajectory point specifies either positions[, velocities[, accelerations]]\n\
# or positions[, effort] for the trajectory to be executed.\n\
# All specified values are in the same order as the joint names in JointTrajectory.msg\n\
\n\
float64[] positions\n\
float64[] velocities\n\
float64[] accelerations\n\
float64[] effort\n\
duration time_from_start\n\
";
  }

  static const char* value(const ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.poses);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IKHandlerResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hlpr_trac_ik::IKHandlerResponse_<ContainerAllocator>& v)
  {
    s << indent << "poses[]" << std::endl;
    for (size_t i = 0; i < v.poses.size(); ++i)
    {
      s << indent << "  poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.poses[i]);
    }
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HLPR_TRAC_IK_MESSAGE_IKHANDLERRESPONSE_H