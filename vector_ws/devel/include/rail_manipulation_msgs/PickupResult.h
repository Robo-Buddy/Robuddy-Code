// Generated by gencpp from file rail_manipulation_msgs/PickupResult.msg
// DO NOT EDIT!


#ifndef RAIL_MANIPULATION_MSGS_MESSAGE_PICKUPRESULT_H
#define RAIL_MANIPULATION_MSGS_MESSAGE_PICKUPRESULT_H


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
struct PickupResult_
{
  typedef PickupResult_<ContainerAllocator> Type;

  PickupResult_()
    : executionSuccess(false)
    , success(false)  {
    }
  PickupResult_(const ContainerAllocator& _alloc)
    : executionSuccess(false)
    , success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _executionSuccess_type;
  _executionSuccess_type executionSuccess;

   typedef uint8_t _success_type;
  _success_type success;




  typedef boost::shared_ptr< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> const> ConstPtr;

}; // struct PickupResult_

typedef ::rail_manipulation_msgs::PickupResult_<std::allocator<void> > PickupResult;

typedef boost::shared_ptr< ::rail_manipulation_msgs::PickupResult > PickupResultPtr;
typedef boost::shared_ptr< ::rail_manipulation_msgs::PickupResult const> PickupResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rail_manipulation_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'rail_manipulation_msgs': ['/home/kristopher/vector_ws/src/rail_manipulation_msgs/msg', '/home/kristopher/vector_ws/devel/share/rail_manipulation_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/indigo/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5255cc5d9729cec7fd7524dffc953153";
  }

  static const char* value(const ::rail_manipulation_msgs::PickupResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5255cc5d9729cec7ULL;
  static const uint64_t static_value2 = 0xfd7524dffc953153ULL;
};

template<class ContainerAllocator>
struct DataType< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rail_manipulation_msgs/PickupResult";
  }

  static const char* value(const ::rail_manipulation_msgs::PickupResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
bool executionSuccess   # True if the arm could successfully complete motion planning\n\
bool success            # True if the object is verified to be in the gripper after pickup\n\
";
  }

  static const char* value(const ::rail_manipulation_msgs::PickupResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.executionSuccess);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PickupResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rail_manipulation_msgs::PickupResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rail_manipulation_msgs::PickupResult_<ContainerAllocator>& v)
  {
    s << indent << "executionSuccess: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.executionSuccess);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RAIL_MANIPULATION_MSGS_MESSAGE_PICKUPRESULT_H
