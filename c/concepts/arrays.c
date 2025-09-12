#include <stdio.h>
#include "concepts.h"

// Arrays
void demonstrateArrays() {
    printf("\n=== Arrays ===\n");

    // An array of pointers to constant character strings.
    const char *fruits[] = {"apple", "banana", "orange", "grape"};
    
    // Calculate the number of elements in the array.
    int n = sizeof(fruits) / sizeof(fruits[0]);

    printf("List of fruits: ");
    for(int i = 0; i < n; i++) {
        printf("%s ", fruits[i]);
    }
    printf("\n");

    // Access the first element.
    printf("First fruit: %s\n", fruits[0]);

    // Access the last element.
    printf("Last fruit: %s\n", fruits[n - 1]);
}
