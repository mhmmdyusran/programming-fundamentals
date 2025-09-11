// Variables and Data Types
async function demonstrateVariables() {
  console.log("\n=== Variables and Data Types ===");
  const name = "John Doe"; // String type
  const age = 25; // Number type
  const height = 1.75; // Number type (JavaScript doesn't distinguish between int and float)
  const isStudent = true; // Boolean type

  console.log(`Name: ${name} (${typeof name})`);
  console.log(`Age: ${age} (${typeof age})`);
  console.log(`Height: ${height} (${typeof height})`);
  console.log(`Is Student: ${isStudent} (${typeof isStudent})`);
}

module.exports = demonstrateVariables;
