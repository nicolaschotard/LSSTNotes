
Mount sps or afs (or any other disks)
=====================================

Install sshfs
-------------

Using apt-get, or yum, or dnf, you must install sshfs and fuse-sshfs.

Create directories
------------------

Create an empty directory in your home (or anywhere with the appropriate
rights

::

        mkdir ~/sps
        

Then you have to create a symbolic link in the root diretory pointing to
the previoulsy create directory. You will then be able to use /sps or
any other absolute path that you had at CC on you personnal computer.

::

        cd /
        ln -s /home/yourname/sps sps
     

Mount/unmount the disk
----------------------

You are now ready to work on your computer with your own soft bu with a
full access to the CC disks. To do so, mount /sps (or afs) the following
way:

::

        sshfs yourname@ccage.in2p3.fr:/sps ~/sps
        

Check that the disk is mounted

::

        ls /sps
        

This should give you the same output as if you were at CC. To unmount
the disk, use

::

        fusermount -u ~/sps
        

The same ``ls`` should give you an empty output.

Create aliases
--------------

In your .bashrc (cshrc, or anything that you load while opening your
terminal), added the following lines to mount/unmout the disks:

::

        alias msps="sshfs yourname@ccage.in2p3.fr:/sps ~/sps" 
        alias usps="fusermount -u ~/sps"
