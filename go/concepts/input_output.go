package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

// Input & Output
func demonstrateIO() {
	fmt.Println("\n=== Input and Output ===")

	// Create a new reader to read from standard input.
	reader := bufio.NewReader(os.Stdin)

	fmt.Print("Enter your name: ")

	// Read input until the user presses Enter.
	// Go requires explicit error handling.
	userInput, err := reader.ReadString('\n')
	if err != nil {
		fmt.Println("An error occurred while reading input:", err)
		return
	}

	// Remove whitespace and the newline character from the input.
	userInput = strings.TrimSpace(userInput)

	fmt.Printf("Hello, %s!\n", userInput)
}
