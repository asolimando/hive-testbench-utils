#!/bin/bash
FILE=${1:-"$HOME/out_dir/ALL-FULL.json"}

jq -r .recommended_views[].name < $FILE > /tmp/views.txt
