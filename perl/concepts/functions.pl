# perl/concepts/functions.pl
use strict;
use warnings;

sub calculate_square {
    my ($number) = @_; # Unpack arguments from the special @_ array
    return $number * $number;
}

# Default parameters can be handled with the defined-or `//` operator.
sub greet {
    my ($name, $greeting) = @_;
    $greeting //= "Hello"; # Assign "Hello" if $greeting is undefined.
    return "$greeting, $name!";
}

sub demonstrate_functions {
    print "\n=== Functions (Subroutines) ===\n";
    
    print "Square of 5 is: " . calculate_square(5) . "\n";
    
    # Call greet without the optional parameter.
    print greet("Yusran") . "\n";
    
    # Call greet with the optional parameter.
    print greet("Firmansyah", "Hi") . "\n";
}

1;
