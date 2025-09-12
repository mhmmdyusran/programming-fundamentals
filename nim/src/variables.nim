proc demonstrateVariables*() =
  echo "=== Variables ==="
  
  # Numeric types
  let
    integerVar: int = 42
    floatVar: float = 3.14159
    uint8Var: uint8 = 255
  echo "Integer: ", integerVar
  echo "Float: ", floatVar
  echo "Uint8: ", uint8Var
  
  # Character and string types
  let
    charVar: char = 'A'
    stringVar: string = "Hello, World!"
  echo "Character: ", charVar
  echo "String: ", stringVar
  
  # Boolean type
  let boolVar: bool = true
  echo "Boolean: ", boolVar
  
  # Type inference
  let inferredInt = 100    # Type is inferred as int
  let inferredFloat = 1.0  # Type is inferred as float
  echo "Inferred int: ", inferredInt
  echo "Inferred float: ", inferredFloat
  
  # Variables (mutable)
  var
    mutableInt = 10
    mutableString = "Original"
  echo "\nMutable variables before change:"
  echo "mutableInt = ", mutableInt
  echo "mutableString = ", mutableString
  
  mutableInt = 20
  mutableString = "Changed"
  echo "After change:"
  echo "mutableInt = ", mutableInt
  echo "mutableString = ", mutableString
  
  # Constants
  const
    Pi = 3.14159
    MaxValue = 1000
  echo "\nConstants:"
  echo "Pi = ", Pi
  echo "MaxValue = ", MaxValue
  
  # Enums
  type
    Color = enum
      Red, Green, Blue
  let color = Red
  echo "\nEnum value: ", color
  
  # Range types
  type
    Digit = range[0..9]
  let digit: Digit = 5
  echo "Range type (Digit): ", digit
  
  # Tuples
  type
    Person = tuple[name: string, age: int]
  let person: Person = (name: "Alice", age: 25)
  echo "\nTuple:"
  echo "Person: ", person
  echo "Name: ", person.name
  echo "Age: ", person.age
  
  # Object types
  type
    Point = object
      x, y: float
  let point = Point(x: 10.0, y: 20.0)
  echo "\nObject:"
  echo "Point: ", point
  echo "X: ", point.x
  echo "Y: ", point.y
  
  # Optional types
  let
    someValue: Option[int] = some(42)
    noValue: Option[int] = none(int)
  echo "\nOptional types:"
  echo "Some value: ", someValue
  echo "No value: ", noValue
  
  echo "" # Empty line