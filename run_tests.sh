#!/bin/bash
DATASET=${1:-"tpcds"}
SCALE=${2:-2}
REPETITIONS=${3:-10}

cd ~/hive-testbench

for i in `seq 1 $REPETITIONS`; do
  echo Start run $i
  ./runSuite.pl $DATASET $SCALE > ~/$DATASET_$SCALE_run_$i.csv
  echo End run $i
done
