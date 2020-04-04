import os, threadpool

var s: string

proc heavyMethod1(): int =
    echo "1: Start"
    sleep(5000)
    echo "1: End"
    {.gcsafe.}:
      s.add("m1")
    return 5

proc heavyMethod2(): int =
    echo "2: Start"
    sleep(2000)
    echo "2: End"
    {.gcsafe.}:
      s.add("m2")
    return 20

var result1 = spawn heavyMethod1()
var result2 = spawn heavyMethod2()
sync()

echo ^result1
echo ^result2
echo s
