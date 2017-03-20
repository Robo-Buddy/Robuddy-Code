;; Auto-generated. Do not edit!


(when (boundp 'hlpr_perception_msgs::SegClusters)
  (if (not (find-package "HLPR_PERCEPTION_MSGS"))
    (make-package "HLPR_PERCEPTION_MSGS"))
  (shadow 'SegClusters (find-package "HLPR_PERCEPTION_MSGS")))
(unless (find-package "HLPR_PERCEPTION_MSGS::SEGCLUSTERS")
  (make-package "HLPR_PERCEPTION_MSGS::SEGCLUSTERS"))

(in-package "ROS")
;;//! \htmlinclude SegClusters.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hlpr_perception_msgs::SegClusters
  :super ros::object
  :slots (_header _clusters _normals _plane _cluster_ids ))

(defmethod hlpr_perception_msgs::SegClusters
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:clusters __clusters) (let (r) (dotimes (i 0) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
    ((:normals __normals) (let (r) (dotimes (i 0) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
    ((:plane __plane) (instance std_msgs::Float32MultiArray :init))
    ((:cluster_ids __cluster_ids) (let (r) (dotimes (i 0) (push (instance hlpr_perception_msgs::ClusterIndex :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _clusters __clusters)
   (setq _normals __normals)
   (setq _plane __plane)
   (setq _cluster_ids __cluster_ids)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:clusters
   (&rest __clusters)
   (if (keywordp (car __clusters))
       (send* _clusters __clusters)
     (progn
       (if __clusters (setq _clusters (car __clusters)))
       _clusters)))
  (:normals
   (&rest __normals)
   (if (keywordp (car __normals))
       (send* _normals __normals)
     (progn
       (if __normals (setq _normals (car __normals)))
       _normals)))
  (:plane
   (&rest __plane)
   (if (keywordp (car __plane))
       (send* _plane __plane)
     (progn
       (if __plane (setq _plane (car __plane)))
       _plane)))
  (:cluster_ids
   (&rest __cluster_ids)
   (if (keywordp (car __cluster_ids))
       (send* _cluster_ids __cluster_ids)
     (progn
       (if __cluster_ids (setq _cluster_ids (car __cluster_ids)))
       _cluster_ids)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/PointCloud2[] _clusters
    (apply #'+ (send-all _clusters :serialization-length)) 4
    ;; sensor_msgs/PointCloud2[] _normals
    (apply #'+ (send-all _normals :serialization-length)) 4
    ;; std_msgs/Float32MultiArray _plane
    (send _plane :serialization-length)
    ;; hlpr_perception_msgs/ClusterIndex[] _cluster_ids
    (apply #'+ (send-all _cluster_ids :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/PointCloud2[] _clusters
     (write-long (length _clusters) s)
     (dolist (elem _clusters)
       (send elem :serialize s)
       )
     ;; sensor_msgs/PointCloud2[] _normals
     (write-long (length _normals) s)
     (dolist (elem _normals)
       (send elem :serialize s)
       )
     ;; std_msgs/Float32MultiArray _plane
       (send _plane :serialize s)
     ;; hlpr_perception_msgs/ClusterIndex[] _cluster_ids
     (write-long (length _cluster_ids) s)
     (dolist (elem _cluster_ids)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/PointCloud2[] _clusters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _clusters (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _clusters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/PointCloud2[] _normals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _normals (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _normals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Float32MultiArray _plane
     (send _plane :deserialize buf ptr-) (incf ptr- (send _plane :serialization-length))
   ;; hlpr_perception_msgs/ClusterIndex[] _cluster_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cluster_ids (let (r) (dotimes (i n) (push (instance hlpr_perception_msgs::ClusterIndex :init) r)) r))
     (dolist (elem- _cluster_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hlpr_perception_msgs::SegClusters :md5sum-) "38727b412bf02284a892b2f6c9e62bcd")
(setf (get hlpr_perception_msgs::SegClusters :datatype-) "hlpr_perception_msgs/SegClusters")
(setf (get hlpr_perception_msgs::SegClusters :definition-)
      "# The following two are used to store clusters of objects
Header header
sensor_msgs/PointCloud2[] clusters
sensor_msgs/PointCloud2[] normals
std_msgs/Float32MultiArray plane
ClusterIndex[] cluster_ids

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
================================================================================
MSG: hlpr_perception_msgs/ClusterIndex
std_msgs/Int32[] indices

================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :hlpr_perception_msgs/SegClusters "38727b412bf02284a892b2f6c9e62bcd")


