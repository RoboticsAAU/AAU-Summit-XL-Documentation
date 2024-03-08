Robot Bringup
=============

For official documentation, Please visit the README.md file in ``summit_packages_release_melodic-devel/robot_bringup/README.md``

The Robot Bringup package is common configuration package that is suitable for use on all of Robotnik's Products. The objective of this package is to cover as much of the configuration parameters as possible. Therefore this package is a good starting point for any new user.

It contains the relevant environment variables required by the other Robotnik Packages. 

In addition it contains bringup files for all of the different components of the Robot.  

Installation
------------

When the robot is first build and ready to install software on it,   ``summit_packages_release_melodic`` is installed onto the onboard compututer. Then following the installation instructions in the README.md file in ``summit_packages_release_melodic-devel/robot_bringup/README.md`` will install the necessary Robot parameters on the computer. 

.. code-block:: bash

    #!/bin/bash
    source ~/catkin_ws/devel/setup.bash && roscd robot_bringup
    # Robot params
    cp -r env/ ~/robot_params

    # Boot scripts
    cp scripts/bringup.sh ~/
    cp scripts/ros_config.sh ~/

    # Boot service
    sudo cp scripts/bringup-ros.service /etc/systemd/system/
    sudo systemctl enable bringup-ros.service
    sudo systemctl start bringup-ros.service

    echo "source ~/ros_config.sh" >> ~/.bashrc


This code does a few things. It copies the environment variables to a folder called ``robot_params`` in the home directory. As mentioned, the ``/robot_params`` is the main configurable parameters that the user can tune as they desire.

Since the boot process needs to execute a few things, which is described in detail in :doc:`automatic_ros_startup`. The systemctl service needs to call ``bringup.sh``, where most of the startup happens among other things, this is where the roscore is executed. The ``ros_config.sh`` file is a helper file that sets up the environment variables for the user. The ``ros_config.sh`` file is then sourced in the ``.bashrc`` file so that the user can use the environment variables in the terminal and it displays some default information for the user.

It also copies the boot scripts to the home directory and the boot service to the ``/etc/systemd/system/`` directory. The boot service is then enabled and started such that it is persistent to autostart at every boot reboot of the summit robot. 
