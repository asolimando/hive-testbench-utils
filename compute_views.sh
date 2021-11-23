#!/bin/bash
db_name=${db_name:-"tpcds_bin_partitioned_orc_2"}

cd ~

./wi -i "${HOME}/hive-testbench/sample-queries-tpcds/" -u "jdbc:hive2://localhost:2181/${db_name};serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2?tez.queue.name=default" -n hdfs -f JSON -l FULL -o ${HOME}/out_dir
