#include <stdio.h>
#include "concepts.h"

// Conditional Statements
void demonstrateConditionals() {
    printf("\n=== Conditional Statements ===\n");
    int number = 15;

    if (number > 0) {
        printf("%d is positive\n", number);
    } else if (number < 0) {
        printf("%d is negative\n", number);
    } else {
        printf("The number is zero\n");
    }
}
