package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"net/url"
	"os"
)

func main() {
	deviceID := os.Getenv("DEVICE_ID")
	accessToken := os.Getenv("ACCESS_TOKEN")
	functionName := os.Getenv("FUNCTION_NAME")
	resp, err := http.PostForm("https://api.particle.io/v1/devices/"+deviceID+"/"+functionName, url.Values{"access_token": {accessToken}})
	if err != nil {
		fmt.Println("ERRORED")
		panic(err)
	}
	fmt.Println(resp)
	defer resp.Body.Close()
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		fmt.Println("ERRORED ON BODY")
		panic(err)
	}
	fmt.Println(string(body))
}
