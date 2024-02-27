Getting Started
===============

.. autosummary::
    :toctree: generated

To get started with the robot you need to make sure that you have the following dependencies installed on your pc:

- ROS Melodic 
- Ubuntu 18.04

.. note::

    You may prefer to use Docker to containerize the development environment. If you are interested in using Docker, please refer to the :doc:`docker` section.


Robot startup
-------------
To start up the robot, please refer to this image:

.. image:: images/rear_io_panel.png
    :width: 600
    :alt: Rear IO panel of the robot with labels.

1. Rotate the power switch (2) to the ON position.

2. The CPU button (3) will turn green when the onboard computer is powered on.

3. Connect a monitor, keyboard and mouse to the onboard computer using the HDMI and USB ports (7).

4. The robot will boot up and the robot's computer will automatically start ROS and the robot's packages. For this automatic startup sequence please refer to the :doc:`automatic_ros_startup` section.

5. Once the robot is booted up, you can see the robot's manual on the desktop. Please read this manual carefully before proceeding.

6. At this point, you can turn on the provided PS4 controller by pressing the PS button. The controller will automatically connect to the robot's computer. To drive the robot, you must keep the `R1` button preessed. To activate the omnidirectional drive, press `o`, and you can increase/decrese the speed using the triangle and cross buttons respectively.


Robot Network setup
-------------------

1. Connect to the robot's wifi network. The robot's wifi network is called ``shl00-210420ab`` and the password is ``R0b0tn1K``.

2. Add the hostname and IP of your PC to the robot's ``/etc/hosts`` file. This is necessary for the robot to be able to communicate with your PC. You can do this using vim or nano:  



.. code-block:: bash

    sudo vim /etc/hosts

or

.. code-block:: bash

    sudo nano /etc/hosts

When inside the file, add the following line to the end of the second section of the file:

.. code-block:: text

    <your_ip> <your_pc_hostname>

This is important such that the robot can resolve your hostname to your IP address. You can find your IP address by running the following command:

.. code-block:: bash

    hostname -I

.. note:: 

    To use SSH, you must deactivate the firewall on the robot. You can do this by running the following command:

    .. code-block:: bash

        sudo ufw disable
    
    Even though it says that it is disabled after reboots, it is still active after a reboot. I have yet to find a solution to this problem.

Host Setup 
----------

1. Add the robot's hostname and IP to your PC's ``/etc/hosts`` file. The robots hostname and IP is as stated in the manual:

.. code-block:: text

    192.168.0.200 shl00-210420ab

2. Now you should be able to ping the robot from your PC:

.. code-block:: bash

    ping shl00-210420ab

And you can even list the topics being published by the robot:

.. code-block:: bash

    rostopic list 


