<?php

echo "\n=== Loops ===\n";

// For loop
echo "Counting with for loop:\n";
for ($i = 1; $i < 5; $i++) {
    echo $i . " ";
}
echo PHP_EOL;

// While loop
echo "Counting with while loop:\n";
$count = 1;
while ($count < 5) {
    echo $count . " ";
    $count++;
}
echo PHP_EOL;
