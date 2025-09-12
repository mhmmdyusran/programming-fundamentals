/**
 * @fileoverview This module demonstrates basic looping constructs in TypeScript,
 * including the 'for' loop and the 'while' loop for iterative tasks.
 *
 * @requires @types/node - For TypeScript type definitions for the global 'process' object.
 * Run `npm install --save-dev @types/node`
 */

/**
 * Demonstrates the implementation of `for` and `while` loops.
 *
 * This function showcases two fundamental loops:
 * 1. A `for` loop that iterates a specific number of times (from 1 to 4).
 * 2. A `while` loop that continues as long as a specified condition is true.
 * Both loops print numbers to the same line using `process.stdout.write`.
 *
 * @async
 * @returns {Promise<void>} A promise that resolves when both loops have completed.
 *
 * @example
 * // To run this function:
 * import demonstrateLoops from './your-file-name';
 *
 * (async () => {
 * await demonstrateLoops();
 * })();
 *
 * // Expected Console Output:
 * //
 * // === Loops ===
 * // Counting with for loop:
 * // 1 2 3 4
 * // Counting with while loop:
 * // 1 2 3 4
 */
const demonstrateLoops = async (): Promise<void> => {
  console.log("\n=== Loops ===");

  // For loop
  console.log("Counting with for loop:");
  for (let i: number = 1; i < 5; i++) {
    // process.stdout.write() prints to the console without adding a newline character.
    process.stdout.write(i + " ");
  }
  console.log(); // Appends a newline character to format the output.

  // While loop
  console.log("Counting with while loop:");
  let count: number = 1;
  while (count < 5) {
    process.stdout.write(count + " ");
    count++;
  }
  console.log(); // Appends a final newline.
};

// Use modern ES module syntax for exporting.
export default demonstrateLoops;
