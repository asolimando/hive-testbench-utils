#!/bin/bash

OUT_DIR=${1:-"out_dir"}

cd ~

./wi -i "${HOME}/hive-testbench/sample-queries-tpcds/" -u "jdbc:hive2://localhost:2181/${db_name};serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2?tez.queue.name=default" -n hdfs -f JSON -l FULL -o ${HOME}/${OUT_DIR}
