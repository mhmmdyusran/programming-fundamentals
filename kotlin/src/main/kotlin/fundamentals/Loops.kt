package fundamentals

class Loops {
    fun demonstrate() {
        println("=== Loops ===\n")

        // For loop with range
        println("1. For loop with range:")
        for (i in 1..5) {
            print("$i ")
        }
        println()

        // For loop with downTo
        println("\n2. For loop with downTo:")
        for (i in 5 downTo 1) {
            print("$i ")
        }
        println()

        // For loop with step
        println("\n3. For loop with step:")
        for (i in 0..10 step 2) {
            print("$i ")
        }
        println()

        // For loop with until (exclusive upper bound)
        println("\n4. For loop with until:")
        for (i in 0 until 5) {
            print("$i ")
        }
        println()

        // For loop over array
        println("\n5. For loop over array:")
        val fruits = arrayOf("Apple", "Banana", "Orange", "Mango")
        for (fruit in fruits) {
            print("$fruit ")
        }
        println()

        // For loop with index
        println("\n6. For loop with index:")
        for ((index, fruit) in fruits.withIndex()) {
            println("Index: $index, Value: $fruit")
        }

        // While loop
        println("\n7. While loop:")
        var count = 0
        while (count < 5) {
            print("${count++} ")
        }
        println()

        // Do-while loop
        println("\n8. Do-while loop:")
        count = 0
        do {
            print("${count++} ")
        } while (count < 5)
        println()

        // Break statement
        println("\n9. Break statement:")
        for (i in 1..10) {
            if (i == 6) break
            print("$i ")
        }
        println()

        // Continue statement
        println("\n10. Continue statement:")
        for (i in 1..5) {
            if (i == 3) continue
            print("$i ")
        }
        println()

        // Labeled break
        println("\n11. Labeled break:")
        outer@ for (i in 1..3) {
            for (j in 1..3) {
                if (i == 2 && j == 2) break@outer
                print("[$i,$j] ")
            }
        }
        println()

        // Labeled continue
        println("\n12. Labeled continue:")
        outer@ for (i in 1..3) {
            for (j in 1..3) {
                if (j == 2) continue@outer
                print("[$i,$j] ")
            }
        }
        println()

        // Repeat loop
        println("\n13. Repeat loop:")
        repeat(3) { index ->
            println("Repetition ${index + 1}")
        }

        // forEach loop
        println("\n14. forEach loop:")
        fruits.forEach { fruit ->
            print("$fruit ")
        }
        println()

        // forEachIndexed
        println("\n15. forEachIndexed:")
        fruits.forEachIndexed { index, fruit ->
            println("Index: $index, Value: $fruit")
        }

        // Range iteration with filter and map
        println("\n16. Range with filter and map:")
        (1..10)
            .filter { it % 2 == 0 }
            .map { it * it }
            .forEach { print("$it ") }
        println()

        // Sequence operations
        println("\n17. Sequence operations:")
        (1..5).asSequence()
            .map { it * 2 }
            .filter { it > 5 }
            .forEach { print("$it ") }
        println()

        println() // Empty line
    }
}