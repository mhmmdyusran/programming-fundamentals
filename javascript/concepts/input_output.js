const readline = require("readline");

async function demonstrateIO() {
  console.log("\n=== Input and Output ===");

  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

  // Convert readline.question into a promise
  const question = (query) =>
    new Promise((resolve) => {
      rl.question(query, resolve);
    });

  try {
    const userInput = await question("Enter your name: ");
    console.log(`Hello, ${userInput}!`);
  } finally {
    rl.close();
  }
}

module.exports = demonstrateIO;
