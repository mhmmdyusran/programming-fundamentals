#include <stdio.h>
#include "concepts.h"

// Operators
void demonstrateOperators() {
    printf("\n=== Operators ===\n");
    int a = 10;
    int b = 3;

    // Arithmetic Operators
    printf("Arithmetic Operators\n");
    printf("Addition: %d\n", a + b);
    printf("Subtraction: %d\n", a - b);
    printf("Multiplication: %d\n", a * b);

    // Integer division truncates.
    printf("Integer Division: %d\n", a / b);

    // Cast to double for floating-point division.
    printf("Float Division: %f\n", (double)a / b);

    // Comparison Operators
    printf("\nComparison Operators\n");
    printf("Is a > b? %d\n", a > b); // Prints 1 for true, 0 for false
    printf("Is a == b? %d\n", a == b); // Prints 1 for true, 0 for false
}
