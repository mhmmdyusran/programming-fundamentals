/**
 * @fileoverview This module demonstrates function declarations and usage in TypeScript,
 * including typed parameters, return types, and default parameter values.
 */

/**
 * Demonstrates defining and calling functions with type annotations.
 *
 * This function showcases two inner functions:
 * 1. `calculateSquare`: A function that accepts a number and returns its square.
 * 2. `greet`: A function that accepts a name and an optional greeting string,
 * then returns a formatted message.
 *
 * @async
 * @returns {Promise<void>} A promise that resolves once the demonstrations are logged.
 *
 * @example
 * // To run this function:
 * import demonstrateFunctions from './your-file-name';
 *
 * (async () => {
 * await demonstrateFunctions();
 * })();
 *
 * // Expected Console Output:
 * //
 * // === Functions ===
 * // Square of 5 is: 25
 * // Hello, Yusran!
 * // Hi, Firmansyah!
 */
const demonstrateFunctions = async (): Promise<void> => {
  console.log("\n=== Functions ===");

  /**
   * Calculates the square of a given number.
   * @param {number} num The number to be squared.
   * @returns {number} The result of the number multiplied by itself.
   */
  const calculateSquare = (num: number): number => {
    return num * num;
  };

  /**
   * Generates a greeting message.
   * @param {string} name The name of the person to greet.
   * @param {string} [greeting="Hello"] The greeting phrase. Defaults to "Hello".
   * @returns {string} A formatted greeting string.
   */
  const greet = (name: string, greeting: string = "Hello"): string => {
    return `${greeting}, ${name}!`;
  };

  // Using the functions
  console.log(`Square of 5 is: ${calculateSquare(5)}`);
  console.log(greet("Yusran"));
  console.log(greet("Firmansyah", "Hi"));
};

// Use ES module syntax for exporting
export default demonstrateFunctions;
