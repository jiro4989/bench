#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys, json

def main():
    args = sys.argv[1:]
    result_file = args[0]
    with open(result_file) as infile:
        body = infile.read()
        data = json.dumps({"body":body})
        with open("result.json", "w") as outfile:
            outfile.write(data)

if __name__ == '__main__':
    main()


