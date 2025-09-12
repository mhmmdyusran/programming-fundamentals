module Loops
  def self.demonstrate
    puts "\n=== Loops ==="
    
    # for loop with range
    print "For loop with range: "
    for i in 1..4
      print "#{i} "
    end
    puts
    
    # each iterator (more Ruby-like)
    print "Each iterator: "
    (1..4).each { |i| print "#{i} " }
    puts
    
    # while loop
    print "\nWhile loop: "
    count = 1
    while count < 5
      print "#{count} "
      count += 1
    end
    puts
    
    # until loop (opposite of while)
    print "Until loop: "
    count = 1
    until count >= 5
      print "#{count} "
      count += 1
    end
    puts
    
    # times iterator
    print "\n5 times: "
    5.times { |i| print "#{i} " }
    puts
    
    # upto/downto
    print "Up to: "
    1.upto(4) { |i| print "#{i} " }
    puts
    
    print "Down to: "
    4.downto(1) { |i| print "#{i} " }
    puts
    
    # loop do (with break)
    print "\nLoop do with break: "
    count = 1
    loop do
      print "#{count} "
      count += 1
      break if count >= 5
    end
    puts
    
    # each_with_index
    puts "\nEach with index:"
    fruits = ["apple", "banana", "orange"]
    fruits.each_with_index do |fruit, index|
      puts "#{index + 1}. #{fruit}"
    end
    
    # next (continue) and redo
    puts "\nUsing next and redo:"
    5.times do |i|
      next if i == 2  # Skip 2
      print "#{i} "
    end
    puts
  end
end