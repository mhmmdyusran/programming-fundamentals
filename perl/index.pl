#!/usr/bin/perl
# perl/index.pl

# These pragmas are essential for writing modern, safe Perl code.
use strict;
use warnings;

# Use `require` to include and execute the concept files.
# The path is relative to the script's location.
require 'concepts/variables.pl';
require 'concepts/operators.pl';
require 'concepts/conditionals.pl';
require 'concepts/loops.pl';
require 'concepts/arrays.pl';
require 'concepts/functions.pl';
require 'concepts/input_output.pl';

# Call the subroutines defined in the required files.
demonstrate_variables();
demonstrate_operators();
demonstrate_conditionals();
demonstrate_loops();
demonstrate_arrays();
demonstrate_functions();
demonstrate_io();

print "\nAll Perl demonstrations completed successfully.\n";
