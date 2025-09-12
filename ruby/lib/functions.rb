module Functions
  # Basic function
  def self.calculate_square(number)
    number * number
  end
  
  # Function with default parameter
  def self.greet(name, greeting = "Hello")
    "#{greeting}, #{name}!"
  end
  
  # Function with keyword arguments
  def self.format_name(first_name:, last_name:, title: nil)
    [title, first_name, last_name].compact.join(" ")
  end
  
  # Function that yields to a block
  def self.repeat(times)
    times.times { yield }
  end
  
  # Proc example
  def self.demonstrate_proc
    square = Proc.new { |x| x * x }
    [1, 2, 3].map(&square)
  end
  
  # Lambda example
  def self.demonstrate_lambda
    multiply = ->(x, y) { x * y }
    multiply.call(5, 3)
  end
  
  def self.demonstrate
    puts "\n=== Functions ==="
    
    # Using basic function
    puts "Square of 5: #{calculate_square(5)}"
    
    # Using function with default parameter
    puts "\nGreetings:"
    puts greet("Yusran")
    puts greet("Firmansyah", "Hi")
    
    # Using function with keyword arguments
    puts "\nFormatted names:"
    puts format_name(first_name: "John", last_name: "Doe", title: "Mr.")
    puts format_name(first_name: "Jane", last_name: "Doe")
    
    # Using block
    puts "\nUsing blocks:"
    repeat(3) { puts "This is a block!" }
    
    # Using Proc
    puts "\nUsing Proc:"
    puts "Squares: #{demonstrate_proc}"
    
    # Using Lambda
    puts "\nUsing Lambda:"
    puts "5 x 3 = #{demonstrate_lambda}"
    
    # Block with parameters
    puts "\nBlock with parameters:"
    ["apple", "banana"].each { |fruit| puts "I love #{fruit}!" }
    
    # Alternative block syntax
    puts "\nMulti-line block syntax:"
    ["dog", "cat"].each do |animal|
      puts "A #{animal} says:"
      puts "  " + (animal == "dog" ? "Woof!" : "Meow!")
    end
  end
end