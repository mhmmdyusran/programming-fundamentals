package fundamentals

import scala.io.Source
import scala.util.{Try, Success, Failure}
import java.io.{File, PrintWriter, FileWriter}
import java.nio.file.{Files, Paths}

object InputOutput:
  def demonstrate(): Unit =
    println("=== Input and Output ===\n")
    
    // Basic console output
    println("1. Basic console output:")
    print("This is printed without newline. ")
    println("This is printed with newline.")
    Console.println("Using Console object")
    
    // String formatting
    println("\n2. String formatting:")
    val name = "Alice"
    val age = 25
    println(s"Using string interpolation: $name is $age years old")
    println(f"Using f-interpolation: $name%s is $age%d years old")
    printf("Using printf: %s is %d years old\n", name, age)
    
    // Reading console input
    println("\n3. Reading console input:")
    print("Enter your name (or press Enter to skip): ")
    val userInput = scala.io.StdIn.readLine()
    println(s"Hello, ${Option(userInput).filter(_.nonEmpty).getOrElse("Anonymous")}!")
    
    // File operations
    println("\n4. File operations:")
    
    // Writing to file
    val tempDir = System.getProperty("java.io.tmpdir")
    val filePath = Paths.get(tempDir, "scala-demo.txt")
    
    try
      // Write to file
      val writer = PrintWriter(filePath.toFile)
      try
        writer.println("Hello, File I/O!")
        writer.println("This is a test file.")
      finally
        writer.close()
      println(s"Successfully wrote to file: $filePath")
      
      // Read file - Method 1: Using Source
      println("\nReading file using Source:")
      val content = Source.fromFile(filePath.toFile).getLines().mkString("\n")
      println(content)
      
      // Read file - Method 2: Using Files
      println("\nReading file using Files:")
      val contentBytes = Files.readAllBytes(filePath)
      val contentString = new String(contentBytes)
      println(contentString)
      
      // Read file line by line
      println("\nReading file line by line:")
      val source = Source.fromFile(filePath.toFile)
      try
        for line <- source.getLines() do
          println(line)
      finally
        source.close()
      
      // Append to file
      val fileWriter = FileWriter(filePath.toFile, true)  // true for append mode
      try
        fileWriter.write("\nAppended line!")
      finally
        fileWriter.close()
      
      println("\nAfter appending:")
      println(Source.fromFile(filePath.toFile).mkString)
      
      // Delete file
      Files.delete(filePath)
      println("\nFile deleted successfully")
      
    catch
      case e: Exception =>
        println(s"Error during file operations: ${e.getMessage}")
    
    // Working with resources
    println("\n5. Working with resources:")
    val resourceContent = Try {
      val source = Source.fromString("Test resource content")
      try
        source.mkString
      finally
        source.close()
    }
    
    resourceContent match
      case Success(content) => println(s"Resource content: $content")
      case Failure(e) => println(s"Error reading resource: ${e.getMessage}")
    
    // Error output
    println("\n6. Error output:")
    System.err.println("This is an error message (printed to stderr)")
    
    // Buffer flushing
    println("\n7. Buffer flushing:")
    print("Flushing buffers... ")
    Console.flush()  // Force output to be written immediately
    Thread.sleep(1000)  // Simulate some processing
    println("completed!")
    
    println() // Empty line