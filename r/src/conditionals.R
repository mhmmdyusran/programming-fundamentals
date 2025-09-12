# Function to demonstrate conditionals in R
demonstrate_conditionals <- function() {
  cat("=== Conditionals ===\n")
  
  # Simple if statement
  x <- 10
  cat("x =", x, "\n")
  
  if (x > 5) {
    cat("x is greater than 5\n")
  }
  
  # if-else statement
  y <- 3
  cat("\ny =", y, "\n")
  if (y > 5) {
    cat("y is greater than 5\n")
  } else {
    cat("y is less than or equal to 5\n")
  }
  
  # if-else if-else statement
  z <- 0
  cat("\nz =", z, "\n")
  if (z > 0) {
    cat("z is positive\n")
  } else if (z < 0) {
    cat("z is negative\n")
  } else {
    cat("z is zero\n")
  }
  
  # Nested if statements
  a <- 15
  b <- 10
  cat("\na =", a, ", b =", b, "\n")
  if (a > 10) {
    if (b > 5) {
      cat("Both a and b are above their thresholds\n")
    }
  }
  
  # switch statement
  fruit <- "apple"
  cat("\nfruit =", fruit, "\n")
  result <- switch(fruit,
    "apple" = "This is an apple",
    "banana" = "This is a banana",
    "orange" = "This is an orange",
    "Unknown fruit"
  )
  cat("Switch result:", result, "\n")
  
  # ifelse() function (vectorized if)
  numbers <- -2:2
  cat("\nNumbers:", numbers, "\n")
  signs <- ifelse(numbers > 0, "positive", 
                 ifelse(numbers < 0, "negative", "zero"))
  cat("Signs:", signs, "\n")
  
  cat("\n")
}