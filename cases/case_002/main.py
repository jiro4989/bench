#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys

def fib(n):
    if n <= 2:
        return 1
    else:
        return fib(n-2) + fib(n-1)

def main():
    n = int(sys.argv[1])
    print(fib(n))

if __name__ == '__main__':
    main()


