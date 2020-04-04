#!/usr/bin/env python3
# -*- coding: utf-8 -*-

def main():
    print("3.7.5")
    s = ""
    for i in range(0, 1000000):
        s += str(i)

    with open("out.txt", "w") as w:
        w.write(s)

    print("end")

if __name__ == '__main__':
    main()


