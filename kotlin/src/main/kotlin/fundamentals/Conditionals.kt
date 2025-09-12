package fundamentals

sealed class Animal {
    abstract fun makeSound(): String
}

class Dog(val name: String) : Animal() {
    override fun makeSound() = "Woof!"
}

class Cat(val name: String) : Animal() {
    override fun makeSound() = "Meow!"
}

class Conditionals {
    fun demonstrate() {
        println("=== Conditionals ===\n")

        // Basic if expression
        println("1. Basic if expression:")
        val number = 42
        if (number > 0) {
            println("$number is positive")
        } else if (number < 0) {
            println("$number is negative")
        } else {
            println("$number is zero")
        }

        // If expression returning a value
        println("\n2. If expression as value:")
        val max = if (5 > 3) 5 else 3
        println("Max of 5 and 3 is $max")

        // Multi-line if expression
        val temperature = 25
        val description = if (temperature < 0) {
            "Very cold"
        } else if (temperature < 10) {
            "Cold"
        } else if (temperature < 20) {
            "Mild"
        } else if (temperature < 30) {
            "Warm"
        } else {
            "Hot"
        }
        println("\n3. Temperature is $temperature°C: $description")

        // When expression (switch equivalent)
        println("\n4. When expression:")
        val dayOfWeek = 3
        val day = when (dayOfWeek) {
            1 -> "Monday"
            2 -> "Tuesday"
            3 -> "Wednesday"
            4 -> "Thursday"
            5 -> "Friday"
            6 -> "Saturday"
            7 -> "Sunday"
            else -> "Invalid day"
        }
        println("Day $dayOfWeek is $day")

        // When with multiple values
        println("\n5. When with multiple values:")
        val number2 = 15
        when (number2) {
            0 -> println("Zero")
            1, 2, 3 -> println("Small number")
            in 4..9 -> println("Medium number")
            in 10..20 -> println("Large number")
            else -> println("Very large number")
        }

        // When without argument
        println("\n6. When without argument:")
        val x = 20
        val y = 10
        when {
            x > y -> println("x is greater than y")
            x < y -> println("x is less than y")
            else -> println("x equals y")
        }

        // Smart casts with when
        println("\n7. Smart casts with when:")
        val pet: Animal = Dog("Rex")
        when (pet) {
            is Dog -> println("${pet.name} says: ${pet.makeSound()}")
            is Cat -> println("${pet.name} says: ${pet.makeSound()}")
        }

        // When expression returning value
        println("\n8. When expression as value:")
        val obj: Any = "Hello"
        val result = when (obj) {
            is String -> "String of length ${obj.length}"
            is Int -> "Integer value $obj"
            is Boolean -> "Boolean value $obj"
            else -> "Unknown type"
        }
        println("Object type: $result")

        // Null safety with if
        println("\n9. Null safety with if:")
        val nullableValue: String? = null
        if (nullableValue != null) {
            println("Value is: $nullableValue")
        } else {
            println("Value is null")
        }

        // Combining conditions
        println("\n10. Combining conditions:")
        val age = 25
        val hasID = true
        if (age >= 18 && hasID) {
            println("Can enter the venue")
        } else {
            println("Cannot enter the venue")
        }

        // Range checks
        println("\n11. Range checks:")
        val score = 85
        when (score) {
            in 90..100 -> println("Excellent")
            in 80..89 -> println("Very Good")
            in 70..79 -> println("Good")
            in 60..69 -> println("Pass")
            else -> println("Fail")
        }

        println() // Empty line
    }
}