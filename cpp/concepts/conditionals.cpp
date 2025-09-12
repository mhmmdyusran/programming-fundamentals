#include <iostream>
#include "concepts.hpp"

// Conditional Statements
void demonstrateConditionals() {
    std::cout << "\n=== Conditional Statements ===" << std::endl;
    int number = 15;

    // if-else if-else syntax is standard.
    if (number > 0) {
        std::cout << number << " is positive" << std::endl;
    } else if (number < 0) {
        std::cout << number << " is negative" << std::endl;
    } else {
        std::cout << "The number is zero" << std::endl;
    }
}
