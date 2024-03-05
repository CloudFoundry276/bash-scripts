#!/bin/bash

read -p "Enter a Number: " NUM
echo

if [ $NUM -gt 100 ]
then
    echo "We have entered in IF Block"
    sleep 3
    echo "Your Number is Greater Than 100"
    echo
    date
fi

echo "Script Execution Completed Successfully"

