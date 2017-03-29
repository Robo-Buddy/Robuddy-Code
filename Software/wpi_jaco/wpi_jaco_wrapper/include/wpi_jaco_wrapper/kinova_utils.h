/*!
 * \kinova_utils.h
 * Utilities to interface with the Kinova API for gravity compensation.
 *
 * \author Baris Akgun, GT - barisakgun@gmail.com
 */

#ifndef KINOVA_UTILIES_H_
#define KINOVA_UTILIES_H_

#include <ros/ros.h>
#include <wpi_jaco_msgs/GravComp.h>
#include <jaco_sdk/Kinova.API.UsbCommandLayerUbuntu.h>

enum ControlType  { CARTESIAN = 0, ANGULAR };
enum GravCompType { FF_G_TORQUE = 0, ADMITTANCE };

class KinovaAPINotInitException : public std::exception
{
  virtual const char* what() const throw()
  {
    return "Kinova API was not initialized correctly";
  }
} kinApiNotInit;

class KinovaUtils {

private:
  bool is_initialized;
  void initialize();

  float grav_params[OPTIMAL_Z_PARAM_SIZE];
  GravCompType gc_type;
  float zero_torque_command[COMMAND_SIZE];

public:
  KinovaUtils();
  KinovaUtils(bool isInit);
  ~KinovaUtils();

  void init();
  void init_vars();
  bool isInit() {return is_initialized;}

/* Gravity variables */
  bool readGravityParams(const char *fileName, bool echo_params = false);
  float *getGravityParams() {return grav_params;}
  //sets it to optimal if file exists and is okay, manual otherwise
  bool setGravityWithParams(const char *fileName);

  void move_home();
/* Admittance Stuff */


/* Higher Level */
  void setGravCompMethod(GravCompType gct);
  void setGravCompMethod(int gct);
  void enableGravComp();
  void disableGravComp();
};

#endif
