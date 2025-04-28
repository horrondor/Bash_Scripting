#!/bin/bash

#A simple Bash script to create a user, set a password, and add to a group:

read -p "Enter username:" user
sudo useradd -m "$user"
sudo passwd "$user"
sudo usermod -aG sudo "$user"
echo "User $user created and added to sudo group!"