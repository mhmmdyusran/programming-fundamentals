proc demonstrateConditionals*() =
  echo "=== Conditionals ==="
  
  # Simple if statement
  let number = 10
  echo "number = ", number
  if number > 0:
    echo "The number is positive"
  
  # if-elif-else statement
  let x = 5
  echo "\nx = ", x
  if x > 10:
    echo "x is greater than 10"
  elif x > 0:
    echo "x is positive but not greater than 10"
  else:
    echo "x is not positive"
  
  # Nested if statements
  let
    a = 15
    b = 10
  echo "\na = ", a, ", b = ", b
  if a > 10:
    if b > 5:
      echo "Both a and b are above their thresholds"
    else:
      echo "Only a is above its threshold"
  
  # Case statement
  let fruit = "apple"
  echo "\nfruit = ", fruit
  case fruit
  of "apple":
    echo "This is an apple"
  of "banana":
    echo "This is a banana"
  of "orange":
    echo "This is an orange"
  else:
    echo "Unknown fruit"
  
  # Case statement with multiple values
  let dayNum = 2
  echo "\ndayNum = ", dayNum
  case dayNum
  of 1, 7:
    echo "Weekend"
  of 2..6:
    echo "Weekday"
  else:
    echo "Invalid day"
  
  # When statement (compile-time conditional)
  const debugging = true
  when debugging:
    echo "\nDebugging is enabled"
  
  # Using and/or in conditions
  let
    age = 25
    hasID = true
  echo "\nage = ", age, ", hasID = ", hasID
  if age >= 18 and hasID:
    echo "Can purchase alcohol"
  
  # Pattern matching with case
  type
    Shape = object
      case kind: bool
      of true:
        radius: float
      of false:
        width, height: float
  
  let
    circle = Shape(kind: true, radius: 5.0)
    rectangle = Shape(kind: false, width: 10.0, height: 20.0)
  
  echo "\nShape pattern matching:"
  case circle.kind
  of true:
    echo "Circle with radius ", circle.radius
  of false:
    echo "Rectangle"
  
  case rectangle.kind
  of true:
    echo "Circle"
  of false:
    echo "Rectangle with dimensions ", rectangle.width, " x ", rectangle.height
  
  # Using options with conditionals
  let maybeValue: Option[int] = some(42)
  echo "\nOption handling:"
  if maybeValue.isSome:
    echo "Value is present: ", maybeValue.get
  else:
    echo "No value present"
  
  echo "" # Empty line