/**
 * @fileoverview This module demonstrates handling command-line input and output
 * in a Node.js environment using TypeScript's async/await features and the
 * built-in 'readline' module.
 *
 * @requires @types/node - For TypeScript type definitions for Node.js APIs.
 * Run `npm install --save-dev @types/node`
 */

import * as readline from 'readline';

/**
 * Demonstrates asynchronous user input from the command line.
 *
 * This function creates a readline interface to capture user input. It wraps
 * the callback-based `rl.question` method in a Promise to allow for modern
 * async/await syntax. A `try...finally` block is used to ensure that the
 * readline interface is properly closed, allowing the Node.js process to terminate.
 *
 * @async
 * @returns {Promise<void>} A promise that resolves when the I/O operation is complete.
 *
 * @example
 * // To run this function:
 * import demonstrateIO from './your-file-name';
 *
 * (async () => {
 * await demonstrateIO();
 * })();
 *
 * // Console Interaction:
 * //
 * // === Input and Output ===
 * // Enter your name: [User types 'Gemini' and presses Enter]
 * // Hello, Gemini!
 */
const demonstrateIO = async (): Promise<void> => {
  console.log("\n=== Input and Output ===");

  // Create the readline interface with explicit typing.
  const rl: readline.Interface = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

  /**
   * A promisified version of rl.question.
   * @param {string} query - The text to display as a prompt to the user.
   * @returns {Promise<string>} A promise that resolves with the user's input string.
   */
  const question = (query: string): Promise<string> =>
    new Promise((resolve) => {
      rl.question(query, resolve);
    });

  try {
    // Await the promise to get the user's input. The type is inferred as string.
    const userInput: string = await question("Enter your name: ");
    console.log(`Hello, ${userInput}!`);
  } finally {
    // This block is crucial. It ensures rl.close() is always called,
    // whether an error occurs or not, allowing the program to exit gracefully.
    rl.close();
  }
};

// Use modern ES module syntax for exporting.
export default demonstrateIO;
