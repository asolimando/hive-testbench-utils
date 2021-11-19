#!/bin/bash

export MY_IP=`pinky | grep root | awk '{ print $6 }'`

echo "Transfer test files to the client"
scp '~/*_run_*.csv ~/out_dir/ALL_FULL.json' asolimando@$MY_IP:/Users/asolimando

echo "Removing local copy of test files"
rm ~/*_run_*.csv

echo "Done"
