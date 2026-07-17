package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, AWS CodeBuild! Go Web Server is running.")
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Server starting on :80...")
	http.ListenAndServe(":80", nil)
}