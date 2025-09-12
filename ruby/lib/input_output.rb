module InputOutput
  def self.demonstrate
    puts "\n=== Input and Output ==="
    
    # Basic output
    print "Enter your name: "
    
    # Basic input
    name = gets.chomp
    
    # Output with string interpolation
    puts "Hello, #{name}!"
    puts "You entered #{name.length} characters"
    
    # puts vs print
    puts "\nDemonstrating puts vs print:"
    puts "puts adds a newline"
    print "print doesn't"
    print " add a newline"
    puts "\n"
    
    # Formatting output
    puts "\nFormatted output:"
    price = 42.4242
    puts "Price: $%.2f" % price
    puts format("Price with padding: $%08.2f", price)
    
    # Here document (heredoc)
    puts "\nMulti-line text (heredoc):"
    message = <<~HEREDOC
      This is a multi-line
      text block in Ruby.
      It preserves formatting.
    HEREDOC
    puts message
  end
end