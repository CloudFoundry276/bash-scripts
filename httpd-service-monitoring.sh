#!/bin/bash

echo "######################################################################"
date
ls /var/run/httpd/httpd.pid &> /dev/null

if [ $? -eq 0 ]
then
    echo "HTTPD Process is Running"
else
    echo "HTTPD Process is Not Running"
    echo "Starting the Process"
    sudo systemctl start httpd

    if [ $? -eq 0 ]
    then
        echo "HTTPD Process Started Successfully"
    else
        echo "HTTPD Process Starting Failed! Please Contact Admin"
    fi
fi
echo "######################################################################"
echo

