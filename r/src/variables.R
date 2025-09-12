# Function to demonstrate variables in R
demonstrate_variables <- function() {
  cat("=== Variables ===\n")
  
  # Numeric variables
  integer_var <- 42L  # Explicit integer using L suffix
  double_var <- 3.14
  
  # Character variables
  name <- "John"
  message <- 'Hello, World!'
  
  # Logical variables
  is_true <- TRUE
  is_false <- FALSE
  
  # Factor (categorical) variable
  colors <- factor(c("red", "blue", "green"))
  
  # Vector
  numbers <- c(1, 2, 3, 4, 5)
  
  # List
  person <- list(
    name = "Alice",
    age = 25,
    scores = c(90, 85, 95)
  )
  
  # Display values
  cat("Integer:", integer_var, "\n")
  cat("Double:", double_var, "\n")
  cat("Name:", name, "\n")
  cat("Message:", message, "\n")
  cat("Is True:", is_true, "\n")
  cat("Is False:", is_false, "\n")
  cat("Colors (Factor):", levels(colors), "\n")
  cat("Numbers (Vector):", numbers, "\n")
  cat("Person (List):\n")
  str(person)
  cat("\n")
}