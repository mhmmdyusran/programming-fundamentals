const variables = require("./concepts/variables");
const io = require("./concepts/input_output");
const operators = require("./concepts/operators");
const conditionals = require("./concepts/conditionals");
const loops = require("./concepts/loops");
const arrays = require("./concepts/arrays");
const functions = require("./concepts/functions");

async function main() {
  try {
    await variables();
    await io();
    await operators();
    await conditionals();
    await loops();
    await arrays();
    await functions();
  } catch (error) {
    console.error("An error occurred:", error);
  }
}

main();
