#include <stdio.h>
#include "concepts.h"

// Loops
void demonstrateLoops() {
    printf("\n=== Loops ===\n");

    // For loop
    printf("Counting with for loop:\n");
    for (int i = 1; i < 5; ++i) {
        printf("%d ", i);
    }
    printf("\n");

    // While loop
    printf("Counting with while loop:\n");
    int count = 1;
    while (count < 5) {
        printf("%d ", count);
        count++;
    }
    printf("\n");
}
