package main

import (
	"fmt"
	"log"
	"os"
)

var (
	version = "development"

	buildTime = "0"
)

func main() {
	log.Printf("Starting %s version %s built on %s", os.Args[0], version, buildTime)
	fmt.Println("Hello, World!")
}
