#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys, json

def main():
    args = sys.argv[1:]
    results = []
    for result_file in args[0:]:
        with open(result_file) as infile:
            results.append(infile.read())

    body = "\n".join(results)
    data = json.dumps({"body":body})
    with open("result.json", "w") as outfile:
        outfile.write(data)

if __name__ == '__main__':
    main()


