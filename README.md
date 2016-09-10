# AADL Public Stations

This repository contains basic configuration and policies for running our newer ubuntu-based public stations.

### About the platform

* Ubuntu server w/ minimal window manager for screensaver options
* LXC container with a MATE desktop and various applications
* Scripts to run an ephemerial clone of the container for each session
* Ansible for config management

### LXC Image

Working on possible ways of tracking changes in the image (~6-7G tree). You can get the current image from S3 here: https://s3.amazonaws.com/aadl-github/container_fs.tar.gz

To use it create a directory as `root` at `/var/lib/lxc/public-desktop` on the host. Put the image tarball into that directory and run `tar --numeric-owner -xzvf container_fs.tar.gz`. The numeric-owner option is important as LXC has issues when the permissions of the tree are off at all.

### Using the code

* While the ansible playbook will be pretty specific to our needs it should be easily modified to other places.

### Testing with Vagrant

Will work on creating a vagrant file for this set up. Have had issues getting the TTYs working.

### Contributing

If you use these stations please feel free to open an issue with suggestions or areas for improvement. 

Note the following: The image right now is basic and will be going through many iterations. Looking at options of putting the image under control for easier tracking of changes.
