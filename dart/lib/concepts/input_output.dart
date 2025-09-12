import 'dart:io';

Future<void> demonstrateIO() async {
  print('\n=== Input and Output ===');

  // Output
  stdout.write('Enter your name: ');

  // Input
  String? input = stdin.readLineSync();

  // Using the input
  print('Hello, $input!');

  // Using string interpolation
  print('You entered ${input?.length ?? 0} characters');
}
