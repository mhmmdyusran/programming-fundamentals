#include <stdio.h>
#include "concepts.h"

// Function Implementations

int calculateSquare(int number) {
    return number * number;
}

// C does not support default parameters. Both must be provided by the caller.
void greet(const char* name, const char* greeting) {
    printf("%s, %s!\n", greeting, name);
}

// Functions
void demonstrateFunctions() {
    printf("\n=== Functions ===\n");

    printf("Square of 5 is: %d\n", calculateSquare(5));
    
    // Call greet with both parameters.
    greet("Yusran", "Hello");
    greet("Firmansyah", "Hi");
}
