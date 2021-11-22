#!/bin/bash

export MY_IP=`pinky | grep root | awk '{ print $6 }'`

cd ~

echo "Transfer needed files from the client"
scp asolimando@$MY_IP:'/Users/asolimando/Documents/advisor/lib.zip /Users/asolimando/Documents/advisor/wi /Users/asolimando/git/workload-insights/target/workload-insights-1.0-SNAPSHOT.jar' .

echo "Setting JDK"
export PATH=$PATH:/usr/java/jdk1.8.0_232-cloudera/bin

echo "Unpack libraries and cleanup"
unzip lib.zip
rm lib.zip

echo "Clone hive-testbench project"
git clone https://github.com/asolimando/hive-testbench.git

echo "Building hive-testbench binaries"
cd ~/hive-testbench
./tpcds-build.sh

echo "Setup completed!"
echo "Now create data by running: ~/hive-testbench/tpcds-setup.sh $SCALE"
