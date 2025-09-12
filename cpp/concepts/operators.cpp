#include <iostream>
#include "concepts.hpp"

// Operators
void demonstrateOperators() {
    std::cout << "\n=== Operators ===" << std::endl;
    int a = 10;
    int b = 3;

    // Arithmetic Operators
    std::cout << "Arithmetic Operators" << std::endl;
    std::cout << "Addition: " << (a + b) << std::endl;
    std::cout << "Subtraction: " << (a - b) << std::endl;
    std::cout << "Multiplication: " << (a * b) << std::endl;

    // Integer division truncates the result.
    std::cout << "Integer Division: " << (a / b) << std::endl;

    // To get a double result, we must cast one of the operands.
    std::cout << "Float Division: " << (static_cast<double>(a) / b) << std::endl;

    // Comparison Operators
    std::cout << "\nComparison Operators" << std::endl;
    std::cout << "Is a > b? " << (a > b) << std::endl;
    std::cout << "Is a == b? " << (a == b) << std::endl;
}
