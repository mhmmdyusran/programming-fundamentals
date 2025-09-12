// Function with a return value
int calculateSquare(int number) {
  return number * number;
}

// Function with optional parameter
String greet(String name, [String greeting = 'Hello']) {
  return '$greeting, $name!';
}

// Function with named parameters
String formatName(
    {required String firstName, required String lastName, String? title}) {
  return '${title ?? ''} $firstName $lastName'.trim();
}

// Arrow function
int add(int a, int b) => a + b;

// Higher-order function
void processNumbers(List<int> numbers, int Function(int) processor) {
  for (var number in numbers) {
    print('Processed ${number}: ${processor(number)}');
  }
}

void demonstrateFunctions() {
  print('\n=== Functions ===');

  // Basic function call
  print('Square of 5 is: ${calculateSquare(5)}');

  // Using optional parameter
  print(greet('Yusran'));
  print(greet('Firmansyah', 'Hi'));

  // Using named parameters
  print(formatName(firstName: 'John', lastName: 'Doe', title: 'Mr.'));

  // Using arrow function
  print('5 + 3 = ${add(5, 3)}');

  // Using higher-order function
  List<int> numbers = [1, 2, 3, 4];
  print('\nProcessing numbers with square function:');
  processNumbers(numbers, calculateSquare);

  // Using anonymous function
  print('\nProcessing numbers with anonymous function:');
  processNumbers(numbers, (x) => x * 2);
}
