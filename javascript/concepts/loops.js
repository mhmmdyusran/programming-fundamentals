async function demonstrateLoops() {
  console.log("\n=== Loops ===");

  // For loop
  console.log("Counting with for loop:");
  for (let i = 1; i < 5; i++) {
    process.stdout.write(i + " ");
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
}

module.exports = demonstrateLoops;
