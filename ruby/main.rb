#!/usr/bin/env ruby

# Load all concept modules
Dir[File.join(__dir__, 'lib', '*.rb')].each { |file| require file }

puts 'Programming Fundamentals in Ruby'

# Demonstrate all concepts
Variables.demonstrate
InputOutput.demonstrate
Operators.demonstrate
Conditionals.demonstrate
Loops.demonstrate
Arrays.demonstrate
Functions.demonstrate

puts "\nPress Enter to exit..."
gets