#!/bin/bash
FILE=${1:-"~/out_dir/ALL-FULL.json"}

jq -r .recommended_views[].name < $FILE > /tmp/views.txt
