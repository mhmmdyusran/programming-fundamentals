package main

import "fmt"

// Main Entry Point
func main() {
	// Call each demonstration function sequentially.
	// In Go, execution is synchronous by default.
	demonstrateVariables()
	demonstrateOperators()
	demonstrateConditionals()
	demonstrateLoops()
	demonstrateArrays()
	demonstrateFunctions()
	demonstrateIO()

	fmt.Println("\nAll Go demonstrations completed successfully.")
}
