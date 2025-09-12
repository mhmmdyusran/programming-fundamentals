/**
 * @fileoverview This module demonstrates basic arithmetic and comparison
 * operators in TypeScript.
 */

/**
 * Demonstrates the use of various operators in TypeScript.
 *
 * This function initializes two numbers and then performs several operations:
 * - **Arithmetic**: Addition (+), Subtraction (-), Multiplication (*), Division (/).
 * - **Comparison**: Greater Than (>), Strict Equality (===).
 * The results of these operations are logged to the console.
 *
 * @async
 * @returns {Promise<void>} A promise that resolves when the demonstrations are complete.
 *
 * @example
 * // To run this function:
 * import demonstrateOperators from './your-file-name';
 *
 * (async () => {
 * await demonstrateOperators();
 * })();
 *
 * // Expected Console Output:
 * //
 * // === Operators ===
 * // Addition: 13
 * // Subtraction: 7
 * // Multiplication: 30
 * // Division: 3.3333333333333335
 * // Is a > b? true
 * // Is a === b? false
 */
const demonstrateOperators = async (): Promise<void> => {
  console.log("\n=== Operators ===");

  const a: number = 10;
  const b: number = 3;

  // --- Arithmetic Operators ---
  console.log("--- Arithmetic Operators ---");
  console.log(`Addition: ${a + b}`);
  console.log(`Subtraction: ${a - b}`);
  console.log(`Multiplication: ${a * b}`);
  console.log(`Division: ${a / b}`);

  // --- Comparison Operators ---
  console.log("\n--- Comparison Operators ---");
  console.log(`Is a > b? ${a > b}`);

  // It's best practice to use strict equality (===) instead of loose equality (==)
  // to prevent bugs from unexpected type coercion.
  console.log(`Is a === b? ${a === b}`);
};

// Use modern ES module syntax for exporting.
export default demonstrateOperators;
