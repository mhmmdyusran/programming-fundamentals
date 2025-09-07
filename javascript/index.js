// 1. Variables and Data Types
console.log("\n");
const name = "John Doe"; // String type
const age = 25; // Number type
const height = 1.75; // Number type (JavaScript doesn't distinguish between int and float)
const isStudent = true; // Boolean type

console.log(`Name: ${name} (${typeof name})`);
console.log(`Age: ${age} (${typeof age})`);
console.log(`Height: ${height} (${typeof height})`);
console.log(`Is Student: ${isStudent} (${typeof isStudent})`);

// 3. Operators
console.log("\n");
const a = 10;
const b = 3;

// Arithmetic operators
console.log(`Addition: ${a + b}`);
console.log(`Subtraction: ${a - b}`);
console.log(`Multiplication: ${a * b}`);
console.log(`Division: ${a / b}`);

// Comparison operators
console.log(`Is a > b? ${a > b}`);
console.log(`Is a == b? ${a == b}`);

// 4. Conditional Statements
console.log("\n");
const number = 15;

if (number > 0) {
  console.log(`${number} is positive`);
} else if (number < 0) {
  console.log(`${number} is negative`);
} else {
  console.log("The number is zero");
}

// 5. Loops
console.log("\n");
// For loop
console.log("Counting with for loop:");
for (let i = 1; i < 5; i++) {
  process.stdout.write(i + " "); // Similar to Python's print(i, end=" ")
}
console.log(); // New line

// While loop
console.log("Counting with while loop:");
let count = 1;
while (count < 5) {
  process.stdout.write(count + " ");
  count++;
}
console.log(); // New line

// 6. Arrays
console.log("\n");
const fruits = ["apple", "banana", "orange", "grape"];
console.log("List of fruits:", fruits);
console.log("First fruit:", fruits[0]);
console.log("Last fruit:", fruits[fruits.length - 1]);

// 7. Functions
console.log("\n");
function calculateSquare(number) {
  // Calculate the square of a number
  return number * number;
}

function greet(name, greeting = "Hello") {
  // Greet a person with a customizable greeting
  return `${greeting}, ${name}!`;
}

// Using the functions
console.log(`Square of 5 is: ${calculateSquare(5)}`);
console.log(greet("Yusran"));
console.log(greet("Firmansyah", "Hi"));

// 2. Input and Output (I/O)
console.log("\n");
const readline = require("readline").createInterface({
  input: process.stdin,
  output: process.stdout,
});

// Using readline for input
readline.question("Enter your name: ", (userInput) => {
  console.log(`Hello, ${userInput}!`);

  // Close the readline interface
  readline.close();
});

// Note: Code after this point will run before input is received due to async nature
