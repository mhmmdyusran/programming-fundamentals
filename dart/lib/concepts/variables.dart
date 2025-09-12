void demonstrateVariables() {
  print('\n=== Variables and Data Types ===');

  // Different types of variables
  String name = 'John Doe'; // String type
  int age = 25; // Integer type
  double height = 1.75; // Double type
  bool isStudent = true; // Boolean type

  // Using var for type inference
  var inferredString = 'This type is inferred';

  // Printing variables with their types
  print('Name: $name (${name.runtimeType})');
  print('Age: $age (${age.runtimeType})');
  print('Height: $height (${height.runtimeType})');
  print('Is Student: $isStudent (${isStudent.runtimeType})');
  print('Inferred: $inferredString (${inferredString.runtimeType})');
}
