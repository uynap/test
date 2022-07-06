package main

import (
	"io/ioutil"
	"net/http"
	"os"
)

const (
	apiURL = "http://httpbin.org/get"
	file   = "/home/runner/download/body.json"
)

func main() {
	resp, err := http.Get(apiURL)
	if err != nil {
		panic(err)
	}
	defer resp.Body.Close()

	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		panic(err)
	}

	if err := os.WriteFile(file, body, 0644); err != nil {
		panic(err)
	}
}
