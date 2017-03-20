// Generated by gencpp from file hlpr_perception_msgs/ObjectFeatures.msg
// DO NOT EDIT!


#ifndef HLPR_PERCEPTION_MSGS_MESSAGE_OBJECTFEATURES_H
#define HLPR_PERCEPTION_MSGS_MESSAGE_OBJECTFEATURES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Transform.h>
#include <hlpr_perception_msgs/BasicFeatures.h>
#include <hlpr_perception_msgs/OrientedBoundingBox.h>
#include <hlpr_perception_msgs/ColorHist.h>
#include <hlpr_perception_msgs/ShapeHist.h>
#include <hlpr_perception_msgs/ViewpointHist.h>
#include <hlpr_perception_msgs/OtherFeatures.h>

namespace hlpr_perception_msgs
{
template <class ContainerAllocator>
struct ObjectFeatures_
{
  typedef ObjectFeatures_<ContainerAllocator> Type;

  ObjectFeatures_()
    : header()
    , transform()
    , basicInfo()
    , obb()
    , setColorHist(false)
    , hs_hist()
    , setShapeHist(false)
    , shape_hist()
    , setViewpointHist(false)
    , view_hist()
    , setOtherFeatures(false)
    , other()  {
    }
  ObjectFeatures_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , transform(_alloc)
    , basicInfo(_alloc)
    , obb(_alloc)
    , setColorHist(false)
    , hs_hist(_alloc)
    , setShapeHist(false)
    , shape_hist(_alloc)
    , setViewpointHist(false)
    , view_hist(_alloc)
    , setOtherFeatures(false)
    , other(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Transform_<ContainerAllocator>  _transform_type;
  _transform_type transform;

   typedef  ::hlpr_perception_msgs::BasicFeatures_<ContainerAllocator>  _basicInfo_type;
  _basicInfo_type basicInfo;

   typedef  ::hlpr_perception_msgs::OrientedBoundingBox_<ContainerAllocator>  _obb_type;
  _obb_type obb;

   typedef uint8_t _setColorHist_type;
  _setColorHist_type setColorHist;

   typedef  ::hlpr_perception_msgs::ColorHist_<ContainerAllocator>  _hs_hist_type;
  _hs_hist_type hs_hist;

   typedef uint8_t _setShapeHist_type;
  _setShapeHist_type setShapeHist;

   typedef  ::hlpr_perception_msgs::ShapeHist_<ContainerAllocator>  _shape_hist_type;
  _shape_hist_type shape_hist;

   typedef uint8_t _setViewpointHist_type;
  _setViewpointHist_type setViewpointHist;

   typedef  ::hlpr_perception_msgs::ViewpointHist_<ContainerAllocator>  _view_hist_type;
  _view_hist_type view_hist;

   typedef uint8_t _setOtherFeatures_type;
  _setOtherFeatures_type setOtherFeatures;

   typedef  ::hlpr_perception_msgs::OtherFeatures_<ContainerAllocator>  _other_type;
  _other_type other;




  typedef boost::shared_ptr< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> const> ConstPtr;

}; // struct ObjectFeatures_

typedef ::hlpr_perception_msgs::ObjectFeatures_<std::allocator<void> > ObjectFeatures;

typedef boost::shared_ptr< ::hlpr_perception_msgs::ObjectFeatures > ObjectFeaturesPtr;
typedef boost::shared_ptr< ::hlpr_perception_msgs::ObjectFeatures const> ObjectFeaturesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hlpr_perception_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'hlpr_perception_msgs': ['/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e8002b6ed029f744d9adbb41c97e7480";
  }

  static const char* value(const ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe8002b6ed029f744ULL;
  static const uint64_t static_value2 = 0xd9adbb41c97e7480ULL;
};

template<class ContainerAllocator>
struct DataType< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hlpr_perception_msgs/ObjectFeatures";
  }

  static const char* value(const ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Features for a single object cluster\n\
\n\
Header header\n\
\n\
geometry_msgs/Transform transform\n\
\n\
BasicFeatures basicInfo\n\
OrientedBoundingBox obb\n\
\n\
bool setColorHist            # Flag to state if hs_hist was computed and set (default=true)\n\
ColorHist hs_hist\n\
\n\
bool setShapeHist            # Flag to state if shape_hist was computed and set (default=true)\n\
ShapeHist shape_hist\n\
\n\
bool setViewpointHist        # Flag to state if view_hist was computed and set (default=true)\n\
ViewpointHist view_hist\n\
\n\
bool setOtherFeatures        # Flag to state if other features were computed and set (default=false)\n\
OtherFeatures other\n\
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
MSG: geometry_msgs/Transform\n\
# This represents the transform between two coordinate frames in free space.\n\
\n\
Vector3 translation\n\
Quaternion rotation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
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
MSG: hlpr_perception_msgs/BasicFeatures\n\
# Raw point Related\n\
\n\
# Cluster centroid, min, max and number of points\n\
geometry_msgs/Vector3 points_centroid\n\
geometry_msgs/Vector3 points_min   #<pc min x, pc min y, pc min z>\n\
geometry_msgs/Vector3 points_max   #<pc max x, pc max y, pc max z>\n\
\n\
bool setNumPoints                # flag is required for planes as they only have contours, \n\
float64 num_points               # the num_points is not applicable to planes\n\
\n\
# Average color (RGBA and hue)\n\
std_msgs/ColorRGBA rgba_color\n\
float64 hue\n\
\n\
================================================================================\n\
MSG: std_msgs/ColorRGBA\n\
float32 r\n\
float32 g\n\
float32 b\n\
float32 a\n\
\n\
================================================================================\n\
MSG: hlpr_perception_msgs/OrientedBoundingBox\n\
#Oriented Bounding box\n\
\n\
#position wrt sensor \n\
geometry_msgs/Vector3 bb_center\n\
\n\
# Bounding box dimensions\n\
geometry_msgs/Vector3 bb_dims\n\
\n\
#Bounding box quaternion\n\
geometry_msgs/Quaternion bb_rot_quat\n\
\n\
================================================================================\n\
MSG: hlpr_perception_msgs/ColorHist\n\
# Hue-Saturation histogram\n\
\n\
uint32 hs_features_size\n\
float64[] hs_feature_vector\n\
\n\
\n\
================================================================================\n\
MSG: hlpr_perception_msgs/ShapeHist\n\
# Shape histogram using CVFH\n\
\n\
uint32 cvfh_features_size\n\
float64[] cvfh_feature_vector\n\
\n\
#################################\n\
# Shape histogram using FPFH\n\
\n\
uint32 fpfh_features_size\n\
float64[] fpfh_feature_vector\n\
\n\
================================================================================\n\
MSG: hlpr_perception_msgs/ViewpointHist\n\
# VFH features\n\
\n\
uint32 vfh_features_size\n\
float64[] vfh_feature_vector\n\
\n\
\n\
================================================================================\n\
MSG: hlpr_perception_msgs/OtherFeatures\n\
#Other features, etc. Unpacking will be on the other side\n\
\n\
uint32 other_features_size\n\
float64[] data\n\
";
  }

  static const char* value(const ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.transform);
      stream.next(m.basicInfo);
      stream.next(m.obb);
      stream.next(m.setColorHist);
      stream.next(m.hs_hist);
      stream.next(m.setShapeHist);
      stream.next(m.shape_hist);
      stream.next(m.setViewpointHist);
      stream.next(m.view_hist);
      stream.next(m.setOtherFeatures);
      stream.next(m.other);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjectFeatures_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hlpr_perception_msgs::ObjectFeatures_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "transform: ";
    s << std::endl;
    Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "  ", v.transform);
    s << indent << "basicInfo: ";
    s << std::endl;
    Printer< ::hlpr_perception_msgs::BasicFeatures_<ContainerAllocator> >::stream(s, indent + "  ", v.basicInfo);
    s << indent << "obb: ";
    s << std::endl;
    Printer< ::hlpr_perception_msgs::OrientedBoundingBox_<ContainerAllocator> >::stream(s, indent + "  ", v.obb);
    s << indent << "setColorHist: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.setColorHist);
    s << indent << "hs_hist: ";
    s << std::endl;
    Printer< ::hlpr_perception_msgs::ColorHist_<ContainerAllocator> >::stream(s, indent + "  ", v.hs_hist);
    s << indent << "setShapeHist: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.setShapeHist);
    s << indent << "shape_hist: ";
    s << std::endl;
    Printer< ::hlpr_perception_msgs::ShapeHist_<ContainerAllocator> >::stream(s, indent + "  ", v.shape_hist);
    s << indent << "setViewpointHist: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.setViewpointHist);
    s << indent << "view_hist: ";
    s << std::endl;
    Printer< ::hlpr_perception_msgs::ViewpointHist_<ContainerAllocator> >::stream(s, indent + "  ", v.view_hist);
    s << indent << "setOtherFeatures: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.setOtherFeatures);
    s << indent << "other: ";
    s << std::endl;
    Printer< ::hlpr_perception_msgs::OtherFeatures_<ContainerAllocator> >::stream(s, indent + "  ", v.other);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HLPR_PERCEPTION_MSGS_MESSAGE_OBJECTFEATURES_H