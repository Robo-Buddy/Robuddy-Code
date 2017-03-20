# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hlpr_knowledge_retrieval/ObjectKnowledge.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import hlpr_knowledge_retrieval.msg
import std_msgs.msg

class ObjectKnowledge(genpy.Message):
  _md5sum = "24ebd4464299d72b0a523b08cac62371"
  _type = "hlpr_knowledge_retrieval/ObjectKnowledge"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
std_msgs/String[] labels
ObjectKnowledgeArray[] knowledge

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
MSG: std_msgs/String
string data

================================================================================
MSG: hlpr_knowledge_retrieval/ObjectKnowledgeArray
std_msgs/String[] data
"""
  __slots__ = ['header','labels','knowledge']
  _slot_types = ['std_msgs/Header','std_msgs/String[]','hlpr_knowledge_retrieval/ObjectKnowledgeArray[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,labels,knowledge

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ObjectKnowledge, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.labels is None:
        self.labels = []
      if self.knowledge is None:
        self.knowledge = []
    else:
      self.header = std_msgs.msg.Header()
      self.labels = []
      self.knowledge = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.labels:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.knowledge)
      buff.write(_struct_I.pack(length))
      for val1 in self.knowledge:
        length = len(val1.data)
        buff.write(_struct_I.pack(length))
        for val2 in val1.data:
          _x = val2.data
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.labels is None:
        self.labels = None
      if self.knowledge is None:
        self.knowledge = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.labels = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8')
        else:
          val1.data = str[start:end]
        self.labels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.knowledge = []
      for i in range(0, length):
        val1 = hlpr_knowledge_retrieval.msg.ObjectKnowledgeArray()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.data = []
        for i in range(0, length):
          val2 = std_msgs.msg.String()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.data = str[start:end].decode('utf-8')
          else:
            val2.data = str[start:end]
          val1.data.append(val2)
        self.knowledge.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.labels:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.knowledge)
      buff.write(_struct_I.pack(length))
      for val1 in self.knowledge:
        length = len(val1.data)
        buff.write(_struct_I.pack(length))
        for val2 in val1.data:
          _x = val2.data
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          if python3:
            buff.write(struct.pack('<I%sB'%length, length, *_x))
          else:
            buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.labels is None:
        self.labels = None
      if self.knowledge is None:
        self.knowledge = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.labels = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8')
        else:
          val1.data = str[start:end]
        self.labels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.knowledge = []
      for i in range(0, length):
        val1 = hlpr_knowledge_retrieval.msg.ObjectKnowledgeArray()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.data = []
        for i in range(0, length):
          val2 = std_msgs.msg.String()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.data = str[start:end].decode('utf-8')
          else:
            val2.data = str[start:end]
          val1.data.append(val2)
        self.knowledge.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
