#!/bin/bash

set -eu

cd cases
for dir in case_*; do
  (cd "$dir" && ./index.sh)
done
