TO INSTALL ROS:

First, download and install Ubuntu 14.04 64-bit: http://releases.ubuntu.com/14.04/ubuntu-14.04.5-desktop-amd64.iso 
(Note that this must be 64-bit, as the simulation will not work on a 32-bit installation).

When Ubuntu is successfully installed, open a terminal and input the following commands:

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116
sudo apt-get update
sudo apt-get install ros-indigo-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install python-rosinstall
sudo apt-get install git


This will download ROS Indigo and a collection of basic packages, including the Gazebo simulator and Git.



TO INSTALL THE ROBUDDY SIMULATION:

SET UP AN SSH KEY:
Set up a Github account if you do not already have one (https://github.com).
Generate an SSH key using the following instructions: https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
Add the SSH key to your Github account using the following instructions: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/ 

Vector Simulation Setup:
Follow the instructions at the following URL: https://github.com/HLP-R/hlpr_documentation/wiki/Vector-Simulation-Setup-Steps
Start from the “Install Additional Packages” header. This will install all of the packages you need to run the simulation, and set up a workspace for RoBuddy itself.

RoBuddy Software Install:
Run the following command from your home directory (or any other directory desired):
git clone https://github.com/Robo-Buddy/Robuddy

This will download the modified RoBuddy software folder, as well as various example testing files and the script to launch the full system.

Replace the Software folder you set up in “Vector Simulation Setup” with the Software folder you just cloned. This will copy the modified RoBuddy files over the default ones.

To run the simulation from this point, launch the script in the “Full System Launch Script” folder.
