import std/[tables, sets]

proc demonstrateArrays*() =
  echo "=== Arrays and Collections ==="
  
  # Arrays (fixed size)
  echo "Arrays:"
  var arr: array[5, int] = [1, 2, 3, 4, 5]
  echo "Original array: ", arr
  arr[0] = 10
  echo "After modification: ", arr
  
  # Array operations
  echo "\nArray operations:"
  echo "First element: ", arr[0]
  echo "Last element: ", arr[^1]
  echo "Length: ", arr.len
  
  # Multi-dimensional arrays
  var matrix: array[3, array[3, int]]
  for i in 0..2:
    for j in 0..2:
      matrix[i][j] = i * 3 + j + 1
  
  echo "\nMatrix (2D array):"
  for row in matrix:
    echo row
  
  # Sequences (dynamic arrays)
  echo "\nSequences:"
  var seq1 = @[1, 2, 3, 4, 5]
  echo "Original sequence: ", seq1
  
  # Sequence operations
  seq1.add(6)
  echo "After adding 6: ", seq1
  seq1.delete(0)
  echo "After deleting first element: ", seq1
  
  # Sequence methods
  echo "First element: ", seq1[0]
  echo "Length: ", seq1.len
  echo "Capacity: ", seq1.cap
  
  # Slicing
  echo "\nSlicing:"
  echo "Slice [1..3]: ", seq1[1..3]
  echo "Slice [0..^2]: ", seq1[0..^2]  # All but last element
  
  # Tables (hash maps)
  echo "\nTables:"
  var scores = {
    "Alice": 95,
    "Bob": 87,
    "Charlie": 92
  }.toTable
  
  echo "Original scores: ", scores
  scores["David"] = 88
  echo "After adding David: ", scores
  echo "Alice's score: ", scores["Alice"]
  
  # Table operations
  echo "Has Alice? ", scores.hasKey("Alice")
  echo "Keys: ", scores.keys.toSeq
  echo "Values: ", scores.values.toSeq
  
  # OrderedTable (maintains insertion order)
  echo "\nOrderedTable:"
  var orderedScores = initOrderedTable[string, int]()
  orderedScores["First"] = 1
  orderedScores["Second"] = 2
  orderedScores["Third"] = 3
  echo orderedScores
  
  # Sets
  echo "\nSets:"
  var numberSet = [1, 2, 3, 2, 1].toHashSet
  echo "Original set: ", numberSet
  numberSet.incl(4)
  echo "After adding 4: ", numberSet
  numberSet.excl(1)
  echo "After removing 1: ", numberSet
  
  # Set operations
  var
    set1 = [1, 2, 3].toHashSet
    set2 = [2, 3, 4].toHashSet
  
  echo "\nSet operations:"
  echo "Set1: ", set1
  echo "Set2: ", set2
  echo "Union: ", set1 + set2
  echo "Intersection: ", set1 * set2
  echo "Difference: ", set1 - set2
  
  # Tuples
  echo "\nTuples:"
  type Person = tuple[name: string, age: int]
  let
    person1: Person = (name: "Alice", age: 25)
    person2 = ("Bob", 30)  # Anonymous tuple
  
  echo "Named tuple: ", person1
  echo "Anonymous tuple: ", person2
  echo "Name: ", person1.name
  echo "Age: ", person1.age
  
  # Tuple unpacking
  let (name, age) = person1
  echo "Unpacked - Name: ", name, ", Age: ", age
  
  echo "" # Empty line