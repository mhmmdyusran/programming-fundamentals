package fundamentals

object Variables:
  def demonstrate(): Unit =
    println("=== Variables and Data Types ===\n")
    
    // Val vs Var
    println("1. Val vs Var:")
    val immutable = 42          // Immutable (cannot be reassigned)
    var mutable = 10           // Mutable (can be reassigned)
    mutable = 20              // OK
    println(s"Immutable value: $immutable")
    println(s"Mutable value: $mutable")
    
    // Type inference vs explicit typing
    println("\n2. Type inference vs explicit typing:")
    val inferred = 100        // Type is inferred as Int
    val explicit: Int = 100   // Type is explicitly declared
    println(s"Inferred type value: $inferred")
    println(s"Explicit type value: $explicit")
    
    // Basic data types
    println("\n3. Basic data types:")
    val byte: Byte = 127
    val short: Short = 32767
    val int: Int = 2147483647
    val long: Long = 9223372036854775807L
    val float: Float = 3.14f
    val double: Double = 3.14159265359
    val boolean: Boolean = true
    val char: Char = 'A'
    
    println(s"Byte: $byte")
    println(s"Short: $short")
    println(s"Int: $int")
    println(s"Long: $long")
    println(s"Float: $float")
    println(s"Double: $double")
    println(s"Boolean: $boolean")
    println(s"Char: $char")
    
    // String and string interpolation
    println("\n4. String and string interpolation:")
    val name = "John"
    val age = 30
    val simple = s"$name is $age years old"
    val complex = f"$name%s is $age%d years old"
    val raw = raw"Raw string with \n newline"
    
    println(s"Simple interpolation: $simple")
    println(s"Complex interpolation: $complex")
    println(s"Raw string: $raw")
    
    // Multi-line strings
    println("\n5. Multi-line strings:")
    val multiLine = """
      |This is a multi-line
      |string that preserves
      |formatting and spacing.
      """.stripMargin
    println(multiLine)
    
    // Option type
    println("\n6. Option type:")
    val someValue: Option[String] = Some("Hello")
    val noValue: Option[String] = None
    
    println(s"Some value: ${someValue.getOrElse("Default")}")
    println(s"No value: ${noValue.getOrElse("Default")}")
    
    // Tuples
    println("\n7. Tuples:")
    val tuple2 = ("Hello", 42)
    val tuple3 = ("World", 3.14, true)
    
    println(s"2-Tuple: $tuple2")
    println(s"3-Tuple: $tuple3")
    println(s"First element of tuple2: ${tuple2._1}")
    
    // Type aliases
    println("\n8. Type aliases:")
    type Age = Int
    type Name = String
    val personAge: Age = 25
    val personName: Name = "Alice"
    
    println(s"Person: $personName is $personAge years old")
    
    // Case classes
    println("\n9. Case classes:")
    case class Person(name: String, age: Int)
    val person = Person("Bob", 30)
    println(s"Case class: $person")
    
    // Enumerations
    println("\n10. Enumerations:")
    enum Color:
      case Red, Green, Blue
    
    val color = Color.Blue
    println(s"Enum value: $color")
    
    // Lazy values
    println("\n11. Lazy values:")
    lazy val lazyValue = {
      println("Computing lazy value...")
      42
    }
    println("Lazy value not yet accessed")
    println(s"Accessing lazy value: $lazyValue")
    
    // By-name parameters demonstration
    println("\n12. By-name parameters:")
    def byNameDemo(x: => Int): Int =
      println("Evaluating parameter...")
      x + x
    
    val result = byNameDemo(
      println("Computing parameter...")
      21
    )
    println(s"Result: $result")
    
    println() // Empty line