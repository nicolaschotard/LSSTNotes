
Packages install
================

Install an alternate version of meas\_astrom
--------------------------------------------

Clone the repository

::

        git clone https://github.com/lsst/meas_astrom.git

Change branch if needed

::

        cd meas_astrom
        git checkout tickets/DM-6525
        

Install and set it up correctly

::

        setup -k -r .
        scons opt=3
        eups declare -r . -t your_login_name
        setup meas_astrom -t your_login_name
        
