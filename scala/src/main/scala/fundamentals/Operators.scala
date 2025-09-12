package fundamentals

object Operators:
  def demonstrate(): Unit =
    println("=== Operators ===\n")
    
    // Arithmetic operators
    println("1. Arithmetic Operators:")
    println(s"Addition: 5 + 3 = ${5 + 3}")
    println(s"Subtraction: 5 - 3 = ${5 - 3}")
    println(s"Multiplication: 5 * 3 = ${5 * 3}")
    println(s"Division: 5 / 2 = ${5 / 2}")  // Integer division
    println(s"Division (float): 5.0 / 2 = ${5.0 / 2}")
    println(s"Modulus: 5 % 3 = ${5 % 3}")
    println(s"Power: math.pow(2, 3) = ${math.pow(2, 3)}")
    
    // Unary operators
    println("\n2. Unary Operators:")
    var x = 10
    println(s"Original x: $x")
    println(s"Unary minus -x: ${-x}")
    println(s"Unary plus +x: ${+x}")
    println(s"Prefix increment: ${x += 1; x}")  // Returns 11
    println(s"Prefix decrement: ${x -= 1; x}")  // Returns 10
    
    // Comparison operators
    println("\n3. Comparison Operators:")
    val a = 5
    val b = 3
    println(s"a = $a, b = $b")
    println(s"Equal to: a == b is ${a == b}")
    println(s"Not equal to: a != b is ${a != b}")
    println(s"Greater than: a > b is ${a > b}")
    println(s"Less than: a < b is ${a < b}")
    println(s"Greater than or equal to: a >= b is ${a >= b}")
    println(s"Less than or equal to: a <= b is ${a <= b}")
    
    // Logical operators
    println("\n4. Logical Operators:")
    val p = true
    val q = false
    println(s"p = $p, q = $q")
    println(s"AND: p && q is ${p && q}")
    println(s"OR: p || q is ${p || q}")
    println(s"NOT: !p is ${!p}")
    
    // Bitwise operators
    println("\n5. Bitwise Operators:")
    val m = 60  // 111100
    val n = 13  // 001101
    println(s"m = $m (${m.toBinaryString}), n = $n (${n.toBinaryString})")
    println(s"Bitwise AND: m & n = ${m & n} (${(m & n).toBinaryString})")
    println(s"Bitwise OR: m | n = ${m | n} (${(m | n).toBinaryString})")
    println(s"Bitwise XOR: m ^ n = ${m ^ n} (${(m ^ n).toBinaryString})")
    println(s"Bitwise NOT: ~m = ${~m} (${(~m).toBinaryString})")
    println(s"Left shift: m << 2 = ${m << 2} (${(m << 2).toBinaryString})")
    println(s"Right shift: m >> 2 = ${m >> 2} (${(m >> 2).toBinaryString})")
    println(s"Unsigned right shift: m >>> 2 = ${m >>> 2} (${(m >>> 2).toBinaryString})")
    
    // Assignment operators
    println("\n6. Assignment Operators:")
    var value = 10
    println(s"Original value: $value")
    value += 5; println(s"After += 5: $value")
    value -= 3; println(s"After -= 3: $value")
    value *= 2; println(s"After *= 2: $value")
    value /= 4; println(s"After /= 4: $value")
    value %= 3; println(s"After %= 3: $value")
    
    // Pattern matching operators
    println("\n7. Pattern Matching:")
    val number = 42
    val result = number match
      case 0 => "Zero"
      case n if n > 0 => "Positive"
      case _ => "Negative"
    println(s"Pattern matching result for $number: $result")
    
    // Type test operators
    println("\n8. Type Test Operators:")
    val obj: Any = "Hello"
    println(s"obj.isInstanceOf[String]: ${obj.isInstanceOf[String]}")
    println(s"obj.isInstanceOf[Int]: ${obj.isInstanceOf[Int]}")
    println(s"obj.asInstanceOf[String].length: ${obj.asInstanceOf[String].length}")
    
    println() // Empty line