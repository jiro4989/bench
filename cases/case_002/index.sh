#!/bin/bash

set -eu

go build -o main_go main.go

choosenim 1.0.2
nim c -d:release -o:main_nim_1.0.2 main.nim

choosenim stable
nim c -d:release -o:main_nim_1.2.0 main.nim
nim c --gc:arc -d:release -o:main_nim_1.2.0_arc main.nim

ls -lah

for script in main_go main_nim_1.0.2 main_nim_1.2.0 main_nim_1.2.0_arc main.py main.rb; do
  mkdir -p "result/$script"

  for i in {1..100}; do
    n=$(printf "%03d.txt" $i)
    echo "script: $script, count: $i"
    (time ./$script 30) 2> "result/$script/$n"
  done
done

(
  cat << E
## fibonacci

E
  ./aggr.sh
) > result.txt
./to_json.py result.txt

echo "finish"
