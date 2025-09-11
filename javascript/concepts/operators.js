async function demonstrateOperators() {
  console.log("\n=== Operators ===");
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
}

module.exports = demonstrateOperators;
