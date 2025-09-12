<?php

echo "\n=== Input and Output ===\n";

// readline() pauses the script and waits for the user to enter text.
// This works in a Command Line Interface (CLI) environment.
$user_input = readline("Enter your name: ");

echo "Hello, $user_input!" . PHP_EOL;
