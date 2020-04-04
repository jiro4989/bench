import os, strutils

proc fib(n: int): int =
  if n <= 2:
    return 1
  else:
    return fib(n-2) + fib(n-1)

let n = commandLineParams()[0].parseInt
echo fib(n)
