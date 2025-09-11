async function demonstrateConditionals() {
  console.log("\n=== Conditional Statements ===");
  const number = 15;

  if (number > 0) {
    console.log(`${number} is positive`);
  } else if (number < 0) {
    console.log(`${number} is negative`);
  } else {
    console.log("The number is zero");
  }
}

module.exports = demonstrateConditionals;
