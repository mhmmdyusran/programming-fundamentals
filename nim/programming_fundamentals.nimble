# Package information
version     = "0.1.0"
author      = "Programming Fundamentals"
description = "Basic programming concepts in Nim"
license     = "MIT"

# Dependencies
requires "nim >= 1.6.0"

# Binary name
bin = @["programming_fundamentals"]
srcDir = "src"

# Task to run the program
task run, "Run the program":
  exec "nim c -r src/main.nim"