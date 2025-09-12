module Arrays
  def self.demonstrate
    puts "\n=== Arrays ==="
    
    # Creating arrays
    numbers = [10, 20, 30, 40]
    fruits = %w[apple banana orange grape]  # %w creates array of strings
    mixed = [1, "two", 3.0, :four]         # Arrays can hold different types
    
    puts "Basic array operations:"
    puts "Numbers: #{numbers}"
    puts "Fruits: #{fruits}"
    puts "Mixed: #{mixed}"
    
    # Accessing elements
    puts "\nAccessing elements:"
    puts "First fruit: #{fruits.first}"
    puts "Last fruit: #{fruits.last}"
    puts "Second number: #{numbers[1]}"
    puts "Last number (negative index): #{numbers[-1]}"
    
    # Array slicing
    puts "\nArray slicing:"
    puts "First two fruits: #{fruits[0,2]}"
    puts "Last two fruits: #{fruits[-2..-1]}"
    
    # Array methods
    puts "\nArray methods:"
    puts "Array length: #{fruits.length}"
    puts "Array includes 'banana'? #{fruits.include?('banana')}"
    puts "Array reversed: #{fruits.reverse}"
    puts "Original array (not modified): #{fruits}"
    
    # Modifying arrays
    puts "\nModifying arrays:"
    fruits.push("mango")            # Add to end
    puts "After push: #{fruits}"
    fruits.unshift("pineapple")     # Add to beginning
    puts "After unshift: #{fruits}"
    popped = fruits.pop             # Remove from end
    puts "Popped: #{popped}"
    shifted = fruits.shift          # Remove from beginning
    puts "Shifted: #{shifted}"
    puts "Final array: #{fruits}"
    
    # Array operations
    puts "\nArray operations:"
    nums1 = [1, 2, 3]
    nums2 = [4, 5, 6]
    puts "Concatenation: #{nums1 + nums2}"
    puts "Multiplication: #{[1, 2] * 3}"
    
    # Iterating arrays
    puts "\nIterating arrays:"
    fruits.each_with_index do |fruit, index|
      puts "#{index + 1}. #{fruit}"
    end
    
    # Array transformations
    puts "\nArray transformations:"
    squares = numbers.map { |n| n ** 2 }
    puts "Original numbers: #{numbers}"
    puts "Squared numbers: #{squares}"
    
    # Array filtering
    evens = numbers.select { |n| n.even? }
    puts "\nEven numbers: #{evens}"
    
    # Array sorting
    puts "\nSorting:"
    puts "Sorted fruits: #{fruits.sort}"
    puts "Reverse sorted fruits: #{fruits.sort.reverse}"
  end
end