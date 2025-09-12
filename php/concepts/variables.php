<?php

echo "\n=== Variables and Data Types ===\n";

// Variable names start with a $ sign.
$name = "John Doe";       // string
$age = 25;                // integer
$height = 1.75;           // double (float)
$is_student = true;       // boolean

// Use gettype() to find the type of a variable at runtime.
// PHP_EOL is a constant for the correct end-of-line character for the system.
echo "Name: $name (Type: " . gettype($name) . ")" . PHP_EOL;
echo "Age: $age (Type: " . gettype($age) . ")" . PHP_EOL;
echo "Height: $height (Type: " . gettype($height) . ")" . PHP_EOL;
echo "Is Student: $is_student (Type: " . gettype($is_student) . ")" . PHP_EOL;
