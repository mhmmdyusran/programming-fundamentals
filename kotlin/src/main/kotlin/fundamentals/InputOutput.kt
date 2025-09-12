package fundamentals

import java.io.File
import java.nio.file.Files
import java.nio.file.Paths

class InputOutput {
    fun demonstrate() {
        println("=== Input and Output ===\n")

        // Basic console output
        println("1. Basic console output:")
        print("This is printed without newline. ")
        println("This is printed with newline.")

        // String formatting
        println("\n2. String formatting:")
        val name = "Alice"
        val age = 25
        println("Using string template: $name is $age years old")
        println("Using format string: %s is %d years old".format(name, age))
        
        // printf style formatting
        println("\n3. Printf style formatting:")
        printf("Decimal: %d, Float: %.2f, String: %s%n", 42, 3.14159, "Hello")
        printf("Left-justified: %-10s, Right-justified: %10s%n", "Left", "Right")
        printf("Zero-padded number: %05d%n", 123)

        // Reading console input
        println("\n4. Reading console input:")
        print("Enter your name (or press Enter to skip): ")
        val userInput = readlnOrNull() ?: "Anonymous"
        println("Hello, $userInput!")

        // File writing
        println("\n5. File operations:")
        val tempDir = System.getProperty("java.io.tmpdir")
        val filePath = Paths.get(tempDir, "kotlin-demo.txt")
        
        // Write to file
        try {
            Files.write(filePath, "Hello, File I/O!\nThis is a test file.".toByteArray())
            println("Successfully wrote to file: $filePath")

            // Read from file - Method 1: readText()
            val content = File(filePath.toString()).readText()
            println("\nFile content (readText):")
            println(content)

            // Read from file - Method 2: useLines
            println("\nFile content (useLines):")
            File(filePath.toString()).useLines { lines ->
                lines.forEach { line ->
                    println(line)
                }
            }

            // Read from file - Method 3: bufferedReader
            println("\nFile content (bufferedReader):")
            File(filePath.toString()).bufferedReader().use { reader ->
                reader.forEachLine { line ->
                    println(line)
                }
            }

            // Append to file
            File(filePath.toString()).appendText("\nAppended line!")
            println("\nAfter appending:")
            println(File(filePath.toString()).readText())

            // Clean up
            Files.delete(filePath)
            println("\nFile deleted successfully")

        } catch (e: Exception) {
            println("Error during file operations: ${e.message}")
        }

        // Error output
        println("\n6. Error output:")
        System.err.println("This is an error message (printed to stderr)")

        // Buffer flushing
        print("\n7. Buffer flushing: ")
        System.out.flush()  // Force output to be written immediately
        Thread.sleep(1000)  // Simulate some processing
        println("completed!")

        println() // Empty line
    }

    private fun printf(format: String, vararg args: Any) {
        System.out.printf(format, *args)
    }
}