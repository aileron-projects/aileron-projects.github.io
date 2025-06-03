package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, World!")
}

// START main
func main() {
	http.HandleFunc("/", handler)

	fmt.Println("Starting server at :8082")
	err := http.ListenAndServe(":8082", nil)
	if err != nil {
		log.Fatalf("Server failed to start: %v", err)
	}
}

// END main
