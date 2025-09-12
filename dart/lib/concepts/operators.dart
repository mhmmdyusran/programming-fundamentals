void demonstrateOperators() {
  print('\n=== Operators ===');

  int a = 10;
  int b = 3;

  // Arithmetic operators
  print('Addition: ${a + b}');
  print('Subtraction: ${a - b}');
  print('Multiplication: ${a * b}');
  print('Division: ${a / b}'); // Returns double
  print('Integer Division: ${a ~/ b}'); // Returns int
  print('Modulus: ${a % b}');

  // Comparison operators
  print('\nComparison:');
  print('Is a > b? ${a > b}');
  print('Is a == b? ${a == b}');

  // Logical operators
  bool x = true;
  bool y = false;
  print('\nLogical:');
  print('x AND y: ${x && y}');
  // ignore: dead_code
  print('x OR y: ${x || y}');
  print('NOT x: ${!x}');

  // Increment/Decrement
  int i = 0;
  print('\nIncrement/Decrement:');
  print('i++: ${i++}'); // Post-increment
  print('++i: ${++i}'); // Pre-increment
}
