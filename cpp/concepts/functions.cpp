#include <iostream>
#include <string>
#include "concepts.hpp"

// C++ supports default parameters directly in the function declaration.
// It's efficient to pass strings as a const reference (&) to avoid making copies.
std::string greet(const std::string& name, const std::string& greeting = "Hello") {
    return greeting + ", " + name + "!";
}

int calculateSquare(int number) {
    return number * number;
}

// Functions
void demonstrateFunctions() {
    std::cout << "\n=== Functions ===" << std::endl;

    std::cout << "Square of 5 is: " << calculateSquare(5) << std::endl;

    // Call greet without the optional parameter.
    std::cout << greet("Yusran") << std::endl;

    // Call greet with the optional parameter.
    std::cout << greet("Firmansyah", "Hi") << std::endl;
}
