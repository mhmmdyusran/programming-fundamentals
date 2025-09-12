module Operators
  def self.demonstrate
    puts "\n=== Operators ==="
    
    a = 10
    b = 3
    
    # Arithmetic operators
    puts "Arithmetic Operators:"
    puts "Addition: #{a + b}"
    puts "Subtraction: #{a - b}"
    puts "Multiplication: #{a * b}"
    puts "Division: #{a / b}"       # Integer division
    puts "Float Division: #{a.to_f / b}"
    puts "Modulus: #{a % b}"
    puts "Exponent: #{a ** 2}"     # Power
    
    # Comparison operators
    puts "\nComparison Operators:"
    puts "Equal: #{a == b}"
    puts "Not Equal: #{a != b}"
    puts "Greater Than: #{a > b}"
    puts "Less Than: #{a < b}"
    puts "Greater or Equal: #{a >= b}"
    puts "Less or Equal: #{a <= b}"
    puts "Spaceship: #{a <=> b}"   # Returns -1, 0, or 1
    
    # Logical operators
    puts "\nLogical Operators:"
    puts "AND: #{true && false}"
    puts "OR: #{true || false}"
    puts "NOT: #{!true}"
    
    # Ruby special operators
    puts "\nRuby Special Operators:"
    str1 = "Hello"
    str2 = "Hello"
    puts "Equal Object? #{str1.equal?(str2)}"    # Compare object identity
    puts "Equal Value? #{str1 == str2}"          # Compare value
    puts "Pattern Match? #{'123' =~ /\d+/}"      # Regular expression match
    
    # Assignment operators
    puts "\nAssignment Operators:"
    x = 5
    x += 3  # Same as x = x + 3
    puts "After += 3: #{x}"
    x -= 2
    puts "After -= 2: #{x}"
    x *= 4
    puts "After *= 4: #{x}"
  end
end