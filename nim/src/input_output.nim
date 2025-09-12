import std/[streams, os]

proc demonstrateIO*() =
  echo "=== Input and Output ==="
  
  # Basic output
  echo "Basic output using echo"
  stdout.write("Basic output using stdout.write (no newline)")
  echo ""
  
  # Formatted output
  let
    name = "Alice"
    age = 25
  echo fmt"Formatted string: {name} is {age} years old"
  
  # Write with different types
  echo "\nWriting different types:"
  echo "Integer: ", 42
  echo "Float: ", 3.14159
  echo "Boolean: ", true
  
  # String formatting
  let
    pi = 3.14159
    message = "Pi is approximately $1" % [$pi]
  echo "\nString formatting:"
  echo message
  
  # Input operations (commented out for non-interactive demos)
  #[
  stdout.write("Enter your name: ")
  stdout.flushFile()
  let inputName = readLine(stdin)
  echo "Hello, ", inputName, "!"
  
  stdout.write("Enter your age: ")
  stdout.flushFile()
  let inputAge = readLine(stdin).parseInt()
  echo "In 10 years, you'll be ", inputAge + 10
  ]#
  
  # File operations
  echo "\nFile operations:"
  
  # Writing to a file
  let outFile = open("test.txt", fmWrite)
  outFile.writeLine("Line 1")
  outFile.writeLine("Line 2")
  outFile.writeLine("Line 3")
  outFile.close()
  
  # Reading from a file
  echo "Reading file line by line:"
  let inFile = open("test.txt")
  var line: string
  while inFile.readLine(line):
    echo line
  inFile.close()
  
  # Reading entire file
  echo "\nReading entire file:"
  let content = readFile("test.txt")
  echo content
  
  # Appending to a file
  let appendFile = open("test.txt", fmAppend)
  appendFile.writeLine("Line 4 (appended)")
  appendFile.close()
  
  # Reading updated file
  echo "\nReading updated file:"
  echo readFile("test.txt")
  
  # Clean up
  removeFile("test.txt")
  
  # Error handling with try-except
  echo "\nError handling:"
  try:
    let nonexistentFile = open("nonexistent.txt")
    nonexistentFile.close()
  except IOError:
    echo "Could not open file: nonexistent.txt"
  
  echo "" # Empty line