#!/usr/bin/env bash

#This script is meant for clean up.
#Delete the sudoers file entry for user totoro.
#using userdel -r to remove homedir and files

head -n -1 /etc/sudoers > temp_sudoers 
mv temp_sudoers /etc/sudoers
userdel -r totoro
