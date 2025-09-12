package fundamentals

// Simple data class for demonstration
data class Person(val name: String, var age: Int)

// Demonstrates extension function
fun String.addExclamation() = "$this!"

// Demonstrates infix function
infix fun Int.times(str: String) = str.repeat(this)

class Functions {
    fun demonstrate() {
        println("=== Functions ===\n")

        // Basic function
        println("1. Basic function:")
        greet("World")
        
        // Function with return value
        println("\n2. Function with return value:")
        val sum = add(5, 3)
        println("5 + 3 = $sum")
        
        // Function with default parameters
        println("\n3. Function with default parameters:")
        printInfo("Alice")  // Uses default age
        printInfo("Bob", 25)  // Specifies age
        
        // Named arguments
        println("\n4. Named arguments:")
        printInfo(age = 30, name = "Charlie")  // Order doesn't matter with named args
        
        // Variable number of arguments (vararg)
        println("\n5. Variable number of arguments:")
        val numbers = calculateSum(1, 2, 3, 4, 5)
        println("Sum of numbers: $numbers")
        
        // Local functions
        println("\n6. Local function:")
        fun double(x: Int) = x * 2
        println("Double of 5: ${double(5)}")
        
        // Lambda expressions
        println("\n7. Lambda expressions:")
        val square = { x: Int -> x * x }
        println("Square of 4: ${square(4)}")
        
        // Higher-order function with lambda
        println("\n8. Higher-order function:")
        val numbers2 = listOf(1, 2, 3, 4, 5)
        val doubled = numbers2.map { it * 2 }
        println("Doubled numbers: $doubled")
        
        // Function type and references
        println("\n9. Function references:")
        val numbers3 = listOf(1, 2, 3, 4, 5)
        println("Even numbers: ${numbers3.filter(::isEven)}")
        
        // Extension function
        println("\n10. Extension function:")
        val message = "Hello"
        println(message.addExclamation())
        
        // Infix function
        println("\n11. Infix function:")
        println(3 times "Hip ")
        
        // Scope functions: let
        println("\n12. Scope function - let:")
        val nullableName: String? = "John"
        nullableName?.let {
            println("Name length: ${it.length}")
        }
        
        // Scope functions: with
        println("\n13. Scope function - with:")
        val person = Person("Alice", 25)
        with(person) {
            println("Name: $name")
            println("Age: $age")
        }
        
        // Scope functions: run
        println("\n14. Scope function - run:")
        person.run {
            println("$name is $age years old")
        }
        
        // Scope functions: apply
        println("\n15. Scope function - apply:")
        val person2 = Person("Bob", 30).apply {
            age = 31  // Modify property
        }
        println("Updated person: $person2")
        
        // Scope functions: also
        println("\n16. Scope function - also:")
        person2.also {
            println("Additional info: ${it.name} will be ${it.age + 1} next year")
        }
        
        // Inline function
        println("\n17. Inline function:")
        executeWithTime {
            // Simulate some work
            Thread.sleep(100)
            println("Work completed!")
        }
        
        // Generic function
        println("\n18. Generic function:")
        printItem("Hello")
        printItem(42)
        printItem(true)
        
        // Tail recursive function
        println("\n19. Tail recursive function:")
        println("Factorial of 5: ${factorial(5)}")
        
        // Function with receiver
        println("\n20. Function with receiver:")
        val result = buildString {
            append("Hello, ")
            append("Kotlin!")
        }
        println(result)

        println() // Empty line
    }
    
    // Basic function
    private fun greet(name: String) {
        println("Hello, $name!")
    }
    
    // Function with return value
    private fun add(a: Int, b: Int): Int {
        return a + b
    }
    
    // Function with default parameter
    private fun printInfo(name: String, age: Int = 20) {
        println("Name: $name, Age: $age")
    }
    
    // Function with vararg parameter
    private fun calculateSum(vararg numbers: Int): Int {
        return numbers.sum()
    }
    
    // Function for function reference example
    private fun isEven(n: Int): Boolean {
        return n % 2 == 0
    }
    
    // Inline function example
    private inline fun executeWithTime(action: () -> Unit) {
        val startTime = System.currentTimeMillis()
        action()
        val endTime = System.currentTimeMillis()
        println("Execution time: ${endTime - startTime}ms")
    }
    
    // Generic function example
    private fun <T> printItem(item: T) {
        println("Item: $item (${item!!::class.simpleName})")
    }
    
    // Tail recursive function example
    private tailrec fun factorial(n: Long, accumulator: Long = 1): Long {
        return when (n) {
            0L, 1L -> accumulator
            else -> factorial(n - 1, n * accumulator)
        }
    }
}