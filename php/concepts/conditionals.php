<?php

echo "\n=== Conditional Statements ===\n";
$number = 15;

if ($number > 0) {
    echo "$number is positive" . PHP_EOL;
} else if ($number < 0) {
    echo "$number is negative" . PHP_EOL;
} else {
    echo "The number is zero" . PHP_EOL;
}
