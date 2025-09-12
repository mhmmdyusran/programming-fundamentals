package fundamentals

class Arrays {
    fun demonstrate() {
        println("=== Arrays and Collections ===\n")

        // Arrays
        println("1. Arrays:")
        val numbers = Array(5) { it * 2 }  // [0, 2, 4, 6, 8]
        println("Numbers array: ${numbers.contentToString()}")

        // Array of primitive types
        val intArray = IntArray(5) { it + 1 }  // [1, 2, 3, 4, 5]
        val doubleArray = DoubleArray(3) { it * 1.5 }  // [0.0, 1.5, 3.0]
        println("Int array: ${intArray.contentToString()}")
        println("Double array: ${doubleArray.contentToString()}")

        // Array operations
        println("\n2. Array operations:")
        println("First element: ${numbers[0]}")
        println("Last element: ${numbers[numbers.size - 1]}")
        println("Size: ${numbers.size}")
        numbers[0] = 10
        println("After setting first element to 10: ${numbers.contentToString()}")

        // Lists
        println("\n3. Lists:")
        val readOnlyList = listOf(1, 2, 3, 4, 5)
        val mutableList = mutableListOf(1, 2, 3)
        println("Read-only list: $readOnlyList")
        println("Mutable list: $mutableList")

        // List operations
        mutableList.add(4)
        mutableList.removeAt(0)
        println("After adding 4 and removing first element: $mutableList")
        println("First element: ${mutableList.first()}")
        println("Last element: ${mutableList.last()}")
        println("Contains 3? ${mutableList.contains(3)}")

        // Sets
        println("\n4. Sets:")
        val readOnlySet = setOf(1, 2, 2, 3, 3, 3)  // Duplicates are removed
        val mutableSet = mutableSetOf(1, 2, 3)
        println("Read-only set: $readOnlySet")
        println("Mutable set: $mutableSet")

        // Set operations
        mutableSet.add(4)
        mutableSet.remove(1)
        println("After adding 4 and removing 1: $mutableSet")
        println("Contains 2? ${mutableSet.contains(2)}")

        // Set mathematical operations
        val set1 = setOf(1, 2, 3, 4)
        val set2 = setOf(3, 4, 5, 6)
        println("\n5. Set operations:")
        println("Set1: $set1")
        println("Set2: $set2")
        println("Union: ${set1.union(set2)}")
        println("Intersection: ${set1.intersect(set2)}")
        println("Difference (set1 - set2): ${set1.subtract(set2)}")

        // Maps
        println("\n6. Maps:")
        val readOnlyMap = mapOf(
            "one" to 1,
            "two" to 2,
            "three" to 3
        )
        val mutableMap = mutableMapOf(
            "apple" to 1,
            "banana" to 2,
            "orange" to 3
        )
        println("Read-only map: $readOnlyMap")
        println("Mutable map: $mutableMap")

        // Map operations
        mutableMap["grape"] = 4
        mutableMap.remove("apple")
        println("After adding grape and removing apple: $mutableMap")
        println("Value for banana: ${mutableMap["banana"]}")
        println("Contains key 'orange'? ${mutableMap.containsKey("orange")}")
        println("Contains value 4? ${mutableMap.containsValue(4)}")

        // Map iteration
        println("\n7. Map iteration:")
        for ((key, value) in mutableMap) {
            println("$key = $value")
        }

        // List transformations
        println("\n8. List transformations:")
        val numbers2 = (1..5).toList()
        println("Original numbers: $numbers2")
        println("Doubled: ${numbers2.map { it * 2 }}")
        println("Even numbers: ${numbers2.filter { it % 2 == 0 }}")
        println("Sum: ${numbers2.sum()}")
        println("Product: ${numbers2.reduce { acc, num -> acc * num }}")

        // Collection grouping
        println("\n9. Collection grouping:")
        val words = listOf("apple", "banana", "apricot", "orange", "avocado", "blueberry")
        val grouped = words.groupBy { it.first() }
        println("Grouped by first letter: $grouped")

        // Collection flattening
        println("\n10. Collection flattening:")
        val nestedList = listOf(
            listOf(1, 2, 3),
            listOf(4, 5, 6),
            listOf(7, 8, 9)
        )
        println("Nested list: $nestedList")
        println("Flattened: ${nestedList.flatten()}")

        // Sequence operations
        println("\n11. Sequence operations:")
        val sequence = generateSequence(1) { it + 1 }
            .take(5)
            .filter { it % 2 == 0 }
            .map { it * it }
        println("Sequence result: ${sequence.toList()}")

        println() // Empty line
    }
}