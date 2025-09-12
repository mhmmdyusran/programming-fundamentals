# Function to demonstrate arrays, vectors, matrices, and lists in R
demonstrate_arrays <- function() {
  cat("=== Arrays and Data Structures ===\n")
  
  # Vectors
  cat("Vectors:\n")
  numeric_vector <- c(1, 2, 3, 4, 5)
  character_vector <- c("red", "green", "blue")
  logical_vector <- c(TRUE, FALSE, TRUE)
  
  cat("Numeric vector:", numeric_vector, "\n")
  cat("Character vector:", character_vector, "\n")
  cat("Logical vector:", logical_vector, "\n")
  
  # Vector operations
  cat("\nVector operations:\n")
  vec1 <- 1:5
  vec2 <- 6:10
  cat("vec1:", vec1, "\n")
  cat("vec2:", vec2, "\n")
  cat("vec1 + vec2:", vec1 + vec2, "\n")
  cat("vec1 * 2:", vec1 * 2, "\n")
  
  # Matrices
  cat("\nMatrices:\n")
  mat1 <- matrix(1:9, nrow = 3, ncol = 3)
  cat("3x3 Matrix:\n")
  print(mat1)
  
  # Matrix operations
  cat("\nMatrix operations:\n")
  cat("Transpose:\n")
  print(t(mat1))
  cat("\nMatrix multiplication:\n")
  print(mat1 %*% mat1)
  
  # Arrays
  cat("\nArrays:\n")
  arr <- array(1:24, dim = c(2, 3, 4))
  cat("3D Array (2x3x4):\n")
  print(arr)
  
  # Lists
  cat("\nLists:\n")
  my_list <- list(
    numbers = 1:5,
    text = "Hello",
    matrix = matrix(1:4, 2, 2),
    logical = TRUE
  )
  cat("List structure:\n")
  str(my_list)
  
  # Data frames
  cat("\nData frames:\n")
  df <- data.frame(
    name = c("Alice", "Bob", "Charlie"),
    age = c(25, 30, 35),
    score = c(95, 85, 90)
  )
  cat("Data frame:\n")
  print(df)
  
  # Factors
  cat("\nFactors:\n")
  colors <- factor(c("red", "blue", "green", "blue", "red"))
  cat("Factor levels:", levels(colors), "\n")
  cat("Factor values:", colors, "\n")
  
  cat("\n")
}