package fundamentals

object Functions:
  def demonstrate(): Unit =
    println("=== Functions ===\n")
    
    // Basic function definition
    println("1. Basic function:")
    def add(a: Int, b: Int): Int = a + b
    println(s"add(5, 3) = ${add(5, 3)}")
    
    // Function with multiple parameter lists (currying)
    println("\n2. Curried function:")
    def multiply(x: Int)(y: Int): Int = x * y
    val multiplyBy2 = multiply(2)_  // Partially applied function
    println(s"multiplyBy2(5) = ${multiplyBy2(5)}")
    
    // Function with default parameters
    println("\n3. Default parameters:")
    def greet(name: String, greeting: String = "Hello"): String =
      s"$greeting, $name!"
    println(greet("Alice"))
    println(greet("Bob", "Hi"))
    
    // Named parameters
    println("\n4. Named parameters:")
    def divide(numerator: Int, denominator: Int): Double =
      numerator.toDouble / denominator
    println(s"divide(denominator = 2, numerator = 5) = ${divide(denominator = 2, numerator = 5)}")
    
    // Variable length parameters (varargs)
    println("\n5. Varargs:")
    def sum(numbers: Int*): Int = numbers.sum
    println(s"sum(1, 2, 3, 4, 5) = ${sum(1, 2, 3, 4, 5)}")
    
    // Higher-order functions
    println("\n6. Higher-order functions:")
    def applyOperation(x: Int, y: Int)(operation: (Int, Int) => Int): Int =
      operation(x, y)
    
    val addition = (x: Int, y: Int) => x + y
    val subtraction = (x: Int, y: Int) => x - y
    
    println(s"applyOperation(5, 3)(addition) = ${applyOperation(5, 3)(addition)}")
    println(s"applyOperation(5, 3)(subtraction) = ${applyOperation(5, 3)(subtraction)}")
    
    // Function composition
    println("\n7. Function composition:")
    val double = (x: Int) => x * 2
    val addOne = (x: Int) => x + 1
    val doubleAndAddOne = double andThen addOne
    val addOneAndDouble = double compose addOne
    println(s"doubleAndAddOne(5) = ${doubleAndAddOne(5)}")  // (5 * 2) + 1
    println(s"addOneAndDouble(5) = ${addOneAndDouble(5)}")  // (5 + 1) * 2
    
    // Anonymous functions (lambda expressions)
    println("\n8. Anonymous functions:")
    val numbers = List(1, 2, 3, 4, 5)
    println(s"Original list: $numbers")
    println(s"Doubled: ${numbers.map(x => x * 2)}")
    println(s"Even numbers: ${numbers.filter(x => x % 2 == 0)}")
    
    // Partial functions
    println("\n9. Partial functions:")
    val divide5By: PartialFunction[Int, Int] =
      case d if d != 0 => 5 / d
    
    println("divide5By defined at 1: " + divide5By.isDefinedAt(1))
    println("divide5By(2) = " + divide5By(2))
    println("divide5By defined at 0: " + divide5By.isDefinedAt(0))
    
    // Nested functions
    println("\n10. Nested functions:")
    def factorial(n: Int): Int =
      def fact(n: Int, acc: Int): Int =
        if n <= 1 then acc
        else fact(n - 1, n * acc)
      fact(n, 1)
    
    println(s"factorial(5) = ${factorial(5)}")
    
    // By-name parameters
    println("\n11. By-name parameters:")
    def byNameDemo(x: => Int): Int =
      println("Parameter accessed first time")
      val first = x
      println("Parameter accessed second time")
      val second = x
      first + second
    
    var counter = 0
    def nextNumber: Int =
      counter += 1
      counter
    
    println(s"byNameDemo(nextNumber) = ${byNameDemo(nextNumber)}")
    
    // Type parameters (generic functions)
    println("\n12. Generic functions:")
    def firstElement[A](list: List[A]): Option[A] =
      list.headOption
    
    println(s"firstElement(List(1, 2, 3)) = ${firstElement(List(1, 2, 3))}")
    println(s"firstElement(List('a', 'b', 'c')) = ${firstElement(List('a', 'b', 'c'))}")
    
    // Function with implicit parameters
    println("\n13. Implicit parameters:")
    def multiply(x: Int)(implicit factor: Int): Int = x * factor
    
    given factor: Int = 10
    println(s"multiply(5) = ${multiply(5)}")
    
    // Function literals with placeholder syntax
    println("\n14. Function literals with placeholder syntax:")
    val numbers2 = List(1, 2, 3, 4, 5)
    println(s"Original list: $numbers2")
    println(s"Multiplied by 2: ${numbers2.map(_ * 2)}")  // _ is a placeholder for the parameter
    println(s"Sum: ${numbers2.reduce(_ + _)}")  // Two placeholders for two parameters
    
    println() // Empty line