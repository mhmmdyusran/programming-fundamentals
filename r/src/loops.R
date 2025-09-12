# Function to demonstrate loops in R
demonstrate_loops <- function() {
  cat("=== Loops ===\n")
  
  # for loop with vector
  cat("For loop with vector:\n")
  for (i in 1:5) {
    cat(i, " ")
  }
  cat("\n")
  
  # for loop with character vector
  fruits <- c("apple", "banana", "orange")
  cat("\nFor loop with character vector:\n")
  for (fruit in fruits) {
    cat("Current fruit:", fruit, "\n")
  }
  
  # while loop
  cat("\nWhile loop:\n")
  counter <- 1
  while (counter <= 5) {
    cat("Counter:", counter, "\n")
    counter <- counter + 1
  }
  
  # repeat loop with break
  cat("\nRepeat loop with break:\n")
  x <- 1
  repeat {
    cat("x:", x, "\n")
    x <- x + 1
    if (x > 5) {
      break
    }
  }
  
  # nested loops
  cat("\nNested loops:\n")
  for (i in 1:3) {
    for (j in 1:2) {
      cat("i =", i, ", j =", j, "\n")
    }
  }
  
  # loop with next (continue)
  cat("\nLoop with next (skip even numbers):\n")
  for (i in 1:5) {
    if (i %% 2 == 0) {
      next
    }
    cat("Odd number:", i, "\n")
  }
  
  # apply family example
  cat("\nApply family example:\n")
  matrix_data <- matrix(1:9, nrow = 3)
  cat("Original matrix:\n")
  print(matrix_data)
  cat("Row sums using apply:\n")
  print(apply(matrix_data, 1, sum))
  
  cat("\n")
}