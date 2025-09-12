package fundamentals

class Variables {
    fun demonstrate() {
        println("=== Variables and Data Types ===\n")

        // Immutable variable (val)
        val immutableValue = 42
        println("Immutable value: $immutableValue")

        // Mutable variable (var)
        var mutableValue = 10
        mutableValue = 20
        println("Mutable value: $mutableValue")

        // Type inference vs explicit type declaration
        val inferredInt = 100        // Type inference
        val explicitInt: Int = 100   // Explicit type
        println("\nType inference vs explicit:")
        println("Inferred Int: $inferredInt")
        println("Explicit Int: $explicitInt")

        // Basic data types
        val byteValue: Byte = 127
        val shortValue: Short = 32767
        val intValue: Int = 2147483647
        val longValue: Long = 9223372036854775807L
        val floatValue: Float = 3.14f
        val doubleValue: Double = 3.14159265359
        val booleanValue: Boolean = true
        val charValue: Char = 'A'

        println("\nBasic data types:")
        println("Byte: $byteValue")
        println("Short: $shortValue")
        println("Int: $intValue")
        println("Long: $longValue")
        println("Float: $floatValue")
        println("Double: $doubleValue")
        println("Boolean: $booleanValue")
        println("Char: $charValue")

        // String and string templates
        val firstName = "John"
        val lastName = "Doe"
        val fullName = "$firstName $lastName"
        println("\nString templates:")
        println("Full name: $fullName")
        println("Name length: ${fullName.length}")

        // Raw string
        val multilineString = """
            This is a multiline
            string that preserves
            formatting and spacing.
        """.trimIndent()
        println("\nMultiline string:")
        println(multilineString)

        // Null safety
        var nullableString: String? = "Not null yet"
        println("\nNull safety:")
        println("Nullable string length: ${nullableString?.length}")
        nullableString = null
        println("After setting to null: ${nullableString?.length ?: "Length is null"}")

        // Elvis operator
        val length = nullableString?.length ?: -1
        println("Length with Elvis operator: $length")

        // Not-null assertion
        var nonNullString: String? = "Definitely not null"
        println("Not-null assertion: ${nonNullString!!.length}")

        // Late initialization
        lateinit var lateInitVar: String
        lateInitVar = "Initialized later"
        println("\nLate initialization: $lateInitVar")

        // Const vs Val
        println("\nConstants:")
        println("Compile-time constant: ${Constants.COMPILE_TIME_CONSTANT}")
        println("Runtime constant: ${Constants.runtimeConstant}")

        // Type aliases
        typealias UserName = String
        val username: UserName = "johndoe"
        println("\nType alias example:")
        println("Username (type alias for String): $username")

        println() // Empty line
    }

    // Companion object for constants
    private object Constants {
        const val COMPILE_TIME_CONSTANT = "I am a compile-time constant"
        val runtimeConstant = "I am a runtime constant"
    }
}