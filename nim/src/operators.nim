proc demonstrateOperators*() =
  echo "=== Operators ==="
  
  # Arithmetic operators
  let
    a = 10
    b = 3
  
  echo "a = ", a, ", b = ", b
  echo "Addition (a + b): ", a + b
  echo "Subtraction (a - b): ", a - b
  echo "Multiplication (a * b): ", a * b
  echo "Division (a / b): ", a / b
  echo "Integer division (a div b): ", a div b
  echo "Modulus (a mod b): ", a mod b
  echo "Power (a ^ b): ", a ^ b
  
  # Compound assignment operators
  var x = 5
  echo "\nCompound assignment:"
  echo "Initial x = ", x
  x += 3
  echo "After x += 3: ", x
  x *= 2
  echo "After x *= 2: ", x
  x -= 4
  echo "After x -= 4: ", x
  x div= 2
  echo "After x div= 2: ", x
  
  # Comparison operators
  echo "\nComparison operators:"
  echo "Equal (a == b): ", a == b
  echo "Not equal (a != b): ", a != b
  echo "Greater than (a > b): ", a > b
  echo "Less than (a < b): ", a < b
  echo "Greater or equal (a >= b): ", a >= b
  echo "Less or equal (a <= b): ", a <= b
  
  # Logical operators
  let
    p = true
    q = false
  
  echo "\nLogical operators:"
  echo "AND (p and q): ", p and q
  echo "OR (p or q): ", p or q
  echo "NOT (not p): ", not p
  echo "XOR (p xor q): ", p xor q
  
  # Bitwise operators
  let
    bits1 = 0b1100  # 12 in binary
    bits2 = 0b1010  # 10 in binary
  
  echo "\nBitwise operators:"
  echo "AND (bits1 and bits2): ", bits1 and bits2
  echo "OR (bits1 or bits2): ", bits1 or bits2
  echo "XOR (bits1 xor bits2): ", bits1 xor bits2
  echo "NOT (not bits1): ", not bits1
  echo "Left shift (bits1 shl 1): ", bits1 shl 1
  echo "Right shift (bits1 shr 1): ", bits1 shr 1
  
  # String operators
  let
    str1 = "Hello"
    str2 = "World"
  
  echo "\nString operators:"
  echo "Concatenation (str1 & str2): ", str1 & " " & str2
  echo "Repetition ('*' * 3): ", '*' * 3
  
  # Range operators
  echo "\nRange operators:"
  for i in 1..5:
    stdout.write(i, " ")
  echo ""
  
  # Custom operators
  proc `==>` (a, b: bool): bool = not a or b
  
  echo "\nCustom operator:"
  echo "false ==> true: ", false ==> true
  echo "true ==> false: ", true ==> false
  
  # Address operator
  var value = 42
  echo "\nAddress operator:"
  echo "Value: ", value
  echo "Address of value: ", cast[int](addr value)
  
  echo "" # Empty line