module Variables
  # Constants should be defined at module level
  MAXIMUM_SCORE = 100
  
  # Class variables should also be at module level
  @@class_variable = "Class"
  
  def self.demonstrate
    puts "\n=== Variables and Data Types ==="
    
    # Different types of variables
    name = "John Doe"       # String
    age = 25               # Integer
    height = 1.75         # Float
    is_student = true     # Boolean
    
    # Symbol - a common Ruby type
    status = :active
    
    # Arrays and Hashes
    hobbies = ["reading", "coding"]
    user_info = { name: "John", age: 25 }
    
    # Displaying variables with their types
    puts "Name: #{name} (#{name.class})"
    puts "Age: #{age} (#{age.class})"
    puts "Height: #{height} (#{height.class})"
    puts "Is Student: #{is_student} (#{is_student.class})"
    puts "Status: #{status} (#{status.class})"
    puts "Hobbies: #{hobbies} (#{hobbies.class})"
    puts "User Info: #{user_info} (#{user_info.class})"
    
    # Displaying constant
    puts "\nConstants:"
    puts "Maximum Score: #{MAXIMUM_SCORE}"
    
    # Variable scope indicators
    @instance_variable = "Instance"
    $global_variable = "Global"
    local_variable = "Local"
    
    puts "\nVariable Scopes:"
    puts "Instance: #{@instance_variable}"
    puts "Class: #{@@class_variable}"
    puts "Global: #{$global_variable}"
    puts "Local: #{local_variable}"
  end
end