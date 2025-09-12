# Main R script to demonstrate programming fundamentals

# Source all module files
source("src/variables.R")
source("src/input_output.R")
source("src/operators.R")
source("src/conditionals.R")
source("src/loops.R")
source("src/arrays.R")
source("src/functions.R")

# Clear the console
cat("\014")  # or system('cls') on Windows

cat("Programming Fundamentals in R\n")
cat("============================\n\n")

# Run all demonstrations
demonstrate_variables()
cat("\nPress Enter to continue...")
readline()

demonstrate_io()
cat("\nPress Enter to continue...")
readline()

demonstrate_operators()
cat("\nPress Enter to continue...")
readline()

demonstrate_conditionals()
cat("\nPress Enter to continue...")
readline()

demonstrate_loops()
cat("\nPress Enter to continue...")
readline()

demonstrate_arrays()
cat("\nPress Enter to continue...")
readline()

demonstrate_functions()

cat("\nAll demonstrations completed.\n")