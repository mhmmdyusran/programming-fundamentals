/**
 * @fileoverview The main entry point for the TypeScript concepts demonstration.
 * This file imports and sequentially executes all the individual concept modules.
 */

// Use ES module 'import' for a modern, statically-analyzable module system.
// Note that file extensions are typically omitted in the import path.
import demonstrateVariables from './concepts/variables';
import demonstrateIO from './concepts/input_output';
import demonstrateOperators from './concepts/operators';
import demonstrateConditionals from './concepts/conditionals';
import demonstrateLoops from './concepts/loops';
import demonstrateArrays from './concepts/arrays';
import demonstrateFunctions from './concepts/functions';

/**
 * The main asynchronous function that orchestrates the execution of all
 * demonstration modules. Each module is awaited to ensure sequential execution.
 * A try-catch block is used to gracefully handle any potential errors during runtime.
 *
 * @async
 * @returns {Promise<void>} A promise that resolves when all functions have executed
 * successfully or rejects if an error is caught.
 */
const main = async (): Promise<void> => {
  try {
    // Sequentially execute each demonstration function.
    await demonstrateVariables();
    await demonstrateIO();
    await demonstrateOperators();
    await demonstrateConditionals();
    await demonstrateLoops();
    await demonstrateArrays();
    await demonstrateFunctions();

    console.log("\nAll demonstrations completed successfully.");
  } catch (error: unknown) {
    // In TypeScript, it's safest to type the caught error as 'unknown'.
    console.error("\nAn error occurred during the execution:", error);
    // You can add more specific error handling if needed, for example:
    if (error instanceof Error) {
      console.error("Error message:", error.message);
    }
  }
};

// Execute the main function to start the program.
main();
