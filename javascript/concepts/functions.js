async function demonstrateFunctions() {
  console.log("\n=== Functions ===");

  function calculateSquare(number) {
    return number * number;
  }

  function greet(name, greeting = "Hello") {
    return `${greeting}, ${name}!`;
  }

  // Using the functions
  console.log(`Square of 5 is: ${calculateSquare(5)}`);
  console.log(greet("Yusran"));
  console.log(greet("Firmansyah", "Hi"));
}

module.exports = demonstrateFunctions;
