// Generated by gencpp from file rail_manipulation_msgs/PrimitiveGoal.msg
// DO NOT EDIT!


#ifndef RAIL_MANIPULATION_MSGS_MESSAGE_PRIMITIVEGOAL_H
#define RAIL_MANIPULATION_MSGS_MESSAGE_PRIMITIVEGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rail_manipulation_msgs
{
template <class ContainerAllocator>
struct PrimitiveGoal_
{
  typedef PrimitiveGoal_<ContainerAllocator> Type;

  PrimitiveGoal_()
    : primitive_type(0)
    , axis(0)
    , distance(0.0)  {
    }
  PrimitiveGoal_(const ContainerAllocator& _alloc)
    : primitive_type(0)
    , axis(0)
    , distance(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _primitive_type_type;
  _primitive_type_type primitive_type;

   typedef uint8_t _axis_type;
  _axis_type axis;

   typedef double _distance_type;
  _distance_type distance;


    enum { TRANSLATION = 0u };
     enum { ROTATION = 1u };
     enum { X_AXIS = 0u };
     enum { Y_AXIS = 1u };
     enum { Z_AXIS = 2u };
 

  typedef boost::shared_ptr< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PrimitiveGoal_

typedef ::rail_manipulation_msgs::PrimitiveGoal_<std::allocator<void> > PrimitiveGoal;

typedef boost::shared_ptr< ::rail_manipulation_msgs::PrimitiveGoal > PrimitiveGoalPtr;
typedef boost::shared_ptr< ::rail_manipulation_msgs::PrimitiveGoal const> PrimitiveGoalConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rail_manipulation_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'rail_manipulation_msgs': ['/home/athomaz/vector_ws/src/rail_manipulation_msgs/msg', '/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/indigo/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c76a07691fd7d25efb98e8b7f78daf49";
  }

  static const char* value(const ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc76a07691fd7d25eULL;
  static const uint64_t static_value2 = 0xfb98e8b7f78daf49ULL;
};

template<class ContainerAllocator>
struct DataType< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rail_manipulation_msgs/PrimitiveGoal";
  }

  static const char* value(const ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Define the goal\n\
\n\
#actions\n\
uint8 TRANSLATION=0\n\
uint8 ROTATION=1\n\
\n\
#axes\n\
uint8 X_AXIS=0\n\
uint8 Y_AXIS=1\n\
uint8 Z_AXIS=2\n\
\n\
uint8 primitive_type    # type of primitive action\n\
uint8 axis              # axis of translation/rotation\n\
float64 distance        # distance to perform the action (in m or rad)\n\
";
  }

  static const char* value(const ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.primitive_type);
      stream.next(m.axis);
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PrimitiveGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rail_manipulation_msgs::PrimitiveGoal_<ContainerAllocator>& v)
  {
    s << indent << "primitive_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.primitive_type);
    s << indent << "axis: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.axis);
    s << indent << "distance: ";
    Printer<double>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RAIL_MANIPULATION_MSGS_MESSAGE_PRIMITIVEGOAL_H
