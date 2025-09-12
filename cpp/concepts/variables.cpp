#include <iostream>
#include <string>
#include "concepts.hpp"

// Variables & Data Types
void demonstrateVariables() {
    std::cout << "\n=== Variables and Data Types ===" << std::endl;

    // In C++, types must be explicitly declared.
    std::string name = "John Doe";
    int age = 25;
    double height = 1.75; // Use double for floating-point numbers.
    bool is_student = true;

    // C++ is statically typed. We state the known type in the output.
    std::cout << "Name: " << name << " (Type: std::string)" << std::endl;
    std::cout << "Age: " << age << " (Type: int)" << std::endl;
    std::cout << "Height: " << height << " (Type: double)" << std::endl;
    std::cout << "Is Student: " << is_student << " (Type: bool)" << std::endl;
}
