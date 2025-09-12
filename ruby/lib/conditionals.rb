module Conditionals
  def self.demonstrate
    puts "\n=== Conditional Statements ==="
    
    # if-elsif-else statement
    number = 15
    if number > 0
      puts "#{number} is positive"
    elsif number < 0
      puts "#{number} is negative"
    else
      puts "The number is zero"
    end
    
    # One-line if (modifier form)
    puts "#{number} is even" if number.even?
    
    # unless statement (opposite of if)
    unless number.zero?
      puts "The number is not zero"
    end
    
    # case statement (switch)
    grade = 'A'
    case grade
    when 'A'
      puts "Excellent!"
    when 'B'
      puts "Good job!"
    when 'C'
      puts "Fair"
    else
      puts "Invalid grade"
    end
    
    # Ternary operator
    is_raining = true
    weather = is_raining ? "Bring an umbrella" : "Enjoy the sun"
    puts "\nWeather advice: #{weather}"
    
    # Ruby's special operators for conditional assignment
    # ||= will only assign if the variable is nil or false
    name = nil
    name ||= "Guest"
    puts "\nDefault name: #{name}"
    
    # Using and/or for control flow
    puts "\nUsing and/or:"
    puts "Success" and return if true
    puts "Failure" or return if false
    
    # Statement modifiers
    puts "It's sunny!" unless is_raining
    
    # Using begin/end with rescue (exception handling)
    begin
      result = 10 / 0
    rescue ZeroDivisionError
      puts "\nCannot divide by zero!"
    end
  end
end