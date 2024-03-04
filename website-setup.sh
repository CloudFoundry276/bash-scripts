#!/bin/bash

# Installing Dependencies
echo "#######################################################"
echo "Installing Packages"
echo "#######################################################"
sudo yum install wget unzip httpd -y > /dev/null
echo

# Start & Enable Apache(HTTPD) Service
echo "#######################################################"
echo "Start & Enable Apache(HTTPD) Service"
echo "#######################################################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo

# Creating Temp Directory
echo "#######################################################"
echo "Starting Artifact Deployment"
echo "#######################################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html/
echo

# Bounce Service
echo "#######################################################"
echo "Restarting Apache(HTTPD) Service"
echo "#######################################################"
sudo systemctl restart httpd
echo

# Cleaning Up
echo "#######################################################"
echo "Removing Temporary Files"
echo "#######################################################"
sudo rm -rf /tmp/webfiles
echo

sudo systemctl status httpd
ls /var/www/html/

