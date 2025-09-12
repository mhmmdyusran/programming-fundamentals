# Function to demonstrate functions in R
demonstrate_functions <- function() {
  cat("=== Functions ===\n")
  
  # Simple function
  square <- function(x) {
    return(x * x)
  }
  
  # Function with multiple arguments
  calculate_rectangle_area <- function(length, width) {
    return(length * width)
  }
  
  # Function with default arguments
  greet <- function(name = "World") {
    return(paste("Hello,", name, "!"))
  }
  
  # Function with variable number of arguments
  sum_all <- function(...) {
    args <- list(...)
    return(sum(unlist(args)))
  }
  
  # Function returning multiple values
  stats <- function(x) {
    return(list(
      mean = mean(x),
      median = median(x),
      sd = sd(x)
    ))
  }
  
  # Recursive function
  factorial <- function(n) {
    if (n <= 1) return(1)
    return(n * factorial(n - 1))
  }
  
  # Anonymous function
  numbers <- 1:5
  squared <- sapply(numbers, function(x) x^2)
  
  # Demonstrate all functions
  cat("Square of 5:", square(5), "\n")
  cat("Rectangle area (3 x 4):", calculate_rectangle_area(3, 4), "\n")
  cat("Default greeting:", greet(), "\n")
  cat("Personalized greeting:", greet("Alice"), "\n")
  cat("Sum of multiple numbers:", sum_all(1, 2, 3, 4, 5), "\n")
  
  # Demonstrate stats function
  data <- c(1, 2, 3, 4, 5)
  result <- stats(data)
  cat("\nStatistics of data:", data, "\n")
  cat("Mean:", result$mean, "\n")
  cat("Median:", result$median, "\n")
  cat("Standard Deviation:", result$sd, "\n")
  
  # Demonstrate factorial
  cat("\nFactorial of 5:", factorial(5), "\n")
  
  # Demonstrate anonymous function results
  cat("Original numbers:", numbers, "\n")
  cat("Squared numbers:", squared, "\n")
  
  # Higher-order function example
  apply_twice <- function(f, x) {
    return(f(f(x)))
  }
  cat("\nApplying square function twice to 2:", apply_twice(square, 2), "\n")
  
  cat("\n")
}