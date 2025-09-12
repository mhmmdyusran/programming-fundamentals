/**
 * @fileoverview This module demonstrates basic array manipulations in TypeScript.
 * It showcases how to create an array, access its elements, and log the results.
 */

/**
 * Demonstrates the creation and basic usage of a string array.
 *
 * This asynchronous function initializes an array of fruits, then logs the
 * entire array, its first element, and its last element to the console.
 * Although async, it contains no await calls and serves as a structural example.
 *
 * @async
 * @returns {Promise<void>} A promise that resolves when the function has finished logging.
 *
 * @example
 * // To run this function:
 * import demonstrateArrays from './your-file-name';
 *
 * (async () => {
 * await demonstrateArrays();
 * })();
 *
 * // Expected Console Output:
 * //
 * // === Arrays ===
 * // List of fruits: [ 'apple', 'banana', 'orange', 'grape' ]
 * // First fruit: apple
 * // Last fruit: grape
 */
const demonstrateArrays = async (): Promise<void> => {
  console.log("\n=== Arrays ===");

  // Define an array of strings with explicit typing.
  const fruits: string[] = ["apple", "banana", "orange", "grape"];

  console.log("List of fruits:", fruits);

  // Access the first element by its index (0).
  console.log("First fruit:", fruits[0]);

  // Access the last element dynamically using the array's length.
  console.log("Last fruit:", fruits[fruits.length - 1]);
};

// Use ES module syntax for exporting, which is standard in TypeScript.
export default demonstrateArrays;
