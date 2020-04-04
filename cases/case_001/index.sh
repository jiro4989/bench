#!/bin/bash

set -eu

go build -o main_go main.go

choosenim 1.0.2
nim c -d:release -o:main_nim_1.0.2 main.nim

choosenim stable
nim c -d:release -o:main_nim_1.2.0 main.nim
nim c --gc:arc -d:release -o:main_nim_1.2.0_arc main.nim

ls -lah

mkdir -p result/{go,nim_1.0.2,nim_1.2.0,nim_1.2.0_arc,python}

for i in {1..100}; do
  n=$(printf "%03d.txt" $i)
  echo "count: $i"

  # Go
  (time ./main_go) 2> "result/go/$n"

  # Nim
  (time ./main_nim_1.0.2) 2> "result/nim_1.0.2/$n"
  (time ./main_nim_1.2.0) 2> "result/nim_1.2.0/$n"
  (time ./main_nim_1.2.0_arc) 2> "result/nim_1.2.0_arc/$n"

  # Python
  (time ./main.py) 2> "result/python/$n"

done

./aggr.sh > result.txt

echo "finish"
