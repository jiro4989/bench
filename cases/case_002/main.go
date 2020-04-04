package main

import (
	"fmt"
	"os"
	"strconv"
)

func fib(n int) int {
	if n <= 2 {
		return 1
	} else {
		return fib(n-2) + fib(n-1)
	}
}

func main() {
	n, err := strconv.Atoi(os.Args[1])
	if err != nil {
		panic(err)
	}
	fmt.Println(fib(n))
}
