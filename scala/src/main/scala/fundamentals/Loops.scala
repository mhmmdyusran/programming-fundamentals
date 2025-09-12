package fundamentals

import scala.annotation.tailrec
import scala.util.control.Breaks
import scala.util.control.Breaks.{break, breakable}

object Loops:
  def demonstrate(): Unit =
    println("=== Loops ===\n")
    
    // While loop
    println("1. While loop:")
    var i = 0
    while i < 5 do
      print(s"$i ")
      i += 1
    println("\n")
    
    // Do-while loop
    println("2. Do-while loop:")
    var j = 0
    do
      print(s"$j ")
      j += 1
    while j < 5
    println("\n")
    
    // For loop with Range
    println("3. For loop with Range:")
    println("a. Inclusive range:")
    for i <- 1 to 5 do
      print(s"$i ")
    println()
    
    println("\nb. Exclusive range:")
    for i <- 1 until 5 do
      print(s"$i ")
    println()
    
    println("\nc. Range with step:")
    for i <- 1 to 10 by 2 do
      print(s"$i ")
    println("\n")
    
    // Nested loops
    println("4. Nested loops:")
    for
      i <- 1 to 3
      j <- 1 to 3
    do
      println(s"($i, $j)")
    println()
    
    // For loop with filters (guards)
    println("5. For loop with filters:")
    for
      i <- 1 to 10
      if i % 2 == 0
      if i > 5
    do
      print(s"$i ")
    println("\n")
    
    // For comprehension (for expressions)
    println("6. For comprehension:")
    val numbers = List(1, 2, 3)
    val letters = List("a", "b", "c")
    
    println("Cartesian product using for:")
    val pairs = for
      n <- numbers
      l <- letters
    yield s"$n$l"
    println(pairs)
    println()
    
    // Breaking loops
    println("7. Breaking loops:")
    println("Using breakable:")
    breakable {
      for i <- 1 to 10 do
        if i == 6 then
          break()
        print(s"$i ")
    }
    println("\n")
    
    // Pattern matching in for loops
    println("8. Pattern matching in for loops:")
    val tuples = List((1, "one"), (2, "two"), (3, "three"))
    for (num, str) <- tuples do
      println(s"Number: $num, String: $str")
    println()
    
    // Recursion example
    println("9. Recursion:")
    def factorial(n: Int): Int =
      if n <= 1 then 1
      else n * factorial(n - 1)
    
    println(s"Factorial of 5: ${factorial(5)}")
    
    // Tail recursion example
    println("\n10. Tail recursion:")
    def factorialTail(n: Int): Int =
      @tailrec
      def loop(x: Int, accumulator: Int): Int =
        if x <= 1 then accumulator
        else loop(x - 1, x * accumulator)
      
      loop(n, 1)
    
    println(s"Factorial of 5 (tail recursive): ${factorialTail(5)}")
    
    // Infinite stream with take
    println("\n11. Working with infinite streams:")
    def fibonacci: LazyList[BigInt] =
      def fib(a: BigInt, b: BigInt): LazyList[BigInt] =
        a #:: fib(b, a + b)
      fib(0, 1)
    
    println("First 10 Fibonacci numbers:")
    fibonacci.take(10).foreach(n => print(s"$n "))
    println("\n")
    
    // foreach loop
    println("12. Foreach loop:")
    val fruits = List("apple", "banana", "orange")
    fruits.foreach(fruit => println(s"I like $fruit"))
    
    println() // Empty line