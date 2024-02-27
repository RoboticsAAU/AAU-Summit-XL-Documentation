#!/usr/bin/env python

from ..command_subscriber_interface import *


class BoolSubscriberInterface(CommandSubscriberInterface):
    def __init__(self, name, parameters):
        CommandSubscriberInterface.__init__(self, name, parameters)
        
        self.args_description = ['expected_value']
        self.args_types = [bool]
        self.args_void_allowed = [False, False, False, False, False]

    def set_parameters(self, parameters):
        '''
            Set all the required parameters of the interface
        '''
        CommandSubscriberInterface.set_parameters(self, parameters)
    
    def build_msg(self, args):
        '''
            Return the desired goal or None
        '''
        if type(args) == list:
            self.desired_value = args[0]

    def data_callback(self, msg):
        self.data = msg.data
