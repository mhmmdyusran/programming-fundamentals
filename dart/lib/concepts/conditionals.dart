void demonstrateConditionals() {
  print('\n=== Conditional Statements ===');

  int number = 15;

  // If-else statement
  if (number > 0) {
    print('$number is positive');
  } else if (number < 0) {
    print('$number is negative');
  } else {
    print('The number is zero');
  }

  // Switch statement
  String grade = 'A';
  switch (grade) {
    case 'A':
      print('Excellent!');
      break;
    case 'B':
      print('Good job!');
      break;
    case 'C':
      print('Fair');
      break;
    default:
      print('Invalid grade');
  }

  // Conditional expressions
  bool isRaining = true;
  // ignore: dead_code
  String weather = isRaining ? 'Bring an umbrella' : 'Enjoy the sun';
  print('\nWeather advice: $weather');

  // Null-aware operator
  String? nullableName;
  String displayName = nullableName ?? 'Guest';
  print('Welcome, $displayName');
}
