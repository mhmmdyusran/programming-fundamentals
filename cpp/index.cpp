#include <iostream>
#include "concepts/concepts.hpp"

// Main Entry Point
int main() {
    // Call each demonstration function sequentially.
    demonstrateVariables();
    demonstrateOperators();
    demonstrateConditionals();
    demonstrateLoops();
    demonstrateArrays();
    demonstrateFunctions();
    demonstrateIO();

    std::cout << "\nAll C++ demonstrations completed successfully." << std::endl;

    // Return 0 to indicate successful execution.
    return 0;
}
