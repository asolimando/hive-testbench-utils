#!/bin/bash

export MY_IP=`pinky | grep root | awk '{ print $6 }'`

echo "Transfer test results file to the client"
scp ~/*_run_*.csv asolimando@$MY_IP:/Users/asolimando

echo "Removing local copy of test results files"
rm ~/*_run_*.csv

echo "Done"
