package main

import "fmt"

// Operators
func demonstrateOperators() {
	fmt.Println("\n=== Operators ===")
	a := 10
	b := 3

	// Arithmetic Operators
	fmt.Println("Arithmetic Operators")
	fmt.Printf("Addition: %d\n", a+b)
	fmt.Printf("Subtraction: %d\n", a-b)
	fmt.Printf("Multiplication: %d\n", a*b)
	fmt.Printf("Integer Division: %d\n", a/b)
	fmt.Printf("Float Division: %f\n", float64(a)/float64(b))

	// Comparison Operators
	// The '==' operator in Go is already strict (compares type and value).
	fmt.Println("\nComparison Operators")
	fmt.Printf("Is a > b? %t\n", a > b)
	fmt.Printf("Is a == b? %t\n", a == b)
}
