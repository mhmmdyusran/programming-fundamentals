# Function to demonstrate input and output operations in R
demonstrate_io <- function() {
  cat("=== Input and Output ===\n")
  
  # Basic output using print
  print("This is printed using print()")
  
  # Output using cat
  cat("This is printed using cat()\n")
  
  # Formatted output
  name <- "Alice"
  age <- 25
  cat(sprintf("Name: %s, Age: %d\n", name, age))
  
  # Writing to console with different data types
  cat("Numeric:", 42.5, "\n")
  cat("Logical:", TRUE, "\n")
  cat("Vector:", 1:5, "\n")
  
  # Input from user (commented out for non-interactive use)
  # name <- readline("Enter your name: ")
  # age <- as.numeric(readline("Enter your age: "))
  # cat("Hello,", name, "! You are", age, "years old.\n")
  
  # File operations
  # Writing to a file
  data <- c("Line 1", "Line 2", "Line 3")
  writeLines(data, "example.txt")
  
  # Reading from a file
  cat("\nReading from file:\n")
  content <- readLines("example.txt")
  print(content)
  
  # Clean up
  file.remove("example.txt")
  cat("\n")
}