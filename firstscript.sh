#!/bin/bash

### this script prints system info ###
echo "#########################################"
echo "Welcome to Bash Script!"
echo

# print system uptime
echo "#########################################"
echo "Uptime of the system is"
uptime
echo 

# print memory utilization
echo "#########################################"
echo "Memory Utilization"
free -m
echo

# print disk utilization
echo "#########################################"
echo "Disk Utilization"
df -h
echo

