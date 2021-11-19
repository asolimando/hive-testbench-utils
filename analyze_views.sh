#!/bin/bash
db_name=${db_name:-"tpcds_bin_partitioned_orc_2"}

while read v; do
  echo "Analyze ${v} in DB ${db_name}"
  beeline -n hive -u 'jdbc:hive2://localhost:2181/;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2?tez.queue.name=default' -e "analyze table ${db_name}.${v} compute statistics for columns"
done </tmp/views.txt
