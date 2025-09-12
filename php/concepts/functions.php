<?php

// Function Implementations

function calculateSquare($number)
{
    return $number * $number;
}

// PHP supports default parameters.
function greet($name, $greeting = "Hello")
{
    return "$greeting, $name!";
}

function demonstrateFunctions()
{
    echo "\n=== Functions ===\n";

    echo "Square of 5 is: " . calculateSquare(5) . PHP_EOL;

    // Call greet without the optional parameter.
    echo greet("Yusran") . PHP_EOL;

    // Call greet with the optional parameter.
    echo greet("Firmansyah", "Hi") . PHP_EOL;
}

// Execute the function
demonstrateFunctions();
