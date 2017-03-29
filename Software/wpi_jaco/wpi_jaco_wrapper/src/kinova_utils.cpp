#include <wpi_jaco_wrapper/kinova_utils.h>

using namespace std;

KinovaUtils::KinovaUtils()
{
  is_initialized = false;
}

KinovaUtils::KinovaUtils(bool isInit)
{
  is_initialized = false;
  if (isInit)
  {
    init();
  }
}

void KinovaUtils::init()
{
  init_vars();
  initialize();
}

void KinovaUtils::init_vars()
{
  gc_type = FF_G_TORQUE;
  for (int i = 0; i < COMMAND_SIZE; i++)
  {
    zero_torque_command[i] = 0;
  }
}

KinovaUtils::~KinovaUtils()
{
 StopControlAPI();
  CloseAPI();
}

bool KinovaUtils::readGravityParams(const char *fileName, bool echo_params)
{
  FILE *paramFile;
  paramFile = fopen(fileName, "r");
  if(paramFile == NULL)
  {
    std::cout << "Cannot open the file, using the default values" << std::endl;
    return false;
  }

  for(int i = 0; i < OPTIMAL_Z_PARAM_SIZE; i++)
  {
    if(fscanf(paramFile, "%f", grav_params+i) == 0)
    {
      std::cout << "Something is wrong" << std::endl;
      return false;
    }
  }
  
  if(echo_params)
  {
    for(int i = 0; i < OPTIMAL_Z_PARAM_SIZE; i++)
    {
     printf("%d/%d: %f\n", i+1, OPTIMAL_Z_PARAM_SIZE, grav_params[i]);
    }
  }
  std::cout << "Successfully loaded parameters" << std::endl;
  
  return true;
}

bool KinovaUtils::setGravityWithParams(const char *fileName)
{
  if(readGravityParams(fileName))
  {
    SetGravityOptimalZParam(grav_params);
    SetGravityType(OPTIMAL);
    return true;
  }    
  else
  {
    SetGravityType(MANUAL_INPUT);
    return false;
  }
}

void KinovaUtils::initialize()
{
  int result = InitAPI();
  int resultComm;
  AngularPosition DataCommand;
  // Get the angular command to test the communication with the robot
  resultComm = GetAngularCommand(DataCommand);
  std::cout << "Initialization's result :" << result << std::endl;
  std::cout << "Communication result :" << resultComm << std::endl;
  // If the API is initialized and the communication with the robot is working
  if (result == 1 && resultComm == 1)
  {
    is_initialized = true;
    StartControlAPI();
  }
  else
  {
    std::cout << "API initialization failed" << std::endl;
    throw kinApiNotInit;
  }
}

void KinovaUtils::move_home()
{
  StopControlAPI();
  MoveHome();
  StartControlAPI();
}

void KinovaUtils::setGravCompMethod(GravCompType gct)
{
  gc_type = gct;
}

void KinovaUtils::setGravCompMethod(int gct)
{
  gc_type = static_cast<GravCompType>(gct);
}

void KinovaUtils::enableGravComp()
{
  switch(gc_type)
  {
    case ADMITTANCE:
      ROS_INFO("Setting gc as admittance");
      StartForceControl();
      break;
    case FF_G_TORQUE:
    default:
      ROS_INFO("Setting gc as feed forward gravity torques");
      SetTorqueControlType(DIRECTTORQUE);
      SetTorqueSafetyFactor(1.0);
      SetTorqueVibrationController(0.5);
      SetTorqueRobotProtection(1);
      SwitchTrajectoryTorque(TORQUE);
      SendAngularTorqueCommand(zero_torque_command);
  }
}

void KinovaUtils::disableGravComp()
{
  switch(gc_type)
  {
    case ADMITTANCE:
      ROS_INFO("Stopping admittance");
      StopForceControl();
      break;
    case FF_G_TORQUE:
    default:
      ROS_INFO("Stopping torque mode for gc");
      SetTorqueRobotProtection(2);
      SetTorqueSafetyFactor(0.6);
      SwitchTrajectoryTorque(POSITION);
  }
}

