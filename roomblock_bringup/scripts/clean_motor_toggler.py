#!/usr/bin/env python

import rospy
from sensor_msgs.msg import Joy
from create_node.srv import SetCleanMotors

class CleanMotorToggler:
    def __init__(self):
        self.button_state = False
        self.clean_state = False

        self.service_name = rospy.get_param(
            'clean_motors_service', 'turtlebot_node/set_clean_motors')
        self.clean_button = rospy.get_param('clean_button_id', 0)
        self.sub = rospy.Subscriber('joy', Joy, self.callback)
        rospy.wait_for_service(self.service_name)
        try:
            self.set_clean_motors = rospy.ServiceProxy(
                self.service_name, SetCleanMotors)
        except rospy.ServiceException, e:
            print "Service call failed: %s" % e

    def callback(self, msg):
        if msg.buttons[self.clean_button]:
            if not self.button_state:
                self.button_state = True
            return
        if self.button_state:
            self.button_state = False
            self.clean_state = not self.clean_state
            self.set_clean_motors(False, self.clean_state, self.clean_state)

if __name__ == '__main__':
    rospy.init_node('clean_motor_toggler')
    node = CleanMotorToggler()
    rospy.on_shutdown(lambda : node.set_clean_motors(False, False, False))
    rospy.spin()
    
