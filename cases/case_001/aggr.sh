#!/bin/bash

set -eu

for l in go nim_1.0.2 nim_1.2.0 nim_1.2.0_arc python; do
  cat result/$l/*.txt |
    grep real |
    sed 's/0m//g;s/s//g' |
    awk -v l=$l '{ sum += $2 } END{ print "|", l, "|", sum / NR, "|" }'
done | awk 'BEGIN{ print "|language|time (sec)|"; print "|--:|:--|" } {print $0}'
