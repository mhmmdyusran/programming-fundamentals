package fundamentals

@main def run(): Unit =
  println("=== Scala Programming Fundamentals ===\n")
  
  // Call demonstrate() method from each module
  Variables.demonstrate()
  InputOutput.demonstrate()
  Operators.demonstrate()
  Conditionals.demonstrate()
  Loops.demonstrate()
  Arrays.demonstrate()
  Functions.demonstrate()
  
  println("\n=== End of Demonstrations ===")