#include <stdio.h>
#include <string.h> // For strcspn
#include "concepts.h"

// Input & Output
void demonstrateIO() {
    printf("\n=== Input and Output ===\n");

    char user_input[100]; // Define a buffer to hold the input
    printf("Enter your name: ");

    // Read a line of text safely using fgets.
    if (fgets(user_input, sizeof(user_input), stdin)) {
        // Remove the trailing newline character that fgets reads.
        user_input[strcspn(user_input, "\n")] = 0;
        printf("Hello, %s!\n", user_input);
    }
}
