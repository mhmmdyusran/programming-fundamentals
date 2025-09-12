#include <iostream>
#include <string>
#include <vector> // Required for std::vector
#include "concepts.hpp"

// Arrays & Vectors
void demonstrateArrays() {
    std::cout << "\n=== Arrays & Vectors ===" << std::endl;

    // A std::vector is the modern, flexible, and recommended way to handle dynamic arrays.
    std::vector<std::string> fruits_vec = {"apple", "banana", "orange", "grape"};

    std::cout << "Vector (dynamic): ";
    for (const auto& fruit : fruits_vec) {
        std::cout << fruit << " ";
    }
    std::cout << std::endl;

    // Access the first element.
    std::cout << "First fruit of vector: " << fruits_vec[0] << std::endl;

    // Access the last element using the .size() method.
    std::cout << "Last fruit of vector: " << fruits_vec[fruits_vec.size() - 1] << std::endl;
}
