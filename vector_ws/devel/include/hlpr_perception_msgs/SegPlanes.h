// Generated by gencpp from file hlpr_perception_msgs/SegPlanes.msg
// DO NOT EDIT!


#ifndef HLPR_PERCEPTION_MSGS_MESSAGE_SEGPLANES_H
#define HLPR_PERCEPTION_MSGS_MESSAGE_SEGPLANES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32MultiArray.h>
#include <sensor_msgs/PointCloud2.h>

namespace hlpr_perception_msgs
{
template <class ContainerAllocator>
struct SegPlanes_
{
  typedef SegPlanes_<ContainerAllocator> Type;

  SegPlanes_()
    : plane_coefficients()
    , plane_contours()  {
    }
  SegPlanes_(const ContainerAllocator& _alloc)
    : plane_coefficients(_alloc)
    , plane_contours(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::std_msgs::Float32MultiArray_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::std_msgs::Float32MultiArray_<ContainerAllocator> >::other >  _plane_coefficients_type;
  _plane_coefficients_type plane_coefficients;

   typedef std::vector< ::sensor_msgs::PointCloud2_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::other >  _plane_contours_type;
  _plane_contours_type plane_contours;




  typedef boost::shared_ptr< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> const> ConstPtr;

}; // struct SegPlanes_

typedef ::hlpr_perception_msgs::SegPlanes_<std::allocator<void> > SegPlanes;

typedef boost::shared_ptr< ::hlpr_perception_msgs::SegPlanes > SegPlanesPtr;
typedef boost::shared_ptr< ::hlpr_perception_msgs::SegPlanes const> SegPlanesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hlpr_perception_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'hlpr_perception_msgs': ['/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fd47d5cbb6d6da91783babd70a7593a2";
  }

  static const char* value(const ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfd47d5cbb6d6da91ULL;
  static const uint64_t static_value2 = 0x783babd70a7593a2ULL;
};

template<class ContainerAllocator>
struct DataType< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hlpr_perception_msgs/SegPlanes";
  }

  static const char* value(const ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The following are used to store information about planes\n\
std_msgs/Float32MultiArray[] plane_coefficients\n\
sensor_msgs/PointCloud2[] plane_contours\n\
\n\
================================================================================\n\
MSG: std_msgs/Float32MultiArray\n\
# Please look at the MultiArrayLayout message definition for\n\
# documentation on all multiarrays.\n\
\n\
MultiArrayLayout  layout        # specification of data layout\n\
float32[]         data          # array of data\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/MultiArrayLayout\n\
# The multiarray declares a generic multi-dimensional array of a\n\
# particular data type.  Dimensions are ordered from outer most\n\
# to inner most.\n\
\n\
MultiArrayDimension[] dim # Array of dimension properties\n\
uint32 data_offset        # padding elements at front of data\n\
\n\
# Accessors should ALWAYS be written in terms of dimension stride\n\
# and specified outer-most dimension first.\n\
# \n\
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n\
#\n\
# A standard, 3-channel 640x480 image with interleaved color channels\n\
# would be specified as:\n\
#\n\
# dim[0].label  = \"height\"\n\
# dim[0].size   = 480\n\
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n\
# dim[1].label  = \"width\"\n\
# dim[1].size   = 640\n\
# dim[1].stride = 3*640 = 1920\n\
# dim[2].label  = \"channel\"\n\
# dim[2].size   = 3\n\
# dim[2].stride = 3\n\
#\n\
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n\
\n\
================================================================================\n\
MSG: std_msgs/MultiArrayDimension\n\
string label   # label of given dimension\n\
uint32 size    # size of given dimension (in type units)\n\
uint32 stride  # stride of given dimension\n\
================================================================================\n\
MSG: sensor_msgs/PointCloud2\n\
# This message holds a collection of N-dimensional points, which may\n\
# contain additional information such as normals, intensity, etc. The\n\
# point data is stored as a binary blob, its layout described by the\n\
# contents of the \"fields\" array.\n\
\n\
# The point cloud data may be organized 2d (image-like) or 1d\n\
# (unordered). Point clouds organized as 2d images may be produced by\n\
# camera depth sensors such as stereo or time-of-flight.\n\
\n\
# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n\
# points).\n\
Header header\n\
\n\
# 2D structure of the point cloud. If the cloud is unordered, height is\n\
# 1 and width is the length of the point cloud.\n\
uint32 height\n\
uint32 width\n\
\n\
# Describes the channels and their layout in the binary data blob.\n\
PointField[] fields\n\
\n\
bool    is_bigendian # Is this data bigendian?\n\
uint32  point_step   # Length of a point in bytes\n\
uint32  row_step     # Length of a row in bytes\n\
uint8[] data         # Actual point data, size is (row_step*height)\n\
\n\
bool is_dense        # True if there are no invalid points\n\
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
MSG: sensor_msgs/PointField\n\
# This message holds the description of one point entry in the\n\
# PointCloud2 message format.\n\
uint8 INT8    = 1\n\
uint8 UINT8   = 2\n\
uint8 INT16   = 3\n\
uint8 UINT16  = 4\n\
uint8 INT32   = 5\n\
uint8 UINT32  = 6\n\
uint8 FLOAT32 = 7\n\
uint8 FLOAT64 = 8\n\
\n\
string name      # Name of field\n\
uint32 offset    # Offset from start of point struct\n\
uint8  datatype  # Datatype enumeration, see above\n\
uint32 count     # How many elements in the field\n\
";
  }

  static const char* value(const ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.plane_coefficients);
      stream.next(m.plane_contours);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SegPlanes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hlpr_perception_msgs::SegPlanes_<ContainerAllocator>& v)
  {
    s << indent << "plane_coefficients[]" << std::endl;
    for (size_t i = 0; i < v.plane_coefficients.size(); ++i)
    {
      s << indent << "  plane_coefficients[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::Float32MultiArray_<ContainerAllocator> >::stream(s, indent + "    ", v.plane_coefficients[i]);
    }
    s << indent << "plane_contours[]" << std::endl;
    for (size_t i = 0; i < v.plane_contours.size(); ++i)
    {
      s << indent << "  plane_contours[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "    ", v.plane_contours[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HLPR_PERCEPTION_MSGS_MESSAGE_SEGPLANES_H