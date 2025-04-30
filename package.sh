#!/bin/bash

#packages to install

packages=(
    tmux
    htop
    wget
    tree
    net-tools
)

#Updating packages
echo "Updating packages List....."
sudo apt update

for package in "${packages[@]}"; do
    echo "Installing $package...."
    sudo apt install -y "$package"
done

echo "All selected packages installed!" 

