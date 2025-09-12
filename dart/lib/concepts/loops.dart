import 'dart:io';

void demonstrateLoops() {
  print('\n=== Loops ===');

  // For loop
  print('For loop:');
  for (int i = 1; i < 5; i++) {
    stdout.write('$i ');
  }
  print(''); // New line

  // For-in loop with list
  print('\nFor-in loop:');
  var numbers = [1, 2, 3, 4];
  for (var number in numbers) {
    stdout.write('$number ');
  }
  print('');

  // While loop
  print('\nWhile loop:');
  int count = 1;
  while (count < 5) {
    stdout.write('$count ');
    count++;
  }
  print('');

  // Do-while loop
  print('\nDo-while loop:');
  int j = 1;
  do {
    stdout.write('$j ');
    j++;
  } while (j < 5);
  print('');

  // forEach with arrow function
  print('\nforEach:');
  numbers.forEach((n) => stdout.write('$n '));
  print('');
}
