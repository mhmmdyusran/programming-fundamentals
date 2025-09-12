/**
 * @fileoverview This module demonstrates the declaration of variables with
 * fundamental data types in TypeScript, including string, number, and boolean.
 */

/**
 * Demonstrates variable declaration and explicit typing for basic data types.
 *
 * This function declares several constants with their types explicitly defined:
 * - `name`: a string
 * - `age`: a number (integer)
 * - `height`: a number (floating-point)
 * - `isStudent`: a boolean
 * It then logs each variable's value and its underlying JavaScript type to the console.
 *
 * @async
 * @returns {Promise<void>} A promise that resolves when the demonstrations are complete.
 *
 * @example
 * // To run this function:
 * import demonstrateVariables from './your-file-name';
 *
 * (async () => {
 * await demonstrateVariables();
 * })();
 *
 * // Expected Console Output:
 * //
 * // === Variables and Data Types ===
 * // Name: John Doe (string)
 * // Age: 25 (number)
 * // Height: 1.75 (number)
 * // Is Student: true (boolean)
 */
const demonstrateVariables = async (): Promise<void> => {
  console.log("\n=== Variables and Data Types ===");

  // In TypeScript, we explicitly define the type after the variable name.
  const name: string = "John Doe";
  const age: number = 25;
  const height: number = 1.75; // Like JavaScript, TypeScript uses the 'number' type for both integers and floats.
  const isStudent: boolean = true;

  // The 'typeof' operator still works as it does in JavaScript to show the runtime type.
  console.log(`Name: ${name} (${typeof name})`);
  console.log(`Age: ${age} (${typeof age})`);
  console.log(`Height: ${height} (${typeof height})`);
  console.log(`Is Student: ${isStudent} (${typeof isStudent})`);
};

// Use modern ES module syntax for exporting.
export default demonstrateVariables;
