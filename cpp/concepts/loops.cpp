#include <iostream>
#include "concepts.hpp"

// Loops
void demonstrateLoops() {
    std::cout << "\n=== Loops ===" << std::endl;

    // C-style for loop.
    std::cout << "Counting with for loop:" << std::endl;
    for (int i = 1; i < 5; ++i) {
        std::cout << i << " ";
    }
    std::cout << std::endl;

    // While loop.
    std::cout << "Counting with while loop:" << std::endl;
    int count = 1;
    while (count < 5) {
        std::cout << count << " ";
        count++;
    }
    std::cout << std::endl;
}
