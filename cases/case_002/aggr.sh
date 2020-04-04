#!/bin/bash

set -eu

for script in main_go main_nim_1.0.2 main_nim_1.2.0 main_nim_1.2.0_arc main.py main.rb; do
  cat result/$script/*.txt |
    grep real |
    sed 's/0m//g;s/s//g' |
    awk -v l=$script '{ sum += $2 } END{ print "|", l, "|", sum / NR, "|" }'
done | awk 'BEGIN{ print "|language|time (sec)|"; print "|--:|:--|" } {print $0}'
