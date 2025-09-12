package main

import "fmt"

// Arrays (Slices)
func demonstrateArrays() {
	fmt.Println("\n=== Arrays (Slices) ===")

	// A 'slice' is Go's more powerful and common version of a dynamic array.
	fruits := []string{"apple", "banana", "orange", "grape"}

	fmt.Println("List of fruits:", fruits)
	fmt.Println("First fruit:", fruits[0])
	fmt.Println("Last fruit:", fruits[len(fruits)-1])
}
