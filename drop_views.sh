#!/bin/bash
db_name=${db_name:-"tpcds_bin_partitioned_orc_2"}

while read v; do
  echo "Dropping view ${v} in DB ${db_name}"
  beeline -n hive -u 'jdbc:hive2://localhost:2181/;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2?tez.queue.name=default' -e "DROP MATERIALIZED VIEW ${db_name}.${v}"
done </tmp/views.txt
