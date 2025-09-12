-- Main script to demonstrate Lua programming fundamentals

-- Load all modules
local variables = require("src.variables")
local input_output = require("src.input_output")
local operators = require("src.operators")
local conditionals = require("src.conditionals")
local loops = require("src.loops")
local arrays = require("src.arrays")
local functions = require("src.functions")

print("Programming Fundamentals in Lua")
print("==============================\n")

-- Function to wait for user input
local function wait_for_input()
    io.write("\nPress Enter to continue...")
    io.read()
    print("\n")  -- Add some spacing
end

-- Run all demonstrations
variables.demonstrate_variables()
wait_for_input()

input_output.demonstrate_io()
wait_for_input()

operators.demonstrate_operators()
wait_for_input()

conditionals.demonstrate_conditionals()
wait_for_input()

loops.demonstrate_loops()
wait_for_input()

arrays.demonstrate_arrays()
wait_for_input()

functions.demonstrate_functions()

print("\nAll demonstrations completed.")