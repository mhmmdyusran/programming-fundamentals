package fundamentals

data class Point(var x: Int, var y: Int) {
    // Operator overloading example
    operator fun plus(other: Point) = Point(x + other.x, y + other.y)
    operator fun minus(other: Point) = Point(x - other.x, y - other.y)
    operator fun unaryMinus() = Point(-x, -y)
}

class Operators {
    fun demonstrate() {
        println("=== Operators ===\n")

        // Arithmetic operators
        println("1. Arithmetic Operators:")
        val a = 10
        val b = 3
        println("a = $a, b = $b")
        println("Addition (a + b): ${a + b}")
        println("Subtraction (a - b): ${a - b}")
        println("Multiplication (a * b): ${a * b}")
        println("Division (a / b): ${a / b}")
        println("Modulus (a % b): ${a % b}")

        // Integer vs Float division
        println("\n2. Integer vs Float Division:")
        println("Integer division (10 / 3): ${10 / 3}")
        println("Float division (10.0 / 3.0): ${10.0 / 3.0}")

        // Increment and decrement
        println("\n3. Increment and Decrement:")
        var x = 5
        println("x = $x")
        println("++x = ${++x}")  // Prefix increment
        println("x++ = ${x++}")  // Postfix increment
        println("x = $x")
        println("--x = ${--x}")  // Prefix decrement
        println("x-- = ${x--}")  // Postfix decrement
        println("x = $x")

        // Assignment operators
        println("\n4. Assignment Operators:")
        var value = 10
        println("Initial value: $value")
        value += 5
        println("After += 5: $value")
        value -= 3
        println("After -= 3: $value")
        value *= 2
        println("After *= 2: $value")
        value /= 4
        println("After /= 4: $value")
        value %= 3
        println("After %= 3: $value")

        // Comparison operators
        println("\n5. Comparison Operators:")
        val num1 = 10
        val num2 = 20
        println("num1 = $num1, num2 = $num2")
        println("num1 > num2: ${num1 > num2}")
        println("num1 < num2: ${num1 < num2}")
        println("num1 >= num2: ${num1 >= num2}")
        println("num1 <= num2: ${num1 <= num2}")
        println("num1 == num2: ${num1 == num2}")
        println("num1 != num2: ${num1 != num2}")

        // Logical operators
        println("\n6. Logical Operators:")
        val t = true
        val f = false
        println("t = $t, f = $f")
        println("AND (t && f): ${t && f}")
        println("OR (t || f): ${t || f}")
        println("NOT (!t): ${!t}")

        // Bitwise operators
        println("\n7. Bitwise Operators:")
        val bits1 = 0b1100  // 12 in binary
        val bits2 = 0b1010  // 10 in binary
        println("bits1 = ${bits1.toString(2).padStart(4, '0')}")
        println("bits2 = ${bits2.toString(2).padStart(4, '0')}")
        println("AND (bits1 and bits2): ${(bits1 and bits2).toString(2).padStart(4, '0')}")
        println("OR (bits1 or bits2): ${(bits1 or bits2).toString(2).padStart(4, '0')}")
        println("XOR (bits1 xor bits2): ${(bits1 xor bits2).toString(2).padStart(4, '0')}")
        println("Inverse of bits1: ${bits1.inv() and 0b1111}")
        println("Left shift (bits1 shl 1): ${(bits1 shl 1).toString(2).padStart(4, '0')}")
        println("Right shift (bits1 shr 1): ${(bits1 shr 1).toString(2).padStart(4, '0')}")

        // Operator overloading
        println("\n8. Operator Overloading:")
        val p1 = Point(2, 3)
        val p2 = Point(3, 4)
        println("p1 = $p1")
        println("p2 = $p2")
        println("p1 + p2 = ${p1 + p2}")
        println("p1 - p2 = ${p1 - p2}")
        println("-p1 = ${-p1}")

        // Range operator
        println("\n9. Range Operator:")
        val range = 1..5
        println("Range 1..5: $range")
        println("4 in range: ${4 in range}")
        println("6 in range: ${6 in range}")
        
        // Safe call operator
        println("\n10. Safe Call Operator:")
        val nullableString: String? = null
        println("Length of nullable string: ${nullableString?.length}")
        
        // Elvis operator
        println("\n11. Elvis Operator:")
        val length = nullableString?.length ?: -1
        println("Length with Elvis operator: $length")

        println() // Empty line
    }
}