#include <iostream>
#include <string>
#include "concepts.hpp"

// Input & Output
void demonstrateIO() {
    std::cout << "\n=== Input and Output ===" << std::endl;

    std::string user_input;
    std::cout << "Enter your name: ";

    // Use std::getline to read a full line of text, including spaces.
    std::getline(std::cin, user_input);

    std::cout << "Hello, " << user_input << "!" << std::endl;
}
