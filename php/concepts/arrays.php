<?php

echo "\n=== Arrays ===\n";

// A simple indexed array using modern short syntax [].
$fruits = ["apple", "banana", "orange", "grape"];

echo "List of fruits: " . implode(", ", $fruits) . PHP_EOL;

// Access the first element.
echo "First fruit: " . $fruits[0] . PHP_EOL;

// Access the last element using the count() function.
echo "Last fruit: " . $fruits[count($fruits) - 1] . PHP_EOL;
