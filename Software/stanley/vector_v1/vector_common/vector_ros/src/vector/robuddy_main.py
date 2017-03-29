#!/usr/bin/env python


#Maintainer: Selma Wanna, slwanna@utexas.edu

"""------------------------------------------------
\file    robuddy_main.py

\brief    This node is used to run the state machine for the robot butler senior design project
          for the Longhorn Maker Studios 

\Platform: Linux/ROS Indigo
------------------------------------------------"""
#!/usr/bin/env python

import roslib
import rospy
import smach
import smach_ros
from std_msgs.msg import Bool, Int32 
from move_base import VectorMoveBase
import actionlib
from move_base_msgs.msg import *

class Idle(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['request_received'],input_keys=['request_made_in'], output_keys=['request_made_out'])
    
    def execute(self, userdata):
        rospy.loginfo('Executing state Idle')
        while not userdata.request_made_in:
            pass
        rospy.loginfo("Received Request")
        userdata.request_made_out = True
        return 'request_received'

class Receiving(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['item_loaded'], input_keys=['button_in'], output_keys=['button_out'])
        
    def execute(self, userdata):
        rospy.loginfo('Executing state Receiving')
        while not userdata.button_in:  
            pass
        userdata.button_out = False
        return 'item_loaded'

class Delivering(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['idle'], input_keys=['button_in', 'waypoint_in'], output_keys=['button_out', 'waypoint_out', 'request_made'])
        
    def execute(self, userdata):
        rospy.loginfo('Executing state Delivering')
        while not userdata.waypoint_in:
            pass
        robotGoal._run_to_waypoint(userdata.waypoint_in)
        rospy.loginfo('REACHED POINT')
        while not userdata.button_in:       
            pass
        userdata.button_out = False
        userdata.waypoint_out = 0
        robotGoal._run_to_waypoint(0)   
        rospy.loginfo('REACHED HOME')
        userdata.request_made = False
        return 'idle'

""" Fake Topics to Simulate Table Requests """
def fake_button_cb(data): #Button Signals when Items are Loaded and Received on the Robot
    rospy.loginfo("button pressed")
    sm.userdata.sm_button = data.data

def fake_wp_cb(data): #Waypoint provides an index so we can search the goal file for the right table location to go to
    rospy.loginfo("waypoint received")
    sm.userdata.sm_waypoint = data.data

def fake_request_cb(data): #Request lets us know when we've started a task
    rospy.loginfo("request received")
    sm.userdata.sm_request = data.data 

def main():
    rospy.init_node('robuddy_fsm')
    rospy.Subscriber("fake_button", Bool, fake_button_cb)
    rospy.Subscriber("fake_waypoint", Int32, fake_wp_cb)
    rospy.Subscriber("fake_request", Bool, fake_request_cb)
    global robotGoal
    robotGoal = VectorMoveBase()
#    robotGoal._run_to_waypoint(1)
#    rospy.loginfo("_run_waypoints should be complete")

    # Create a SMACH state machine

    global sm 
    sm = smach.StateMachine(outcomes = ['Selma'])
    rospy.loginfo("sm ought to be defined")
    sm.userdata.sm_button = False
    sm.userdata.sm_waypoint = 0
    sm.userdata.sm_request = False


#    robotGoal = NavigationGoal() #will use waypoint and goal parsing from this file!! (not complete)
    # Open the container
    with sm:
        # Add states to the container
        smach.StateMachine.add('IDLE', Idle(),transitions={'request_received':'RECEIVING'}, remapping={'request_made_in':'sm_request','request_made_out':'sm_request'})
        smach.StateMachine.add('RECEIVING', Receiving(), transitions={'item_loaded':'DELIVERING'}, remapping={'button_in':'sm_button', 'button_out':'sm_button'})
	smach.StateMachine.add('DELIVERING', Delivering(), transitions={'idle':'IDLE'}, remapping={'button_in':'sm_button', 'button_out':'sm_button', 'waypoint_in':'sm_waypoint','waypoint_out':'sm_waypoint', 'request_made':'sm_request'})


    # Execute SMACH plan
    outcome = sm.execute()



if __name__ == '__main__':
    main()
