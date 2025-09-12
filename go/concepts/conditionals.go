package main

import "fmt"

// Conditional Statements
func demonstrateConditionals() {
	fmt.Println("\n=== Conditional Statements ===")
	number := 15

	// The if-else if-else syntax in Go is very similar to other languages.
	if number > 0 {
		fmt.Printf("%d is positive\n", number)
	} else if number < 0 {
		fmt.Printf("%d is negative\n", number)
	} else {
		fmt.Println("The number is zero")
	}
}
