package main

import "fmt"

// Functions

// Go does not support 'default parameters'.
// This logic is handled manually, often using variadic parameters.
func greet(name string, greeting ...string) string {
	greetPrefix := "Hello" // The default value
	if len(greeting) > 0 {
		greetPrefix = greeting[0] // Use the provided parameter if it exists
	}
	return fmt.Sprintf("%s, %s!", greetPrefix, name)
}

func calculateSquare(number int) int {
	return number * number
}

func demonstrateFunctions() {
	fmt.Println("\n=== Functions ===")

	fmt.Printf("Square of 5 is: %d\n", calculateSquare(5))
	fmt.Println(greet("Yusran"))
	fmt.Println(greet("Firmansyah", "Hi"))
}
