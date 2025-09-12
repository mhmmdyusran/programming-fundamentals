void demonstrateArrays() {
  print('\n=== Arrays (Lists) ===');

  // Fixed-length list
  List<int> fixedNumbers = List.filled(3, 0);
  fixedNumbers[0] = 1;
  fixedNumbers[1] = 2;
  fixedNumbers[2] = 3;
  print('Fixed list: $fixedNumbers');

  // Growable list
  List<String> fruits = ['apple', 'banana', 'orange', 'grape'];
  print('List of fruits: $fruits');
  print('First fruit: ${fruits[0]}');
  print('Last fruit: ${fruits.last}');

  // List operations
  fruits.add('mango');
  print('\nAfter adding mango: $fruits');

  fruits.remove('banana');
  print('After removing banana: $fruits');

  // List methods
  print('\nList operations:');
  print('Length: ${fruits.length}');
  print('Is empty: ${fruits.isEmpty}');
  print('Contains orange? ${fruits.contains('orange')}');

  // Sorting
  fruits.sort();
  print('Sorted fruits: $fruits');

  // Map over list
  List<String> upperFruits = fruits.map((f) => f.toUpperCase()).toList();
  print('Uppercase fruits: $upperFruits');

  // Filter list
  List<String> longFruits = fruits.where((f) => f.length > 5).toList();
  print('Fruits with more than 5 letters: $longFruits');
}
