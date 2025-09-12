/**
 * @fileoverview This module demonstrates the use of conditional (if-else if-else)
 * statements in TypeScript to perform logic based on different conditions.
 */

/**
 * Demonstrates how to use conditional statements to check a number's value.
 *
 * This function initializes a number and uses an `if-else if-else` chain
 * to determine whether the number is positive, negative, or zero,
 * logging the result to the console.
 *
 * @async
 * @returns {Promise<void>} A promise that resolves when the demonstration is complete.
 *
 * @example
 * // To run this function:
 * import demonstrateConditionals from './your-file-name';
 *
 * (async () => {
 * await demonstrateConditionals();
 * })();
 *
 * // Expected Console Output:
 * //
 * // === Conditional Statements ===
 * // 15 is positive
 */
const demonstrateConditionals = async (): Promise<void> => {
  console.log("\n=== Conditional Statements ===");

  // Define a constant with an explicit 'number' type.
  const number: number = 15;

  if (number > 0) {
    console.log(`${number} is positive`);
  } else if (number < 0) {
    console.log(`${number} is negative`);
  } else {
    // This block executes if the number is neither greater than nor less than 0.
    console.log("The number is zero");
  }
};

// Use modern ES module syntax for exporting.
export default demonstrateConditionals;
