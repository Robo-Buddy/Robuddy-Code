# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rail_manipulation_msgs/GripperGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GripperGoal(genpy.Message):
  _md5sum = "ba8c137093baeeb86c98d9ca45e7e1d4"
  _type = "rail_manipulation_msgs/GripperGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
bool close      # True for close gripper, false for open gripper
float64 speed   # Speed the gripper should move at, in the gripper's preferred units
float64 force   # Force the gripper should move at, in the gripper's preferred units
"""
  __slots__ = ['close','speed','force']
  _slot_types = ['bool','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       close,speed,force

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GripperGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.close is None:
        self.close = False
      if self.speed is None:
        self.speed = 0.
      if self.force is None:
        self.force = 0.
    else:
      self.close = False
      self.speed = 0.
      self.force = 0.

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
      buff.write(_struct_B2d.pack(_x.close, _x.speed, _x.force))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 17
      (_x.close, _x.speed, _x.force,) = _struct_B2d.unpack(str[start:end])
      self.close = bool(self.close)
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
      buff.write(_struct_B2d.pack(_x.close, _x.speed, _x.force))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 17
      (_x.close, _x.speed, _x.force,) = _struct_B2d.unpack(str[start:end])
      self.close = bool(self.close)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_B2d = struct.Struct("<B2d")