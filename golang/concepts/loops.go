package main

import "fmt"

// Loops
func demonstrateLoops() {
	fmt.Println("\n=== Loops ===")

	// Go has only one looping keyword: `for`.
	fmt.Println("Counting with standard for loop:")
	for i := 1; i < 5; i++ {
		fmt.Printf("%d ", i)
	}
	fmt.Println()

	// Its form is very versatile, and can act like a 'while' loop.
	fmt.Println("Counting with while-style for loop:")
	count := 1
	for count < 5 {
		fmt.Printf("%d ", count)
		count++
	}
	fmt.Println()
}
