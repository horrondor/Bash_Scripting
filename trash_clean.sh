#!/bin/bash

#exit on error
set -e

echo "Cleaning up system"

#Delete thumbnail cache
rm -rf ~/.cache/thumbnails/*

#clean apt clean 
sudo apt clean

#Autoremove
sudo apt autoremove

#remove trash
rm -rf ~/.local/share/Trash/files/*

if [ $? -eq 0 ]; then
    echo "clean up successfull"
else
    echo "clean up unsuccessfull"    
fi