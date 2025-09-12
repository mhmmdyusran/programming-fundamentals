package main

import "fmt"

// Variables & Data Types
func demonstrateVariables() {
	fmt.Println("\n=== Variables and Data Types ===")

	// In Go, data types are explicitly defined.
	// Go distinguishes between integers (int) and floating-point (float64) numbers.
	var name string = "John Doe"

	// We can use the `:=` operator for short variable declaration,
	// where Go will infer the data type.
	age := 25
	height := 1.75
	isStudent := true

	// The '%T' format verb is used to print the type of a variable.
	fmt.Printf("Name: %s (%T)\n", name, name)
	fmt.Printf("Age: %d (%T)\n", age, age)
	fmt.Printf("Height: %f (%T)\n", height, height)
	fmt.Printf("Is Student: %t (%T)\n", isStudent, isStudent)
}
