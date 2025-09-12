#include <stdio.h>
#include <stdbool.h> // Required for bool, true, false
#include "concepts.h"

// Variables & Data Types
void demonstrateVariables() {
    printf("\n=== Variables and Data Types ===\n");

    // A string in C is an array of characters ending with a null terminator `\0`.
    char name[] = "John Doe";
    int age = 25;
    double height = 1.75;
    bool is_student = true;

    // C is statically typed. We state the known type in the output.
    printf("Name: %s (Type: char[])\n", name);
    printf("Age: %d (Type: int)\n", age);
    printf("Height: %f (Type: double)\n", height);
    printf("Is Student: %d (Type: bool)\n", is_student); // bools often print as 0 or 1
}
