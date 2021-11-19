#!/bin/bash
db_name=${db_name:-"tpcds_bin_partitioned_orc_2"}

while read v; do
  echo "Disabling view ${v} in DB ${db_name}"
  beeline -n hive -u 'jdbc:hive2://localhost:2181/;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2?tez.queue.name=default' -e "ALTER MATERIALIZED VIEW ${db_name}.${v} DISABLE REWRITE"
done </tmp/views.txt
