package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"strconv"
	"strings"
)

func main() {
	fmt.Println("1.13.8")
	sl := make([]string, 10000000)
	for i := 0; i < 1000000; i++ {
		sl[i] = strconv.Itoa(i)
	}
	s := strings.Join(sl, "")
	ioutil.WriteFile("out.txt", []byte(s), os.ModePerm)
	fmt.Println("end")
}
