<?php

echo "\n=== Operators ===\n";
$a = 10;
$b = 3;

// Arithmetic Operators
echo "Arithmetic Operators\n";
echo "Addition: " . ($a + $b) . PHP_EOL;
echo "Subtraction: " . ($a - $b) . PHP_EOL;
echo "Multiplication: " . ($a * $b) . PHP_EOL;
// The division operator `/` returns a float value unless the two operands
// are integers and the numbers are evenly divisible.
echo "Division: " . ($a / $b) . PHP_EOL;

// Comparison Operators
echo "\nComparison Operators\n";
echo "Is a > b? " . ($a > $b) . PHP_EOL; // Prints 1 for true
// Strict equality `===` checks for value AND type. This is best practice.
echo "Is a === b? " . ($a === $b) . PHP_EOL; // Prints empty string for false
