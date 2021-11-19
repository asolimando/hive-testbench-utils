#!/bin/bash

export MY_IP=`pinky | grep root | awk '{ print $6 }'`

cd ~

echo "Transfer needed files from the client"
scp asolimando@$MY_IP:'/Users/asolimando/Documents/advisor/lib.zip /Users/asolimando/git/workload-insights/wi /Users/asolimando/git/workload-insights/target/workload-insights-1.0-SNAPSHOT.jar' .

echo "Set variables"
export PATH=$PATH:/usr/java/jdk1.8.0_232-cloudera/bin
export WI_HOME=~

echo "Unpack libraries and cleanup"
unzip lib.zip
rm lib.zip

echo "Setup completed!"
