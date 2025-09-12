# Function to demonstrate operators in R
demonstrate_operators <- function() {
  cat("=== Operators ===\n")
  
  # Arithmetic operators
  cat("Arithmetic Operators:\n")
  a <- 10
  b <- 3
  
  cat("a =", a, ", b =", b, "\n")
  cat("Addition (a + b):", a + b, "\n")
  cat("Subtraction (a - b):", a - b, "\n")
  cat("Multiplication (a * b):", a * b, "\n")
  cat("Division (a / b):", a / b, "\n")
  cat("Integer Division (a %/% b):", a %/% b, "\n")
  cat("Modulus (a %% b):", a %% b, "\n")
  cat("Exponentiation (a ^ b):", a ^ b, "\n")
  
  # Comparison operators
  cat("\nComparison Operators:\n")
  cat("Equal to (a == b):", a == b, "\n")
  cat("Not equal to (a != b):", a != b, "\n")
  cat("Greater than (a > b):", a > b, "\n")
  cat("Less than (a < b):", a < b, "\n")
  cat("Greater than or equal to (a >= b):", a >= b, "\n")
  cat("Less than or equal to (a <= b):", a <= b, "\n")
  
  # Logical operators
  cat("\nLogical Operators:\n")
  x <- TRUE
  y <- FALSE
  
  cat("x =", x, ", y =", y, "\n")
  cat("AND (x & y):", x & y, "\n")
  cat("OR (x | y):", x | y, "\n")
  cat("NOT !x:", !x, "\n")
  
  # Assignment operators
  cat("\nAssignment Operators:\n")
  val <- 5
  cat("Standard assignment (<-):", val, "\n")
  
  val <<- 6  # Global assignment
  cat("Global assignment (<<-):", val, "\n")
  
  val = 7    # Alternative assignment
  cat("Alternative assignment (=):", val, "\n")
  
  # Special operators
  cat("\nSpecial Operators:\n")
  vec <- 1:5
  cat("Sequence operator (1:5):", vec, "\n")
  
  mat <- matrix(1:9, 3, 3)
  cat("Matrix multiplication operator (%*%):\n")
  print(mat %*% mat)
  
  cat("\n")
}