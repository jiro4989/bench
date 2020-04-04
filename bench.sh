#!/bin/bash

set -eu

for dir in cases/case_*; do
  (cd "$dir" && ./index.sh)
done
find cases -name 'result.txt' | xargs ./to_json.py
