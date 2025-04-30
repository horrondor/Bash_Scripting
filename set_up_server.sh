#!/bin/bash

#Exit on error
set -e

echo "Starting server setup"

# Update system
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

#Install essential tools
echo "Installing basic utilies..."
sudo apt install -y build-essential curl wget git unzip vim ufw fail2ban

# Install and configure Nginx
echo "Installing nginx"
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx


# Allow HTTP and HTTPS through UFW
echo "Configuring UFW firewall..."
sudo ufw allow OpenSSH
suo ufw allow 'Nginx full'
sudo ufw --force enable #--force is used to avoid prompt

#Allow fail2ban to protect SSH
echo "Configuring Fail2Ban..."
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

#Display public IP
IP=$(curl -s ifconfig.me)
echo "Server setup complete!"
echo "public IP: $IP"
echo "You should now be aable to visit http://$IP in your browser."


