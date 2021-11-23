#!/bin/bash
db_name=${db_name:-"tpcds_bin_partitioned_orc_2"}
FILE=${1:-"$HOME/out_dir/ALL-FULL.json"}

beeline -n hive -u "jdbc:hive2://localhost:2181/$db_name;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2?tez.queue.name=default" -e "`jq -r .recommended_views[].sql < $FILE`"
