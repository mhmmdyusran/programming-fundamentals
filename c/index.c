#include <stdio.h>
#include "concepts/concepts.h"

// Main Entry Point
int main(void) {
    // Call each demonstration function sequentially.
    demonstrateVariables();
    demonstrateOperators();
    demonstrateConditionals();
    demonstrateLoops();
    demonstrateArrays();
    demonstrateFunctions();
    demonstrateIO();

    printf("\nAll C demonstrations completed successfully.\n");

    // Return 0 to indicate successful execution.
    return 0;
}
