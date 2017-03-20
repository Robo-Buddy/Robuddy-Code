# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from wpi_jaco_msgs/HomeArmGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import wpi_jaco_msgs.msg

class HomeArmGoal(genpy.Message):
  _md5sum = "5cc54d6dce7b985a5f2ef59749e9444c"
  _type = "wpi_jaco_msgs/HomeArmGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
bool retract                                  # set to true to retract arm to a given position after moving home
wpi_jaco_msgs/AngularCommand retractPosition  # position to which the arm should retract (only if retract is true)
int16 numAttempts                                # attempts for moving to given joint pose (only used in motion planning versions)

================================================================================
MSG: wpi_jaco_msgs/AngularCommand
bool position       # true for a position command, false for a velocity command
bool armCommand     # true if this command includes arm joint inputs
bool fingerCommand  # true if this command includes finger inputs
bool repeat         # true if the command should be repeatedly sent over a short interval
float32[] joints    # position (rad) or velocity (rad/s) arm command
float32[] fingers   # position (rad) or velocity (rad/s) finger command
"""
  __slots__ = ['retract','retractPosition','numAttempts']
  _slot_types = ['bool','wpi_jaco_msgs/AngularCommand','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       retract,retractPosition,numAttempts

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(HomeArmGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.retract is None:
        self.retract = False
      if self.retractPosition is None:
        self.retractPosition = wpi_jaco_msgs.msg.AngularCommand()
      if self.numAttempts is None:
        self.numAttempts = 0
    else:
      self.retract = False
      self.retractPosition = wpi_jaco_msgs.msg.AngularCommand()
      self.numAttempts = 0

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
      buff.write(_struct_5B.pack(_x.retract, _x.retractPosition.position, _x.retractPosition.armCommand, _x.retractPosition.fingerCommand, _x.retractPosition.repeat))
      length = len(self.retractPosition.joints)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.retractPosition.joints))
      length = len(self.retractPosition.fingers)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.retractPosition.fingers))
      buff.write(_struct_h.pack(self.numAttempts))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.retractPosition is None:
        self.retractPosition = wpi_jaco_msgs.msg.AngularCommand()
      end = 0
      _x = self
      start = end
      end += 5
      (_x.retract, _x.retractPosition.position, _x.retractPosition.armCommand, _x.retractPosition.fingerCommand, _x.retractPosition.repeat,) = _struct_5B.unpack(str[start:end])
      self.retract = bool(self.retract)
      self.retractPosition.position = bool(self.retractPosition.position)
      self.retractPosition.armCommand = bool(self.retractPosition.armCommand)
      self.retractPosition.fingerCommand = bool(self.retractPosition.fingerCommand)
      self.retractPosition.repeat = bool(self.retractPosition.repeat)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.retractPosition.joints = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.retractPosition.fingers = struct.unpack(pattern, str[start:end])
      start = end
      end += 2
      (self.numAttempts,) = _struct_h.unpack(str[start:end])
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
      buff.write(_struct_5B.pack(_x.retract, _x.retractPosition.position, _x.retractPosition.armCommand, _x.retractPosition.fingerCommand, _x.retractPosition.repeat))
      length = len(self.retractPosition.joints)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.retractPosition.joints.tostring())
      length = len(self.retractPosition.fingers)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.retractPosition.fingers.tostring())
      buff.write(_struct_h.pack(self.numAttempts))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.retractPosition is None:
        self.retractPosition = wpi_jaco_msgs.msg.AngularCommand()
      end = 0
      _x = self
      start = end
      end += 5
      (_x.retract, _x.retractPosition.position, _x.retractPosition.armCommand, _x.retractPosition.fingerCommand, _x.retractPosition.repeat,) = _struct_5B.unpack(str[start:end])
      self.retract = bool(self.retract)
      self.retractPosition.position = bool(self.retractPosition.position)
      self.retractPosition.armCommand = bool(self.retractPosition.armCommand)
      self.retractPosition.fingerCommand = bool(self.retractPosition.fingerCommand)
      self.retractPosition.repeat = bool(self.retractPosition.repeat)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.retractPosition.joints = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.retractPosition.fingers = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 2
      (self.numAttempts,) = _struct_h.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_h = struct.Struct("<h")
_struct_5B = struct.Struct("<5B")
