proc demonstrateLoops*() =
  echo "=== Loops ==="
  
  # For loop with range
  echo "Simple for loop:"
  for i in 1..5:
    stdout.write(i, " ")
  echo ""
  
  # For loop with step
  echo "\nFor loop with step:"
  for i in countup(0, 10, 2):
    stdout.write(i, " ")
  echo ""
  
  # Reverse for loop
  echo "\nReverse for loop:"
  for i in countdown(5, 1):
    stdout.write(i, " ")
  echo ""
  
  # For loop with sequence
  let fruits = @["apple", "banana", "orange"]
  echo "\nFor loop with sequence:"
  for fruit in fruits:
    echo fruit
  
  # For loop with index
  echo "\nFor loop with index:"
  for i, fruit in fruits:
    echo i, ": ", fruit
  
  # While loop
  echo "\nWhile loop:"
  var count = 1
  while count <= 5:
    echo "Count: ", count
    inc count
  
  # Break statement
  echo "\nLoop with break:"
  for i in 1..10:
    if i > 5:
      break
    stdout.write(i, " ")
  echo ""
  
  # Continue statement
  echo "\nLoop with continue (skip even numbers):"
  for i in 1..5:
    if i mod 2 == 0:
      continue
    echo "Odd number: ", i
  
  # Nested loops
  echo "\nNested loops:"
  for i in 1..3:
    for j in 1..2:
      echo "i = ", i, ", j = ", j
  
  # Iterator
  iterator countdown5to1(): int =
    var n = 5
    while n > 0:
      yield n
      dec n
  
  echo "\nCustom iterator:"
  for n in countdown5to1():
    stdout.write(n, " ")
  echo ""
  
  # Loop with block
  echo "\nLoop with block:"
  block myBlock:
    for i in 1..10:
      if i == 5:
        break myBlock
      stdout.write(i, " ")
  echo "\n(Loop was broken at 5)"
  
  # Do-while equivalent
  echo "\nDo-while equivalent:"
  var x = 1
  while true:
    echo "x = ", x
    inc x
    if x > 3:
      break
  
  # Loop with case
  echo "\nLoop with case:"
  for i in 1..5:
    case i
    of 1: echo "One"
    of 2: echo "Two"
    of 3: echo "Three"
    else: echo "Other: ", i
  
  echo "" # Empty line