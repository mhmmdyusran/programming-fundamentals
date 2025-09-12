package fundamentals

import scala.collection.mutable
import scala.collection.immutable.SortedSet

object Arrays:
  def demonstrate(): Unit =
    println("=== Arrays and Collections ===\n")
    
    // Arrays (mutable, fixed size)
    println("1. Arrays:")
    val numbers = Array(1, 2, 3, 4, 5)
    println(s"Original array: ${numbers.mkString(", ")}")
    numbers(0) = 10  // Modifying an element
    println(s"After modification: ${numbers.mkString(", ")}")
    
    // Array operations
    println("\nArray operations:")
    println(s"First element: ${numbers(0)}")
    println(s"Array length: ${numbers.length}")
    println(s"Sum of elements: ${numbers.sum}")
    println(s"Doubled elements: ${numbers.map(_ * 2).mkString(", ")}")
    
    // 2D Array
    println("\n2. 2D Array:")
    val matrix = Array.ofDim[Int](2, 3)
    for
      i <- matrix.indices
      j <- matrix(0).indices
    do
      matrix(i)(j) = i + j
    
    println("Matrix:")
    matrix.foreach(row => println(row.mkString(" ")))
    
    // Lists (immutable)
    println("\n3. Lists:")
    val fruits = List("apple", "banana", "orange")
    println(s"Original list: $fruits")
    
    // List operations
    println("\nList operations:")
    println(s"Head: ${fruits.head}")
    println(s"Tail: ${fruits.tail}")
    println(s"Is empty? ${fruits.isEmpty}")
    val moreFruits = "grape" :: fruits  // Prepending
    println(s"After prepending: $moreFruits")
    val combinedFruits = fruits ::: List("mango", "kiwi")  // Concatenation
    println(s"After concatenation: $combinedFruits")
    
    // Vector (immutable, good for random access)
    println("\n4. Vector:")
    val vector = Vector(1, 2, 3, 4, 5)
    println(s"Vector: $vector")
    println(s"Element at index 2: ${vector(2)}")
    val updatedVector = vector.updated(0, 10)
    println(s"After updating first element: $updatedVector")
    
    // Set (immutable by default)
    println("\n5. Sets:")
    val set1 = Set(1, 2, 3, 3, 4, 5, 5)  // Duplicates are removed
    println(s"Set1: $set1")
    val set2 = Set(4, 5, 6, 7)
    println(s"Set2: $set2")
    
    // Set operations
    println("\nSet operations:")
    println(s"Union: ${set1 union set2}")
    println(s"Intersection: ${set1 intersect set2}")
    println(s"Difference: ${set1 diff set2}")
    
    // SortedSet
    println("\n6. SortedSet:")
    val sortedSet = SortedSet(5, 2, 8, 1, 9, 3)
    println(s"SortedSet: $sortedSet")
    
    // Map (immutable by default)
    println("\n7. Maps:")
    val capitals = Map(
      "USA" -> "Washington DC",
      "UK" -> "London",
      "France" -> "Paris"
    )
    println(s"Capitals: $capitals")
    
    // Map operations
    println("\nMap operations:")
    println(s"Capital of France: ${capitals("France")}")
    println(s"Contains UK? ${capitals.contains("UK")}")
    println(s"All keys: ${capitals.keys}")
    println(s"All values: ${capitals.values}")
    
    // Mutable collections
    println("\n8. Mutable Collections:")
    val mutableList = mutable.ListBuffer(1, 2, 3)
    println(s"Original mutable list: $mutableList")
    mutableList += 4  // Adding element
    mutableList -= 2  // Removing element
    println(s"After modifications: $mutableList")
    
    // Mutable Set
    val mutableSet = mutable.Set(1, 2, 3)
    println(s"\nMutable set: $mutableSet")
    mutableSet += 4  // Adding element
    mutableSet -= 2  // Removing element
    println(s"After modifications: $mutableSet")
    
    // Mutable Map
    val mutableMap = mutable.Map("a" -> 1, "b" -> 2)
    println(s"\nMutable map: $mutableMap")
    mutableMap("c") = 3  // Adding new key-value pair
    mutableMap -= "a"    // Removing key-value pair
    println(s"After modifications: $mutableMap")
    
    // Sequences
    println("\n9. Sequences:")
    val seq = Seq(1, 2, 3, 4, 5)
    println(s"Sequence: $seq")
    println(s"First element: ${seq.head}")
    println(s"Last element: ${seq.last}")
    println(s"Length: ${seq.length}")
    
    // Range
    println("\n10. Range:")
    val range1 = 1 to 5
    println(s"Range (inclusive): ${range1.mkString(", ")}")
    val range2 = 1 until 5
    println(s"Range (exclusive): ${range2.mkString(", ")}")
    val range3 = 1 to 10 by 2
    println(s"Range with step: ${range3.mkString(", ")}")
    
    // Collection operations
    println("\n11. Common Collection Operations:")
    val numbers2 = List(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    println("Original list: " + numbers2)
    println(s"Mapped (x * 2): ${numbers2.map(_ * 2)}")
    println(s"Filtered (even): ${numbers2.filter(_ % 2 == 0)}")
    println(s"Reduced (sum): ${numbers2.reduce(_ + _)}")
    println(s"Folded (sum): ${numbers2.fold(0)(_ + _)}")
    println(s"Grouped by even/odd: ${numbers2.groupBy(_ % 2 == 0)}")
    
    println() // Empty line