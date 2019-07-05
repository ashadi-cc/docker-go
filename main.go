package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "yes wai to go")
}

func main() {
	http.HandleFunc("/", handler)
	log.Println("listening on port 3000")
	log.Fatal(http.ListenAndServe(":3000", nil))
}
